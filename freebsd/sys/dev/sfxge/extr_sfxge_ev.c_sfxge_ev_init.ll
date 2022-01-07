; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32*, %struct.sysctl_oid*, i32, i32, %struct.sfxge_intr }
%struct.sysctl_oid = type { i32 }
%struct.sfxge_intr = type { i32, i64 }
%struct.sysctl_ctx_list = type { i32 }

@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"intr->state != SFXGE_INTR_INITIALIZED\00", align 1
@SFXGE_MODERATION = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"int_mod\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sfxge_int_mod_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"sfxge interrupt moderation (us)\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_ev_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sfxge_intr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %11)
  store %struct.sysctl_ctx_list* %12, %struct.sysctl_ctx_list** %4, align 8
  %13 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %5, align 8
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %17, i32 0, i32 5
  store %struct.sfxge_intr* %18, %struct.sfxge_intr** %6, align 8
  %19 = load %struct.sfxge_intr*, %struct.sfxge_intr** %6, align 8
  %20 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sfxge_intr*, %struct.sfxge_intr** %6, align 8
  %25 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @SFXGE_MODERATION, align 4
  %32 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %33 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %35 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %36 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %35)
  %37 = load i32, i32* @OID_AUTO, align 4
  %38 = load i32, i32* @CTLTYPE_UINT, align 4
  %39 = load i32, i32* @CTLFLAG_RW, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %42 = load i32, i32* @sfxge_int_mod_handler, align 4
  %43 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %34, i32 %36, i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40, %struct.sfxge_softc* %41, i32 0, i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %57, %1
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @sfxge_ev_qinit(%struct.sfxge_softc* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %61

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %44

60:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %74

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %7, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @sfxge_ev_qfini(%struct.sfxge_softc* %67, i32 %68)
  br label %62

70:                                               ; preds = %62
  %71 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %60
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.sfxge_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @sfxge_ev_qinit(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @sfxge_ev_qfini(%struct.sfxge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_sysctlattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_sysctlattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64, i64, i64, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ht40\00", align 1
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Enable 40 MHz mode support\00", align 1
@RTWN_CRYPTO_PAIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"hwcrypto\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Enable h/w crypto: 0 - disable, 1 - pairwise keys, 2 - all keys\00", align 1
@RTWN_CRYPTO_MAX = common dso_local global i64 0, align 8
@RTWN_CRYPTO_FULL = common dso_local global i64 0, align 8
@RTWN_RATECTL_NET80211 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ratectl\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"Select rate control mechanism: 0 - disabled, 1 - via net80211, 2 - via firmware\00", align 1
@RTWN_RATECTL_MAX = common dso_local global i64 0, align 8
@RTWN_RATECTL_FW = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"ratectl_selected\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"Currently selected rate control mechanism (by the driver)\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtwn_sysctlattach(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %17 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %20, i32 0, i32 0
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %15, i32 %17, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19, i64* %21, i64 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @RTWN_CRYPTO_PAIR, align 8
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %30 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %31 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %30)
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %35 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %34, i32 0, i32 1
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %37 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %29, i32 %31, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %33, i64* %35, i64 %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %41 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RTWN_CRYPTO_MAX, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i64, i64* @RTWN_CRYPTO_FULL, align 8
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %48 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %1
  %50 = load i64, i64* @RTWN_RATECTL_NET80211, align 8
  %51 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %52 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %55 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %58 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %59 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %58, i32 0, i32 2
  %60 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %61 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %53, i32 %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %57, i64* %59, i64 %62, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %65 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RTWN_RATECTL_MAX, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %49
  %70 = load i64, i64* @RTWN_RATECTL_FW, align 8
  %71 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %72 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %49
  %74 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %75 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %78 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %80 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %81 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %80)
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLFLAG_RD, align 4
  %84 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %85 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %84, i32 0, i32 3
  %86 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %87 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %79, i32 %81, i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %83, i64* %85, i64 %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i64*, i64, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

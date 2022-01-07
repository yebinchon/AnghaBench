; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1307_softc = type { i32, i64, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@DS1307_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot read from RTC.\0A\00", align 1
@DS1307_SECS_CH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"WARNING: RTC clock stopped, check the battery.\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sqwe\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@ds1307_sqwe_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"DS1307 square-wave enable\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sqw_freq\00", align 1
@ds1307_sqw_freq_sysctl = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"DS1307 square-wave output frequency\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sqw_out\00", align 1
@ds1307_sqw_out_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"DS1307 square-wave output state\00", align 1
@CLOCKF_SETTIME_NO_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ds1307_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1307_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ds1307_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call %struct.ds1307_softc* @device_get_softc(i64 %12)
  store %struct.ds1307_softc* %13, %struct.ds1307_softc** %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i64 %14)
  store %struct.sysctl_ctx_list* %15, %struct.sysctl_ctx_list** %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i64 %16)
  store %struct.sysctl_oid* %17, %struct.sysctl_oid** %6, align 8
  %18 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %19 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %18)
  store %struct.sysctl_oid_list* %19, %struct.sysctl_oid_list** %7, align 8
  %20 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %20, i32 0, i32 2
  %22 = call i32 @config_intrhook_disestablish(i32* %21)
  %23 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DS1307_SECS, align 4
  %27 = call i64 @ds1307_read1(i32 %25, i32 %26, i32* %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %92

34:                                               ; preds = %1
  %35 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 128, i32* %9, align 4
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DS1307_SECS_CH, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = xor i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %55 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RW, align 4
  %58 = load i32, i32* @CTLTYPE_UINT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %63 = load i32, i32* @ds1307_sqwe_sysctl, align 4
  %64 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %54, %struct.sysctl_oid_list* %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %61, %struct.ds1307_softc* %62, i32 0, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %66 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load i32, i32* @CTLFLAG_RW, align 4
  %69 = load i32, i32* @CTLTYPE_UINT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %74 = load i32, i32* @ds1307_sqw_freq_sysctl, align 4
  %75 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %65, %struct.sysctl_oid_list* %66, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %72, %struct.ds1307_softc* %73, i32 0, i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %77 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RW, align 4
  %80 = load i32, i32* @CTLTYPE_UINT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ds1307_softc*, %struct.ds1307_softc** %4, align 8
  %85 = load i32, i32* @ds1307_sqw_out_sysctl, align 4
  %86 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %76, %struct.sysctl_oid_list* %77, i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %83, %struct.ds1307_softc* %84, i32 0, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %87 = load i64, i64* %3, align 8
  %88 = load i32, i32* @CLOCKF_SETTIME_NO_ADJ, align 4
  %89 = call i32 @clock_register_flags(i64 %87, i32 1000000, i32 %88)
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @clock_schedule(i64 %90, i32 1)
  br label %92

92:                                               ; preds = %53, %29
  ret void
}

declare dso_local %struct.ds1307_softc* @device_get_softc(i64) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i64) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i64) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i64 @ds1307_read1(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.ds1307_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @clock_register_flags(i64, i32, i32) #1

declare dso_local i32 @clock_schedule(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

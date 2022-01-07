; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds3231_softc = type { i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@DS3231_STATUS_OSF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"WARNING: RTC clock stopped, check the battery.\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@ds3231_temp_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Current temperature\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"temp_conv\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@ds3231_conv_sysctl = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"DS3231 start a new temperature converstion\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bbsqw\00", align 1
@ds3231_bbsqw_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"DS3231 battery-backed square-wave output enable\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sqw_freq\00", align 1
@ds3231_sqw_freq_sysctl = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"DS3231 square-wave output frequency\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"sqw_mode\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@ds3231_sqw_mode_sysctl = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"DS3231 SQW output mode control\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"32khz_enable\00", align 1
@ds3231_en32khz_sysctl = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"DS3231 enable the 32kHz output\00", align 1
@CLOCKF_SETTIME_NO_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ds3231_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds3231_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ds3231_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call %struct.ds3231_softc* @device_get_softc(i64 %10)
  store %struct.ds3231_softc* %11, %struct.ds3231_softc** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i64 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call %struct.sysctl_oid* @device_get_sysctl_tree(i64 %14)
  store %struct.sysctl_oid* %15, %struct.sysctl_oid** %6, align 8
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %17 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  store %struct.sysctl_oid_list* %17, %struct.sysctl_oid_list** %7, align 8
  %18 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %18, i32 0, i32 2
  %20 = call i32 @config_intrhook_disestablish(i32* %19)
  %21 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %22 = call i64 @ds3231_ctrl_read(%struct.ds3231_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %118

25:                                               ; preds = %1
  %26 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %27 = call i64 @ds3231_status_read(%struct.ds3231_softc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %118

30:                                               ; preds = %25
  %31 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DS3231_STATUS_OSF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %44 = call i32 @ds3231_status_write(%struct.ds3231_softc* %43, i32 1, i32 1)
  %45 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %46 = call i32 @ds3231_ctrl_write(%struct.ds3231_softc* %45)
  %47 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %48 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLTYPE_INT, align 4
  %51 = load i32, i32* @CTLFLAG_RD, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %56 = load i32, i32* @ds3231_temp_sysctl, align 4
  %57 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %47, %struct.sysctl_oid_list* %48, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %54, %struct.ds3231_softc* %55, i32 0, i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RW, align 4
  %62 = load i32, i32* @CTLTYPE_UINT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %67 = load i32, i32* @ds3231_conv_sysctl, align 4
  %68 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %58, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %65, %struct.ds3231_softc* %66, i32 0, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %70 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %71 = load i32, i32* @OID_AUTO, align 4
  %72 = load i32, i32* @CTLFLAG_RW, align 4
  %73 = load i32, i32* @CTLTYPE_UINT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %78 = load i32, i32* @ds3231_bbsqw_sysctl, align 4
  %79 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %69, %struct.sysctl_oid_list* %70, i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %76, %struct.ds3231_softc* %77, i32 0, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %81 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLFLAG_RW, align 4
  %84 = load i32, i32* @CTLTYPE_UINT, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %89 = load i32, i32* @ds3231_sqw_freq_sysctl, align 4
  %90 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %80, %struct.sysctl_oid_list* %81, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %87, %struct.ds3231_softc* %88, i32 0, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %91 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %92 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLFLAG_RW, align 4
  %95 = load i32, i32* @CTLTYPE_STRING, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %100 = load i32, i32* @ds3231_sqw_mode_sysctl, align 4
  %101 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %91, %struct.sysctl_oid_list* %92, i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %98, %struct.ds3231_softc* %99, i32 0, i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %102 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %103 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %104 = load i32, i32* @OID_AUTO, align 4
  %105 = load i32, i32* @CTLFLAG_RW, align 4
  %106 = load i32, i32* @CTLTYPE_UINT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %111 = load i32, i32* @ds3231_en32khz_sysctl, align 4
  %112 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %102, %struct.sysctl_oid_list* %103, i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %109, %struct.ds3231_softc* %110, i32 0, i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %113 = load i64, i64* %3, align 8
  %114 = load i32, i32* @CLOCKF_SETTIME_NO_ADJ, align 4
  %115 = call i32 @clock_register_flags(i64 %113, i32 1000000, i32 %114)
  %116 = load i64, i64* %3, align 8
  %117 = call i32 @clock_schedule(i64 %116, i32 1)
  br label %118

118:                                              ; preds = %42, %29, %24
  ret void
}

declare dso_local %struct.ds3231_softc* @device_get_softc(i64) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i64) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i64) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i64 @ds3231_ctrl_read(%struct.ds3231_softc*) #1

declare dso_local i64 @ds3231_status_read(%struct.ds3231_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ds3231_status_write(%struct.ds3231_softc*, i32, i32) #1

declare dso_local i32 @ds3231_ctrl_write(%struct.ds3231_softc*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.ds3231_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @clock_register_flags(i64, i32, i32) #1

declare dso_local i32 @clock_schedule(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

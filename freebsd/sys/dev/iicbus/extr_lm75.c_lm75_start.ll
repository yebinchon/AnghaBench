; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm75_softc = type { i64, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cannot read from sensor.\0A\00", align 1
@HWTYPE_LM75A = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"LM75A type sensor detected (11bits resolution).\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@LM75_TEMP = common dso_local global i32 0, align 4
@lm75_temp_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Current temperature\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"thyst\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@LM75_THYST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Hysteresis temperature\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tos\00", align 1
@LM75_TOS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Overtemperature\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"faults\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@lm75_faults_sysctl = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"LM75 fault queue\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@lm75_mode_sysctl = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"LM75 mode\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"polarity\00", align 1
@lm75_pol_sysctl = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"LM75 OS polarity\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@lm75_shutdown_sysctl = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"LM75 shutdown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lm75_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm75_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lm75_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call %struct.lm75_softc* @device_get_softc(i64 %10)
  store %struct.lm75_softc* %11, %struct.lm75_softc** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i64 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call %struct.sysctl_oid* @device_get_sysctl_tree(i64 %14)
  store %struct.sysctl_oid* %15, %struct.sysctl_oid** %6, align 8
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %17 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  store %struct.sysctl_oid_list* %17, %struct.sysctl_oid_list** %7, align 8
  %18 = load %struct.lm75_softc*, %struct.lm75_softc** %4, align 8
  %19 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %18, i32 0, i32 1
  %20 = call i32 @config_intrhook_disestablish(i32* %19)
  %21 = load %struct.lm75_softc*, %struct.lm75_softc** %4, align 8
  %22 = call i64 @lm75_type_detect(%struct.lm75_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @device_printf(i64 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %117

27:                                               ; preds = %1
  %28 = load %struct.lm75_softc*, %struct.lm75_softc** %4, align 8
  %29 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HWTYPE_LM75A, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @device_printf(i64 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLTYPE_INT, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %44 = or i32 %42, %43
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* @LM75_TEMP, align 4
  %47 = load i32, i32* @lm75_temp_sysctl, align 4
  %48 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %44, i64 %45, i32 %46, i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %50 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLTYPE_INT, align 4
  %53 = load i32, i32* @CTLFLAG_RW, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %56 = or i32 %54, %55
  %57 = load i64, i64* %3, align 8
  %58 = load i32, i32* @LM75_THYST, align 4
  %59 = load i32, i32* @lm75_temp_sysctl, align 4
  %60 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %49, %struct.sysctl_oid_list* %50, i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %56, i64 %57, i32 %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %62 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLTYPE_INT, align 4
  %65 = load i32, i32* @CTLFLAG_RW, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %68 = or i32 %66, %67
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* @LM75_TOS, align 4
  %71 = load i32, i32* @lm75_temp_sysctl, align 4
  %72 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %61, %struct.sysctl_oid_list* %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %68, i64 %69, i32 %70, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %73 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %74 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RW, align 4
  %77 = load i32, i32* @CTLTYPE_UINT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %80 = or i32 %78, %79
  %81 = load i64, i64* %3, align 8
  %82 = load i32, i32* @lm75_faults_sysctl, align 4
  %83 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %73, %struct.sysctl_oid_list* %74, i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %80, i64 %81, i32 0, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %84 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %85 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %86 = load i32, i32* @OID_AUTO, align 4
  %87 = load i32, i32* @CTLFLAG_RW, align 4
  %88 = load i32, i32* @CTLTYPE_STRING, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %91 = or i32 %89, %90
  %92 = load i64, i64* %3, align 8
  %93 = load i32, i32* @lm75_mode_sysctl, align 4
  %94 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %84, %struct.sysctl_oid_list* %85, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %91, i64 %92, i32 0, i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %95 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %96 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %97 = load i32, i32* @OID_AUTO, align 4
  %98 = load i32, i32* @CTLFLAG_RW, align 4
  %99 = load i32, i32* @CTLTYPE_STRING, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %102 = or i32 %100, %101
  %103 = load i64, i64* %3, align 8
  %104 = load i32, i32* @lm75_pol_sysctl, align 4
  %105 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %95, %struct.sysctl_oid_list* %96, i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %102, i64 %103, i32 0, i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %106 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %107 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %108 = load i32, i32* @OID_AUTO, align 4
  %109 = load i32, i32* @CTLFLAG_RW, align 4
  %110 = load i32, i32* @CTLTYPE_UINT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %113 = or i32 %111, %112
  %114 = load i64, i64* %3, align 8
  %115 = load i32, i32* @lm75_shutdown_sysctl, align 4
  %116 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %106, %struct.sysctl_oid_list* %107, i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %113, i64 %114, i32 0, i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %117

117:                                              ; preds = %36, %24
  ret void
}

declare dso_local %struct.lm75_softc* @device_get_softc(i64) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i64) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i64) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i64 @lm75_type_detect(%struct.lm75_softc*) #1

declare dso_local i32 @device_printf(i64, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

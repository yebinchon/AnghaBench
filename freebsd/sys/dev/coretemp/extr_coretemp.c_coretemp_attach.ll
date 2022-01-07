; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/coretemp/extr_coretemp.c_coretemp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/coretemp/extr_coretemp.c_coretemp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coretemp_softc = type { i32, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@cpu_id = common dso_local global i32 0, align 4
@CPUID_STEPPING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MSR_IA32_EXT_CONFIG = common dso_local global i32 0, align 4
@MSR_IA32_TEMPERATURE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Tj(target) value %d does not seem right.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Can not get Tj(target) from your CPU, using 100C.\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Setting TjMax=%d\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"coretemp\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Per-CPU thermal information\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@CORETEMP_TEMP = common dso_local global i32 0, align 4
@coretemp_get_val_sysctl = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Current temperature\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@CORETEMP_DELTA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Delta between TCC activation and current temperature\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@CORETEMP_RESOLUTION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Resolution of CPU thermal sensor\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"tjmax\00", align 1
@CORETEMP_TJMAX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"TCC activation temperature\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"throttle_log\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@coretemp_throttle_log_sysctl = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"Set to 1 if the thermal sensor has tripped\00", align 1
@MSR_BIOS_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @coretemp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coretemp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.coretemp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca %struct.sysctl_ctx_list*, align 8
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.coretemp_softc* @device_get_softc(i32 %13)
  store %struct.coretemp_softc* %14, %struct.coretemp_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %17 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @cpu_id, align 4
  %21 = call i32 @CPUID_TO_MODEL(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @cpu_id, align 4
  %23 = load i32, i32* @CPUID_STEPPING, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %185

29:                                               ; preds = %1
  %30 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %31 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %30, i32 0, i32 0
  store i32 100, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 15
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 14
  br i1 %39, label %40, label %50

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @MSR_IA32_EXT_CONFIG, align 4
  %42 = call i32 @rdmsr(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 1073741824
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %48 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %47, i32 0, i32 0
  store i32 85, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %40
  br label %101

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 23
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %58 [
    i32 6, label %55
  ]

55:                                               ; preds = %53
  %56 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %57 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %56, i32 0, i32 0
  store i32 105, i32* %57, align 4
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %55
  br label %100

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 28
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %68 [
    i32 10, label %65
  ]

65:                                               ; preds = %63
  %66 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %67 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %66, i32 0, i32 0
  store i32 100, i32* %67, align 4
  br label %71

68:                                               ; preds = %63
  %69 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %70 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %69, i32 0, i32 0
  store i32 90, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  br label %99

72:                                               ; preds = %60
  %73 = load i32, i32* @MSR_IA32_TEMPERATURE_TARGET, align 4
  %74 = call i32 @rdmsr_safe(i32 %73, i32* %6)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 16
  %80 = and i32 %79, 255
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sge i32 %81, 70
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  %85 = icmp sle i32 %84, 110
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %89 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %83, %77
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %98

95:                                               ; preds = %72
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %94
  br label %99

99:                                               ; preds = %98, %71
  br label %100

100:                                              ; preds = %99, %59
  br label %101

101:                                              ; preds = %100, %49
  %102 = load i64, i64* @bootverbose, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.coretemp_softc*, %struct.coretemp_softc** %4, align 8
  %107 = getelementptr inbounds %struct.coretemp_softc, %struct.coretemp_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %104, %101
  %111 = load i32, i32* %3, align 4
  %112 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %111)
  store %struct.sysctl_ctx_list* %112, %struct.sysctl_ctx_list** %12, align 8
  %113 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %114)
  %116 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %115)
  %117 = load i32, i32* @OID_AUTO, align 4
  %118 = load i32, i32* @CTLFLAG_RD, align 4
  %119 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %113, i32 %116, i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %119, %struct.sysctl_oid** %11, align 8
  %120 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %121)
  %123 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %122)
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLTYPE_INT, align 4
  %126 = load i32, i32* @CTLFLAG_RD, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @CORETEMP_TEMP, align 4
  %132 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %133 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %120, i32 %123, i32 %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %130, i32 %131, i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %134 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %135 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %136 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %135)
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load i32, i32* @CTLTYPE_INT, align 4
  %139 = load i32, i32* @CTLFLAG_RD, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @CORETEMP_DELTA, align 4
  %145 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %146 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %134, i32 %136, i32 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %142, i32 %143, i32 %144, i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  %147 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %148 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %149 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %148)
  %150 = load i32, i32* @OID_AUTO, align 4
  %151 = load i32, i32* @CTLTYPE_INT, align 4
  %152 = load i32, i32* @CTLFLAG_RD, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @CORETEMP_RESOLUTION, align 4
  %158 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %159 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %147, i32 %149, i32 %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %155, i32 %156, i32 %157, i32 %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %160 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %161 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %162 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %161)
  %163 = load i32, i32* @OID_AUTO, align 4
  %164 = load i32, i32* @CTLTYPE_INT, align 4
  %165 = load i32, i32* @CTLFLAG_RD, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @CORETEMP_TJMAX, align 4
  %171 = load i32, i32* @coretemp_get_val_sysctl, align 4
  %172 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %160, i32 %162, i32 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %168, i32 %169, i32 %170, i32 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %173 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %12, align 8
  %174 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %175 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %174)
  %176 = load i32, i32* @OID_AUTO, align 4
  %177 = load i32, i32* @CTLTYPE_INT, align 4
  %178 = load i32, i32* @CTLFLAG_RW, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @coretemp_throttle_log_sysctl, align 4
  %184 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %173, i32 %175, i32 %176, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %181, i32 %182, i32 0, i32 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %110, %27
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.coretemp_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @rdmsr_safe(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

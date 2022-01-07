; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach_fans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach_fans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.pmac_fan*)*, i32 (%struct.pmac_fan.0*, i32)*, i32*, i32, i32 }
%struct.pmac_fan = type opaque
%struct.pmac_fan.0 = type opaque
%struct.smu_softc = type { i32, %struct.smu_fan* }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.pmac_fan.1 = type opaque
%struct.pmac_fan.2 = type opaque
%struct.pmac_fan.3 = type opaque

@M_SMU = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fans\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SMU Fan Information\00", align 1
@SMU_FAN_RPM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Fan Information\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"minrpm\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Minimum allowed RPM\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"maxrpm\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Maximum allowed RPM\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@smu_fanrpm_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Fan RPM\00", align 1
@smu_fan_read_rpm = common dso_local global i64 0, align 8
@smu_fan_set_rpm = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"minpwm\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Minimum allowed PWM in %\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"maxpwm\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Maximum allowed PWM in %\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@SMU_PWM_SYSCTL_PWM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"Fan PWM in %\00", align 1
@SMU_PWM_SYSCTL_RPM = common dso_local global i32 0, align 4
@smu_fan_set_pwm = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [18 x i8] c"Fan: %s type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @smu_attach_fans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_attach_fans(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_fan*, align 8
  %6 = alloca %struct.smu_softc*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_ctx_list*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.smu_softc* @device_get_softc(i32 %13)
  store %struct.smu_softc* %14, %struct.smu_softc** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @smu_count_fans(i32 %15)
  %17 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %18 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %20 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %258

24:                                               ; preds = %2
  %25 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %26 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 40
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @M_SMU, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.smu_fan* @malloc(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %37 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %36, i32 0, i32 1
  store %struct.smu_fan* %35, %struct.smu_fan** %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @smu_count_fans(i32 %38)
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %55, %24
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %43 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %48 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %47, i32 0, i32 1
  %49 = load %struct.smu_fan*, %struct.smu_fan** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %49, i64 %51
  %53 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %52, i32 0, i32 1
  %54 = call i32 @pmac_thermal_fan_register(%struct.TYPE_2__* %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load i32, i32* %3, align 4
  %60 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %59)
  store %struct.sysctl_ctx_list* %60, %struct.sysctl_ctx_list** %9, align 8
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %62)
  %64 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %61, i32 %64, i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %66, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %67, %struct.sysctl_oid** %8, align 8
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %255, %58
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %71 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %258

74:                                               ; preds = %68
  %75 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %76 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %75, i32 0, i32 1
  %77 = load %struct.smu_fan*, %struct.smu_fan** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %77, i64 %79
  store %struct.smu_fan* %80, %struct.smu_fan** %5, align 8
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %113, %74
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %84 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @strlen(i32* %86)
  %88 = icmp slt i32 %82, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %81
  %90 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %91 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call signext i8 @tolower(i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %100
  store i8 %98, i8* %101, align 1
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @isspace(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %89
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %110
  store i8 95, i8* %111, align 1
  br label %112

112:                                              ; preds = %108, %89
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %81

116:                                              ; preds = %81
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 %118
  store i8 0, i8* %119, align 1
  %120 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %121 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SMU_FAN_RPM, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %176

125:                                              ; preds = %116
  %126 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %127 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %128 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %127)
  %129 = load i32, i32* @OID_AUTO, align 4
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %131 = load i32, i32* @CTLFLAG_RD, align 4
  %132 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %126, i32 %128, i32 %129, i8* %130, i32 %131, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %132, %struct.sysctl_oid** %7, align 8
  %133 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %134 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %135 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %134)
  %136 = load i32, i32* @OID_AUTO, align 4
  %137 = load i32, i32* @CTLFLAG_RD, align 4
  %138 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %139 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %133, i32 %135, i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32* %140, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %142 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %143 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %144 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %143)
  %145 = load i32, i32* @OID_AUTO, align 4
  %146 = load i32, i32* @CTLFLAG_RD, align 4
  %147 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %148 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %142, i32 %144, i32 %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32* %149, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %151 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %152 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %153 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %152)
  %154 = load i32, i32* @OID_AUTO, align 4
  %155 = load i32, i32* @CTLTYPE_INT, align 4
  %156 = load i32, i32* @CTLFLAG_RW, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @smu_fanrpm_sysctl, align 4
  %163 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %151, i32 %153, i32 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %159, i32 %160, i32 %161, i32 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %164 = load i64, i64* @smu_fan_read_rpm, align 8
  %165 = inttoptr i64 %164 to i32 (%struct.pmac_fan.1*)*
  %166 = bitcast i32 (%struct.pmac_fan.1*)* %165 to i32 (%struct.pmac_fan*)*
  %167 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %168 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i32 (%struct.pmac_fan*)* %166, i32 (%struct.pmac_fan*)** %169, align 8
  %170 = load i64, i64* @smu_fan_set_rpm, align 8
  %171 = inttoptr i64 %170 to i32 (%struct.pmac_fan.2*, i32)*
  %172 = bitcast i32 (%struct.pmac_fan.2*, i32)* %171 to i32 (%struct.pmac_fan.0*, i32)*
  %173 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %174 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 (%struct.pmac_fan.0*, i32)* %172, i32 (%struct.pmac_fan.0*, i32)** %175, align 8
  br label %241

176:                                              ; preds = %116
  %177 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %178 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %179 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %178)
  %180 = load i32, i32* @OID_AUTO, align 4
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %182 = load i32, i32* @CTLFLAG_RD, align 4
  %183 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %177, i32 %179, i32 %180, i8* %181, i32 %182, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %183, %struct.sysctl_oid** %7, align 8
  %184 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %185 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %186 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %185)
  %187 = load i32, i32* @OID_AUTO, align 4
  %188 = load i32, i32* @CTLFLAG_RD, align 4
  %189 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %190 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 4
  %192 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %184, i32 %186, i32 %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %188, i32* %191, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %193 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %194 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %195 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %194)
  %196 = load i32, i32* @OID_AUTO, align 4
  %197 = load i32, i32* @CTLFLAG_RD, align 4
  %198 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %199 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  %201 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %193, i32 %195, i32 %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %197, i32* %200, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %202 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %203 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %204 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %203)
  %205 = load i32, i32* @OID_AUTO, align 4
  %206 = load i32, i32* @CTLTYPE_INT, align 4
  %207 = load i32, i32* @CTLFLAG_RW, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @SMU_PWM_SYSCTL_PWM, align 4
  %213 = load i32, i32* %11, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @smu_fanrpm_sysctl, align 4
  %216 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %202, i32 %204, i32 %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %210, i32 %211, i32 %214, i32 %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %217 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %9, align 8
  %218 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %219 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %218)
  %220 = load i32, i32* @OID_AUTO, align 4
  %221 = load i32, i32* @CTLTYPE_INT, align 4
  %222 = load i32, i32* @CTLFLAG_RD, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* @SMU_PWM_SYSCTL_RPM, align 4
  %228 = load i32, i32* %11, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @smu_fanrpm_sysctl, align 4
  %231 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %217, i32 %219, i32 %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %225, i32 %226, i32 %229, i32 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %232 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %233 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  store i32 (%struct.pmac_fan*)* null, i32 (%struct.pmac_fan*)** %234, align 8
  %235 = load i64, i64* @smu_fan_set_pwm, align 8
  %236 = inttoptr i64 %235 to i32 (%struct.pmac_fan.3*, i32)*
  %237 = bitcast i32 (%struct.pmac_fan.3*, i32)* %236 to i32 (%struct.pmac_fan.0*, i32)*
  %238 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %239 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  store i32 (%struct.pmac_fan.0*, i32)* %237, i32 (%struct.pmac_fan.0*, i32)** %240, align 8
  br label %241

241:                                              ; preds = %176, %125
  %242 = load i64, i64* @bootverbose, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %241
  %245 = load i32, i32* %3, align 4
  %246 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %247 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %251 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @device_printf(i32 %245, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32* %249, i64 %252)
  br label %254

254:                                              ; preds = %244, %241
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %68

258:                                              ; preds = %23, %68
  ret void
}

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i32 @smu_count_fans(i32) #1

declare dso_local %struct.smu_fan* @malloc(i32, i32, i32) #1

declare dso_local i32 @pmac_thermal_fan_register(%struct.TYPE_2__*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

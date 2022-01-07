; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach_sensors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_attach_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_sensor = type { i64, i8, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8, i8*, i32, i32, i32 (%struct.pmac_therm*)* }
%struct.pmac_therm = type opaque
%struct.smu_softc = type { i32, %struct.smu_sensor* }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.pmac_therm.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"WARNING: No sensors detected!\0A\00", align 1
@M_SMU = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"sensors\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"SMU Sensor Information\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"current-sensor\00", align 1
@SMU_CURRENT_SENSOR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"mA\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"temp-sensor\00", align 1
@SMU_TEMP_SENSOR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"voltage-sensor\00", align 1
@SMU_VOLTAGE_SENSOR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"mV\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"power-sensor\00", align 1
@SMU_POWER_SENSOR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"mW\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@smu_sensor_sysctl = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@smu_sensor_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @smu_attach_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_attach_sensors(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.smu_sensor*, align 8
  %6 = alloca %struct.smu_softc*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_ctx_list*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca [40 x i8], align 16
  %13 = alloca [40 x i8], align 16
  %14 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.smu_softc* @device_get_softc(i32 %15)
  store %struct.smu_softc* %16, %struct.smu_softc** %6, align 8
  %17 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %18 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @OF_child(i64 %19)
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %29, %2
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %26 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @OF_peer(i64 %30)
  store i64 %31, i64* %9, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %34 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %232

40:                                               ; preds = %32
  %41 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %42 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 56
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @M_SMU, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.smu_sensor* @malloc(i32 %46, i32 %47, i32 %50)
  %52 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %53 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %52, i32 0, i32 1
  store %struct.smu_sensor* %51, %struct.smu_sensor** %53, align 8
  %54 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %55 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %54, i32 0, i32 1
  %56 = load %struct.smu_sensor*, %struct.smu_sensor** %55, align 8
  store %struct.smu_sensor* %56, %struct.smu_sensor** %5, align 8
  %57 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %58 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %59)
  store %struct.sysctl_ctx_list* %60, %struct.sysctl_ctx_list** %8, align 8
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %62)
  %64 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RD, align 4
  %67 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %61, i32 %64, i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sysctl_oid* %67, %struct.sysctl_oid** %7, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @OF_child(i64 %68)
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %229, %40
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %232

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %76 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %79 = call i32 @OF_getprop(i64 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %78, i32 32)
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i64, i64* @SMU_CURRENT_SENSOR, align 8
  %85 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %86 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %115

87:                                               ; preds = %73
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i64, i64* @SMU_TEMP_SENSOR, align 8
  %93 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %94 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %114

95:                                               ; preds = %87
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i64, i64* @SMU_VOLTAGE_SENSOR, align 8
  %101 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %102 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  br label %113

103:                                              ; preds = %95
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64, i64* @SMU_POWER_SENSOR, align 8
  %109 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %110 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %14, align 8
  br label %112

111:                                              ; preds = %103
  br label %229

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %91
  br label %115

115:                                              ; preds = %114, %83
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %118 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %117, i32 0, i32 1
  %119 = call i32 @OF_getprop(i64 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %118, i32 4)
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %122 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @OF_getprop(i64 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %123, i32 4)
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %127 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @OF_getprop(i64 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %129, i32 8)
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %163, %115
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %134 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = icmp slt i32 %132, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %131
  %140 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %141 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = call signext i8 @tolower(i8 signext %147)
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %150
  store i8 %148, i8* %151, align 1
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = call i64 @isspace(i8 signext %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %139
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %160
  store i8 95, i8* %161, align 1
  br label %162

162:                                              ; preds = %158, %139
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %131

166:                                              ; preds = %131
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 %168
  store i8 0, i8* %169, align 1
  %170 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %171 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %172 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = call i32 @sprintf(i8* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %174, i8* %175)
  %177 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %178 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %179 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %178)
  %180 = load i32, i32* @OID_AUTO, align 4
  %181 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %182 = load i32, i32* @CTLTYPE_INT, align 4
  %183 = load i32, i32* @CTLFLAG_RD, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %3, align 4
  %188 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %189 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @smu_sensor_sysctl, align 4
  %192 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %193 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @SMU_TEMP_SENSOR, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)
  %199 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %200 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %177, i32 %179, i32 %180, i8* %181, i32 %186, i32 %187, i32 %190, i32 %191, i8* %198, i8* %199)
  %201 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %202 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @SMU_TEMP_SENSOR, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %166
  %207 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %208 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  store i32 3231, i32* %209, align 8
  %210 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %211 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 3
  store i32 3631, i32* %212, align 4
  %213 = load i64, i64* @smu_sensor_read, align 8
  %214 = inttoptr i64 %213 to i32 (%struct.pmac_therm.0*)*
  %215 = bitcast i32 (%struct.pmac_therm.0*)* %214 to i32 (%struct.pmac_therm*)*
  %216 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %217 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 4
  store i32 (%struct.pmac_therm*)* %215, i32 (%struct.pmac_therm*)** %218, align 8
  %219 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %220 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %219, i32 0, i32 2
  %221 = call i32 @pmac_thermal_sensor_register(%struct.TYPE_2__* %220)
  br label %222

222:                                              ; preds = %206, %166
  %223 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %224 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %223, i32 1
  store %struct.smu_sensor* %224, %struct.smu_sensor** %5, align 8
  %225 = load %struct.smu_softc*, %struct.smu_softc** %6, align 8
  %226 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %222, %111
  %230 = load i64, i64* %9, align 8
  %231 = call i64 @OF_peer(i64 %230)
  store i64 %231, i64* %9, align 8
  br label %70

232:                                              ; preds = %37, %70
  ret void
}

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.smu_sensor* @malloc(i32, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @pmac_thermal_sensor_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

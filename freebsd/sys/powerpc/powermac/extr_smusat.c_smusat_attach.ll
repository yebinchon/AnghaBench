; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smusat.c_smusat_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smusat.c_smusat_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_sensor = type { i8, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8, i8*, i32, i32, i32 (%struct.pmac_therm*)* }
%struct.pmac_therm = type opaque
%struct.smusat_softc = type { i32, %struct.smu_sensor*, i64 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.pmac_therm.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"WARNING: No sensors detected!\0A\00", align 1
@M_SMUSAT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"current-sensor\00", align 1
@SMU_CURRENT_SENSOR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"mA\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"temp-sensor\00", align 1
@SMU_TEMP_SENSOR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"voltage-sensor\00", align 1
@SMU_VOLTAGE_SENSOR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"mV\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"power-sensor\00", align 1
@SMU_POWER_SENSOR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"mW\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@smusat_sensor_sysctl = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@smusat_sensor_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smusat_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smusat_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.smu_sensor*, align 8
  %6 = alloca %struct.smusat_softc*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_ctx_list*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca [40 x i8], align 16
  %12 = alloca [40 x i8], align 16
  %13 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.smusat_softc* @device_get_softc(i32 %14)
  store %struct.smusat_softc* %15, %struct.smusat_softc** %6, align 8
  %16 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %17 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %19 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ofw_bus_get_node(i32 %20)
  %22 = call i64 @OF_child(i32 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %31, %1
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %28 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @OF_peer(i64 %32)
  store i64 %33, i64* %4, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %36 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %246

42:                                               ; preds = %34
  %43 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %44 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 56
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @M_SMUSAT, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.smu_sensor* @malloc(i32 %48, i32 %49, i32 %52)
  %54 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %55 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %54, i32 0, i32 1
  store %struct.smu_sensor* %53, %struct.smu_sensor** %55, align 8
  %56 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %57 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %56, i32 0, i32 1
  %58 = load %struct.smu_sensor*, %struct.smu_sensor** %57, align 8
  store %struct.smu_sensor* %58, %struct.smu_sensor** %5, align 8
  %59 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %60 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %61)
  store %struct.sysctl_ctx_list* %62, %struct.sysctl_ctx_list** %8, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %63)
  store %struct.sysctl_oid* %64, %struct.sysctl_oid** %7, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @ofw_bus_get_node(i32 %65)
  %67 = call i64 @OF_child(i32 %66)
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %242, %42
  %69 = load i64, i64* %4, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %245

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %74 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %76 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %75, i32 0, i32 0
  store i8 0, i8* %76, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %79 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %78, i32 0, i32 0
  %80 = call i32 @OF_getprop(i64 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 1)
  %81 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %82 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 8
  %84 = sext i8 %83 to i32
  %85 = icmp slt i32 %84, 48
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %242

87:                                               ; preds = %71
  %88 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %89 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 8
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 48
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %89, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %96 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @OF_getprop(i64 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 4)
  %99 = load i64, i64* %4, align 8
  %100 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %101 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @OF_getprop(i64 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %103, i32 8)
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %107 = call i32 @OF_getprop(i64 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %106, i32 32)
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %87
  %112 = load i64, i64* @SMU_CURRENT_SENSOR, align 8
  %113 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %114 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %143

115:                                              ; preds = %87
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i64, i64* @SMU_TEMP_SENSOR, align 8
  %121 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %122 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %142

123:                                              ; preds = %115
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i64, i64* @SMU_VOLTAGE_SENSOR, align 8
  %129 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %130 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %141

131:                                              ; preds = %123
  %132 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i64, i64* @SMU_POWER_SENSOR, align 8
  %137 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %138 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %140

139:                                              ; preds = %131
  br label %242

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140, %127
  br label %142

142:                                              ; preds = %141, %119
  br label %143

143:                                              ; preds = %142, %111
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %176, %143
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %147 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %144
  %153 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %154 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = call signext i8 @tolower(i8 signext %160)
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 %163
  store i8 %161, i8* %164, align 1
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = call i64 @isspace(i8 signext %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %152
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 %173
  store i8 95, i8* %174, align 1
  br label %175

175:                                              ; preds = %171, %152
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %144

179:                                              ; preds = %144
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 %181
  store i8 0, i8* %182, align 1
  %183 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %184 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %185 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = call i32 @sprintf(i8* %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %187, i8* %188)
  %190 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %8, align 8
  %191 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %192 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %191)
  %193 = load i32, i32* @OID_AUTO, align 4
  %194 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %195 = load i32, i32* @CTLTYPE_INT, align 4
  %196 = load i32, i32* @CTLFLAG_RD, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %3, align 4
  %201 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %202 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @smusat_sensor_sysctl, align 4
  %205 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %206 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SMU_TEMP_SENSOR, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %212 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %213 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %190, i32 %192, i32 %193, i8* %194, i32 %199, i32 %200, i32 %203, i32 %204, i8* %211, i8* %212)
  %214 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %215 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @SMU_TEMP_SENSOR, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %179
  %220 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %221 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 2
  store i32 3231, i32* %222, align 8
  %223 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %224 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 3
  store i32 3631, i32* %225, align 4
  %226 = load i64, i64* @smusat_sensor_read, align 8
  %227 = inttoptr i64 %226 to i32 (%struct.pmac_therm.0*)*
  %228 = bitcast i32 (%struct.pmac_therm.0*)* %227 to i32 (%struct.pmac_therm*)*
  %229 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %230 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 4
  store i32 (%struct.pmac_therm*)* %228, i32 (%struct.pmac_therm*)** %231, align 8
  %232 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %233 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %232, i32 0, i32 2
  %234 = call i32 @pmac_thermal_sensor_register(%struct.TYPE_2__* %233)
  br label %235

235:                                              ; preds = %219, %179
  %236 = load %struct.smu_sensor*, %struct.smu_sensor** %5, align 8
  %237 = getelementptr inbounds %struct.smu_sensor, %struct.smu_sensor* %236, i32 1
  store %struct.smu_sensor* %237, %struct.smu_sensor** %5, align 8
  %238 = load %struct.smusat_softc*, %struct.smusat_softc** %6, align 8
  %239 = getelementptr inbounds %struct.smusat_softc, %struct.smusat_softc* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %235, %139, %86
  %243 = load i64, i64* %4, align 8
  %244 = call i64 @OF_peer(i64 %243)
  store i64 %244, i64* %4, align 8
  br label %68

245:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %246

246:                                              ; preds = %245, %39
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local %struct.smusat_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_child(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.smu_sensor* @malloc(i32, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @pmac_thermal_sensor_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

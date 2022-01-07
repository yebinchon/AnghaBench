; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smuiic_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smuiic_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32, i32* }
%struct.smuiic_softc = type { i32, i32, i32 }
%struct.smu_cmd = type { i32*, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"smuiic\00", align 1
@SMU_I2C = common dso_local global i8* null, align 8
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@SMU_I2C_COMBINED = common dso_local global i32 0, align 4
@SMU_I2C_SIMPLE = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"oversize I2C combined message\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @smuiic_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smuiic_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smuiic_softc*, align 8
  %8 = alloca %struct.smu_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.smuiic_softc* @device_get_softc(i32 %12)
  store %struct.smuiic_softc* %13, %struct.smuiic_softc** %7, align 8
  %14 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %15 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %14, i32 0, i32 2
  %16 = call i32 @mtx_lock(i32* %15)
  br label %17

17:                                               ; preds = %22, %3
  %18 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %19 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %24 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %25 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %24, i32 0, i32 2
  %26 = call i32 @mtx_sleep(%struct.smuiic_softc* %23, i32* %25, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 100)
  br label %17

27:                                               ; preds = %17
  %28 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %29 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %318, %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %321

34:                                               ; preds = %30
  %35 = load i8*, i8** @SMU_I2C, align 8
  %36 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %38 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %43, i64 %45
  %47 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IIC_M_NOSTOP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %34
  %53 = load i32, i32* @SMU_I2C_COMBINED, align 4
  %54 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %53, i32* %56, align 4
  br label %62

57:                                               ; preds = %34
  %58 = load i32, i32* @SMU_I2C_SIMPLE, align 4
  %59 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %63, i64 %65
  %67 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %68, i32* %71, align 4
  %72 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IIC_M_RD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %62
  %82 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %62
  %88 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %88, i64 %90
  %92 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IIC_M_NOSTOP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %87
  %98 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %98, i64 %100
  %102 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 4
  %105 = zext i1 %104 to i32
  %106 = call i32 @KASSERT(i32 %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %107, i64 %109
  %111 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @min(i32 %112, i32 3)
  %114 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  store i32 %113, i32* %116, align 4
  %117 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %120, i64 %122
  %124 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %126, i64 %128
  %130 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @min(i32 %131, i32 3)
  %133 = call i32 @memcpy(i32* %119, i32* %125, i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %144

136:                                              ; preds = %87
  %137 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  %143 = call i32 @memset(i32* %142, i32 0, i32 3)
  br label %144

144:                                              ; preds = %136, %97
  %145 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %145, i64 %147
  %149 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 7
  store i32 %150, i32* %153, align 4
  %154 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %154, i64 %156
  %158 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @IIC_M_RD, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %144
  %164 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 7
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %144
  %170 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %170, i64 %172
  %174 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 8
  store i32 %175, i32* %178, align 4
  %179 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %179, i64 %181
  %183 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @IIC_M_RD, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %169
  %189 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 9
  %192 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %192, i64 %194
  %196 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @memset(i32* %191, i32 255, i32 %197)
  %199 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 1
  store i32 9, i32* %199, align 8
  br label %225

200:                                              ; preds = %169
  %201 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 9
  %204 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %204, i64 %206
  %208 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %210, i64 %212
  %214 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @memcpy(i32* %203, i32* %209, i32 %215)
  %217 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %217, i64 %219
  %221 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 9, %222
  %224 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 1
  store i32 %223, i32* %224, align 8
  br label %225

225:                                              ; preds = %200, %188
  %226 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %227 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %226, i32 0, i32 2
  %228 = call i32 @mtx_unlock(i32* %227)
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @device_get_parent(i32 %229)
  %231 = call i32 @smu_run_cmd(i32 %230, %struct.smu_cmd* %8, i32 1)
  %232 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %233 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %232, i32 0, i32 2
  %234 = call i32 @mtx_lock(i32* %233)
  store i32 0, i32* %10, align 4
  br label %235

235:                                              ; preds = %276, %225
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %236, 10
  br i1 %237, label %238, label %279

238:                                              ; preds = %235
  %239 = load i8*, i8** @SMU_I2C, align 8
  %240 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 2
  store i8* %239, i8** %240, align 8
  %241 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 1
  store i32 1, i32* %241, align 8
  %242 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 0, i32* %244, align 4
  %245 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %248, i64 %250
  %252 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @memset(i32* %247, i32 255, i32 %253)
  %255 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %256 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %255, i32 0, i32 2
  %257 = call i32 @mtx_unlock(i32* %256)
  %258 = load i32, i32* %4, align 4
  %259 = call i32 @device_get_parent(i32 %258)
  %260 = call i32 @smu_run_cmd(i32 %259, %struct.smu_cmd* %8, i32 1)
  %261 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %262 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %261, i32 0, i32 2
  %263 = call i32 @mtx_lock(i32* %262)
  %264 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 128
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %238
  br label %279

271:                                              ; preds = %238
  %272 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %273 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %274 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %273, i32 0, i32 2
  %275 = call i32 @mtx_sleep(%struct.smuiic_softc* %272, i32* %274, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 10)
  br label %276

276:                                              ; preds = %271
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %10, align 4
  br label %235

279:                                              ; preds = %270, %235
  %280 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = and i32 %283, 128
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %279
  %287 = load i32, i32* @EIO, align 4
  store i32 %287, i32* %11, align 4
  %288 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %288, i64 %290
  %292 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %291, i32 0, i32 2
  store i32 0, i32* %292, align 8
  br label %322

293:                                              ; preds = %279
  %294 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %294, i64 %296
  %298 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %303, i64 %305
  %307 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @memcpy(i32* %299, i32* %302, i32 %308)
  %310 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %8, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = sub nsw i32 %311, 1
  %313 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %313, i64 %315
  %317 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %316, i32 0, i32 2
  store i32 %312, i32* %317, align 8
  br label %318

318:                                              ; preds = %293
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %9, align 4
  br label %30

321:                                              ; preds = %30
  br label %322

322:                                              ; preds = %321, %286
  %323 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %324 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %323, i32 0, i32 0
  store i32 0, i32* %324, align 4
  %325 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %326 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %325, i32 0, i32 2
  %327 = call i32 @mtx_unlock(i32* %326)
  %328 = load %struct.smuiic_softc*, %struct.smuiic_softc** %7, align 8
  %329 = call i32 @wakeup(%struct.smuiic_softc* %328)
  %330 = load i32, i32* %11, align 4
  ret i32 %330
}

declare dso_local %struct.smuiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_sleep(%struct.smuiic_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @wakeup(%struct.smuiic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

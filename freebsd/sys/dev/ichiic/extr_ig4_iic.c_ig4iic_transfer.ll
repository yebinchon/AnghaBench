; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"message with no data\00", align 1
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"stop not followed by start\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"change of slave without stop\00", align 1
@IIC_M_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"change of direction without repeated start\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IIC_ENOTSUPP = common dso_local global i32 0, align 4
@ig4_dump = common dso_local global i32 0, align 4
@IG4_REG_CLR_TX_ABORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"start condition suppressedbut slave address is not set up\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IG4_INTR_STOP_DET = common dso_local global i32 0, align 4
@IG4_REG_CLR_INTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Failed to abort transfer. Do the controller reset.\0A\00", align 1
@IG4_REG_I2C_STA = common dso_local global i32 0, align 4
@IG4_STATUS_RX_NOTEMPTY = common dso_local global i32 0, align 4
@IG4_REG_DATA_CMD = common dso_local global i32 0, align 4
@IG4_REG_TX_ABRT_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ig4iic_transfer(i32 %0, %struct.iic_msg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iic_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_12__* @device_get_softc(i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %106, %3
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %109

22:                                               ; preds = %18
  %23 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %23, i64 %24
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %109

30:                                               ; preds = %22
  %31 = load i64, i64* %10, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %30
  %34 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %34, i64 %35
  %37 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IIC_M_NOSTART, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %43, i64 %45
  %47 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IIC_M_NOSTOP, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %109

53:                                               ; preds = %42, %33
  %54 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IIC_M_NOSTOP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %53
  %64 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %64, i64 %65
  %67 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %69, i64 %71
  %73 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %68, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %109

77:                                               ; preds = %63, %53
  %78 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %78, i64 %79
  %81 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IIC_M_NOSTART, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %77
  %87 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %87, i64 %88
  %90 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IIC_M_RD, align 4
  %93 = and i32 %91, %92
  %94 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = sub i64 %95, 1
  %97 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %94, i64 %96
  %98 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IIC_M_RD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %93, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %86
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %109

104:                                              ; preds = %86, %77
  br label %105

105:                                              ; preds = %104, %30
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %18

109:                                              ; preds = %103, %76, %52, %29, %18
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i64, i64* @bootverbose, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* @IIC_ENOTSUPP, align 4
  store i32 %120, i32* %4, align 4
  br label %324

121:                                              ; preds = %109
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = call i64 @sx_xlocked(i32* %123)
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = call i32 @sx_xlock(i32* %131)
  br label %133

133:                                              ; preds = %129, %121
  %134 = load i32, i32* @ig4_dump, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @device_get_unit(i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* @ig4_dump, align 4
  %140 = load i32, i32* %12, align 4
  %141 = shl i32 1, %140
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load i32, i32* %12, align 4
  %146 = shl i32 1, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* @ig4_dump, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* @ig4_dump, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %151 = call i32 @ig4iic_dump(%struct.TYPE_12__* %150)
  br label %152

152:                                              ; preds = %144, %136
  br label %153

153:                                              ; preds = %152, %133
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %155 = load i32, i32* @IG4_REG_CLR_TX_ABORT, align 4
  %156 = call i32 @reg_read(%struct.TYPE_12__* %154, i32 %155)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %157

157:                                              ; preds = %312, %153
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %7, align 8
  %160 = icmp ult i64 %158, %159
  br i1 %160, label %161, label %315

161:                                              ; preds = %157
  %162 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %163 = load i64, i64* %10, align 8
  %164 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %162, i64 %163
  %165 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IIC_M_NOSTART, align 4
  %168 = and i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %161
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %172 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %172, i64 %173
  %175 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @ig4iic_xfer_start(%struct.TYPE_12__* %171, i32 %176, i32 %177)
  store i32 %178, i32* %11, align 4
  br label %200

179:                                              ; preds = %161
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %186 = load i64, i64* %10, align 8
  %187 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %185, i64 %186
  %188 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = ashr i32 %189, 1
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %190, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %184, %179
  %196 = load i32, i32* %5, align 4
  %197 = call i32 (i32, i8*, ...) @device_printf(i32 %196, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %198 = load i32, i32* @EINVAL, align 4
  store i32 %198, i32* %11, align 4
  br label %315

199:                                              ; preds = %184
  store i32 0, i32* %13, align 4
  br label %200

200:                                              ; preds = %199, %170
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %315

204:                                              ; preds = %200
  %205 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %206 = load i64, i64* %10, align 8
  %207 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %205, i64 %206
  %208 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @IIC_M_NOSTOP, align 4
  %211 = and i32 %209, %210
  %212 = icmp eq i32 %211, 0
  %213 = zext i1 %212 to i32
  store i32 %213, i32* %14, align 4
  %214 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %215 = load i64, i64* %10, align 8
  %216 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %214, i64 %215
  %217 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @IIC_M_RD, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %237

222:                                              ; preds = %204
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %224 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %225 = load i64, i64* %10, align 8
  %226 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %224, i64 %225
  %227 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %230 = load i64, i64* %10, align 8
  %231 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %229, i64 %230
  %232 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @ig4iic_read(%struct.TYPE_12__* %223, i32 %228, i64 %233, i32 %234, i32 %235)
  store i32 %236, i32* %11, align 4
  br label %252

237:                                              ; preds = %204
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %239 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %240 = load i64, i64* %10, align 8
  %241 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %239, i64 %240
  %242 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %244, i64 %245
  %247 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %14, align 4
  %251 = call i32 @ig4iic_write(%struct.TYPE_12__* %238, i32 %243, i64 %248, i32 %249, i32 %250)
  store i32 %251, i32* %11, align 4
  br label %252

252:                                              ; preds = %237, %222
  %253 = load i32, i32* %14, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %269

255:                                              ; preds = %252
  %256 = load i32, i32* %11, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %255
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %260 = load i32, i32* @IG4_INTR_STOP_DET, align 4
  %261 = call i32 @wait_intr(%struct.TYPE_12__* %259, i32 %260)
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %11, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %258
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %266 = load i32, i32* @IG4_REG_CLR_INTR, align 4
  %267 = call i32 @reg_read(%struct.TYPE_12__* %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %258
  br label %269

269:                                              ; preds = %268, %255, %252
  %270 = load i32, i32* %11, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %307

272:                                              ; preds = %269
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %274 = call i64 @ig4iic_xfer_is_started(%struct.TYPE_12__* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %272
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %278 = call i64 @ig4iic_xfer_abort(%struct.TYPE_12__* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %276
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32, i8*, ...) @device_printf(i32 %283, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %286 = call i32 @ig4iic_set_config(%struct.TYPE_12__* %285, i32 1)
  br label %306

287:                                              ; preds = %276, %272
  br label %288

288:                                              ; preds = %295, %287
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %290 = load i32, i32* @IG4_REG_I2C_STA, align 4
  %291 = call i32 @reg_read(%struct.TYPE_12__* %289, i32 %290)
  %292 = load i32, i32* @IG4_STATUS_RX_NOTEMPTY, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %288
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %297 = load i32, i32* @IG4_REG_DATA_CMD, align 4
  %298 = call i32 @reg_read(%struct.TYPE_12__* %296, i32 %297)
  br label %288

299:                                              ; preds = %288
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %301 = load i32, i32* @IG4_REG_TX_ABRT_SOURCE, align 4
  %302 = call i32 @reg_read(%struct.TYPE_12__* %300, i32 %301)
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %304 = load i32, i32* @IG4_REG_CLR_INTR, align 4
  %305 = call i32 @reg_read(%struct.TYPE_12__* %303, i32 %304)
  br label %306

306:                                              ; preds = %299, %280
  br label %315

307:                                              ; preds = %269
  %308 = load i32, i32* %14, align 4
  %309 = icmp ne i32 %308, 0
  %310 = xor i1 %309, true
  %311 = zext i1 %310 to i32
  store i32 %311, i32* %13, align 4
  br label %312

312:                                              ; preds = %307
  %313 = load i64, i64* %10, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %10, align 8
  br label %157

315:                                              ; preds = %306, %203, %195, %157
  %316 = load i32, i32* %15, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 1
  %321 = call i32 @sx_unlock(i32* %320)
  br label %322

322:                                              ; preds = %318, %315
  %323 = load i32, i32* %11, align 4
  store i32 %323, i32* %4, align 4
  br label %324

324:                                              ; preds = %322, %119
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local %struct.TYPE_12__* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @sx_xlocked(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ig4iic_dump(%struct.TYPE_12__*) #1

declare dso_local i32 @reg_read(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ig4iic_xfer_start(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ig4iic_read(%struct.TYPE_12__*, i32, i64, i32, i32) #1

declare dso_local i32 @ig4iic_write(%struct.TYPE_12__*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_intr(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ig4iic_xfer_is_started(%struct.TYPE_12__*) #1

declare dso_local i64 @ig4iic_xfer_abort(%struct.TYPE_12__*) #1

declare dso_local i32 @ig4iic_set_config(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

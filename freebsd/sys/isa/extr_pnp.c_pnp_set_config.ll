; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_config = type { i32, i32, i32, i32, i64*, i64*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.pnp_set_config_arg = type { i32, i32 }

@PNP_WAKE = common dso_local global i32 0, align 4
@PNP_SET_LDN = common dso_local global i32 0, align 4
@ISA_PNP_NMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"too many ISA memory ranges (%d > %d)\0A\00", align 1
@ISA_PNP_NPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"too many ISA I/O ranges (%d > %d)\0A\00", align 1
@ISA_PNP_NIRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"too many ISA IRQs (%d > %d)\0A\00", align 1
@ISA_PNP_NDRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"too many ISA DRQs (%d > %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"pnp_set_config: bogus memory assignment\00", align 1
@PNP_ACTIVATE = common dso_local global i32 0, align 4
@PNP_CONFIG_CONTROL = common dso_local global i32 0, align 4
@PNP_CONFIG_CONTROL_WAIT_FOR_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.isa_config*, i32)* @pnp_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnp_set_config(i8* %0, %struct.isa_config* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.isa_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.isa_config* %1, %struct.isa_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.pnp_set_config_arg*
  %17 = getelementptr inbounds %struct.pnp_set_config_arg, %struct.pnp_set_config_arg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.pnp_set_config_arg*
  %21 = getelementptr inbounds %struct.pnp_set_config_arg, %struct.pnp_set_config_arg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = call i32 (...) @pnp_send_initiation_key()
  %24 = load i32, i32* @PNP_WAKE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pnp_write(i32 %24, i32 %25)
  %27 = load i32, i32* @PNP_SET_LDN, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pnp_write(i32 %27, i32 %28)
  %30 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %31 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ISA_PNP_NMEM, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %37 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ISA_PNP_NMEM, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @ISA_PNP_NMEM, align 4
  %42 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %43 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %35, %3
  %45 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %46 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ISA_PNP_NPORT, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %52 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ISA_PNP_NPORT, align 4
  %55 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @ISA_PNP_NPORT, align 4
  %57 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %58 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %44
  %60 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %61 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ISA_PNP_NIRQ, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %67 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ISA_PNP_NIRQ, align 4
  %70 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @ISA_PNP_NIRQ, align 4
  %72 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %73 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %65, %59
  %75 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %76 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ISA_PNP_NDRQ, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %82 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ISA_PNP_NDRQ, align 4
  %85 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* @ISA_PNP_NDRQ, align 4
  %87 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %88 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %74
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %168, %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %93 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %171

96:                                               ; preds = %90
  %97 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %98 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %97, i32 0, i32 7
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %96
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @PNP_MEM_BASE_HIGH(i32 %107)
  %109 = call i32 @pnp_write(i32 %108, i32 0)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @PNP_MEM_BASE_LOW(i32 %110)
  %112 = call i32 @pnp_write(i32 %111, i32 0)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @PNP_MEM_RANGE_HIGH(i32 %113)
  %115 = call i32 @pnp_write(i32 %114, i32 0)
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @PNP_MEM_RANGE_LOW(i32 %116)
  %118 = call i32 @pnp_write(i32 %117, i32 0)
  br label %167

119:                                              ; preds = %96
  %120 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %121 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %120, i32 0, i32 7
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %10, align 4
  %128 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %129 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %128, i32 0, i32 7
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = and i32 %137, 255
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %119
  %141 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %119
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @PNP_MEM_BASE_HIGH(i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = ashr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = call i32 @pnp_write(i32 %144, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @PNP_MEM_BASE_LOW(i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = ashr i32 %151, 8
  %153 = and i32 %152, 255
  %154 = call i32 @pnp_write(i32 %150, i32 %153)
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @PNP_MEM_RANGE_HIGH(i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = ashr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = call i32 @pnp_write(i32 %156, i32 %159)
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @PNP_MEM_RANGE_LOW(i32 %161)
  %163 = load i32, i32* %11, align 4
  %164 = ashr i32 %163, 8
  %165 = and i32 %164, 255
  %166 = call i32 @pnp_write(i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %142, %106
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %90

171:                                              ; preds = %90
  br label %172

172:                                              ; preds = %189, %171
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @ISA_PNP_NMEM, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @PNP_MEM_BASE_HIGH(i32 %177)
  %179 = call i32 @pnp_write(i32 %178, i32 0)
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @PNP_MEM_BASE_LOW(i32 %180)
  %182 = call i32 @pnp_write(i32 %181, i32 0)
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @PNP_MEM_RANGE_HIGH(i32 %183)
  %185 = call i32 @pnp_write(i32 %184, i32 0)
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @PNP_MEM_RANGE_LOW(i32 %186)
  %188 = call i32 @pnp_write(i32 %187, i32 0)
  br label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %172

192:                                              ; preds = %172
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %238, %192
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %196 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %241

199:                                              ; preds = %193
  %200 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %201 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %200, i32 0, i32 6
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %199
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @PNP_IO_BASE_HIGH(i32 %210)
  %212 = call i32 @pnp_write(i32 %211, i32 0)
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @PNP_IO_BASE_LOW(i32 %213)
  %215 = call i32 @pnp_write(i32 %214, i32 0)
  br label %237

216:                                              ; preds = %199
  %217 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %218 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %217, i32 0, i32 6
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @PNP_IO_BASE_HIGH(i32 %225)
  %227 = load i32, i32* %12, align 4
  %228 = ashr i32 %227, 8
  %229 = and i32 %228, 255
  %230 = call i32 @pnp_write(i32 %226, i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @PNP_IO_BASE_LOW(i32 %231)
  %233 = load i32, i32* %12, align 4
  %234 = ashr i32 %233, 0
  %235 = and i32 %234, 255
  %236 = call i32 @pnp_write(i32 %232, i32 %235)
  br label %237

237:                                              ; preds = %216, %209
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %193

241:                                              ; preds = %193
  br label %242

242:                                              ; preds = %253, %241
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @ISA_PNP_NPORT, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @PNP_IO_BASE_HIGH(i32 %247)
  %249 = call i32 @pnp_write(i32 %248, i32 0)
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @PNP_IO_BASE_LOW(i32 %250)
  %252 = call i32 @pnp_write(i32 %251, i32 0)
  br label %253

253:                                              ; preds = %246
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %242

256:                                              ; preds = %242
  store i32 0, i32* %9, align 4
  br label %257

257:                                              ; preds = %297, %256
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %260 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %300

263:                                              ; preds = %257
  %264 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %265 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %264, i32 0, i32 4
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %263
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @PNP_IRQ_LEVEL(i32 %273)
  %275 = call i32 @pnp_write(i32 %274, i32 0)
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @PNP_IRQ_TYPE(i32 %276)
  %278 = call i32 @pnp_write(i32 %277, i32 2)
  br label %296

279:                                              ; preds = %263
  %280 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %281 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %280, i32 0, i32 4
  %282 = load i64*, i64** %281, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @ffs(i64 %286)
  %288 = sub nsw i32 %287, 1
  store i32 %288, i32* %13, align 4
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @PNP_IRQ_LEVEL(i32 %289)
  %291 = load i32, i32* %13, align 4
  %292 = call i32 @pnp_write(i32 %290, i32 %291)
  %293 = load i32, i32* %9, align 4
  %294 = call i32 @PNP_IRQ_TYPE(i32 %293)
  %295 = call i32 @pnp_write(i32 %294, i32 2)
  br label %296

296:                                              ; preds = %279, %272
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  br label %257

300:                                              ; preds = %257
  br label %301

301:                                              ; preds = %312, %300
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* @ISA_PNP_NIRQ, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @PNP_IRQ_LEVEL(i32 %306)
  %308 = call i32 @pnp_write(i32 %307, i32 0)
  %309 = load i32, i32* %9, align 4
  %310 = call i32 @PNP_IRQ_TYPE(i32 %309)
  %311 = call i32 @pnp_write(i32 %310, i32 2)
  br label %312

312:                                              ; preds = %305
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %9, align 4
  br label %301

315:                                              ; preds = %301
  store i32 0, i32* %9, align 4
  br label %316

316:                                              ; preds = %350, %315
  %317 = load i32, i32* %9, align 4
  %318 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %319 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %353

322:                                              ; preds = %316
  %323 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %324 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %323, i32 0, i32 5
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %322
  %332 = load i32, i32* %9, align 4
  %333 = call i32 @PNP_DMA_CHANNEL(i32 %332)
  %334 = call i32 @pnp_write(i32 %333, i32 4)
  br label %349

335:                                              ; preds = %322
  %336 = load %struct.isa_config*, %struct.isa_config** %5, align 8
  %337 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %336, i32 0, i32 5
  %338 = load i64*, i64** %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @ffs(i64 %342)
  %344 = sub nsw i32 %343, 1
  store i32 %344, i32* %14, align 4
  %345 = load i32, i32* %9, align 4
  %346 = call i32 @PNP_DMA_CHANNEL(i32 %345)
  %347 = load i32, i32* %14, align 4
  %348 = call i32 @pnp_write(i32 %346, i32 %347)
  br label %349

349:                                              ; preds = %335, %331
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %9, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %9, align 4
  br label %316

353:                                              ; preds = %316
  br label %354

354:                                              ; preds = %362, %353
  %355 = load i32, i32* %9, align 4
  %356 = load i32, i32* @ISA_PNP_NDRQ, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %365

358:                                              ; preds = %354
  %359 = load i32, i32* %9, align 4
  %360 = call i32 @PNP_DMA_CHANNEL(i32 %359)
  %361 = call i32 @pnp_write(i32 %360, i32 4)
  br label %362

362:                                              ; preds = %358
  %363 = load i32, i32* %9, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %9, align 4
  br label %354

365:                                              ; preds = %354
  %366 = load i32, i32* @PNP_ACTIVATE, align 4
  %367 = load i32, i32* %6, align 4
  %368 = icmp ne i32 %367, 0
  %369 = zext i1 %368 to i64
  %370 = select i1 %368, i32 1, i32 0
  %371 = call i32 @pnp_write(i32 %366, i32 %370)
  %372 = load i32, i32* @PNP_CONFIG_CONTROL, align 4
  %373 = load i32, i32* @PNP_CONFIG_CONTROL_WAIT_FOR_KEY, align 4
  %374 = call i32 @pnp_write(i32 %372, i32 %373)
  ret void
}

declare dso_local i32 @pnp_send_initiation_key(...) #1

declare dso_local i32 @pnp_write(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @PNP_MEM_BASE_HIGH(i32) #1

declare dso_local i32 @PNP_MEM_BASE_LOW(i32) #1

declare dso_local i32 @PNP_MEM_RANGE_HIGH(i32) #1

declare dso_local i32 @PNP_MEM_RANGE_LOW(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PNP_IO_BASE_HIGH(i32) #1

declare dso_local i32 @PNP_IO_BASE_LOW(i32) #1

declare dso_local i32 @PNP_IRQ_LEVEL(i32) #1

declare dso_local i32 @PNP_IRQ_TYPE(i32) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @PNP_DMA_CHANNEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

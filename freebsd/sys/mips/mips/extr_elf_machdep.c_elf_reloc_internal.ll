; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_elf_machdep.c_elf_reloc_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_elf_machdep.c_elf_reloc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_tmp_reloc = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@elf_reloc_internal.last_ahl = internal global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown reloc type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"kldload: unexpected relocation type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32, i32 (i32, i32, i32, i32*)*)* @elf_reloc_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_reloc_internal(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 (i32, i32, i32, i32*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i32, i32, i32, i32*)*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mips_tmp_reloc*, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (i32, i32, i32, i32*)* %5, i32 (i32, i32, i32, i32*)** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %21, align 8
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %74 [
    i32 137, label %27
    i32 136, label %53
  ]

27:                                               ; preds = %6
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %20, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %14, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ELF_R_TYPE(i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ELF_R_SYM(i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %17, align 4
  switch i32 %45, label %49 [
    i32 133, label %46
  ]

46:                                               ; preds = %27
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  br label %52

49:                                               ; preds = %27
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %77

53:                                               ; preds = %6
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %21, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %14, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ELF_R_TYPE(i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ELF_R_SYM(i32 %72)
  store i32 %73, i32* %18, align 4
  br label %77

74:                                               ; preds = %6
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %53, %52
  %78 = load i32, i32* %17, align 4
  switch i32 %78, label %321 [
    i32 128, label %79
    i32 134, label %80
    i32 135, label %100
    i32 133, label %134
    i32 132, label %154
    i32 129, label %193
    i32 131, label %271
    i32 130, label %296
  ]

79:                                               ; preds = %77
  br label %324

80:                                               ; preds = %77
  %81 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %18, align 4
  %84 = call i32 %81(i32 %82, i32 %83, i32 1, i32* %15)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 -1, i32* %7, align 4
  br label %325

88:                                               ; preds = %80
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %15, align 4
  %98 = load i32*, i32** %14, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %88
  br label %324

100:                                              ; preds = %77
  %101 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 %101(i32 %102, i32 %103, i32 1, i32* %15)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 -1, i32* %7, align 4
  br label %325

108:                                              ; preds = %100
  %109 = load i32, i32* %16, align 4
  %110 = and i32 %109, 67108863
  store i32 %110, i32* %16, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %112 = icmp eq %struct.TYPE_3__* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %16, align 4
  %115 = shl i32 %114, 2
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32*, i32** %14, align 8
  %118 = ptrtoint i32* %117 to i32
  %119 = and i32 %118, -268435456
  %120 = load i32, i32* %16, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %15, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = ashr i32 %124, 2
  store i32 %125, i32* %15, align 4
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, -67108864
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %15, align 4
  %130 = and i32 %129, 67108863
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %324

134:                                              ; preds = %77
  %135 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 %135(i32 %136, i32 %137, i32 1, i32* %15)
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 -1, i32* %7, align 4
  br label %325

142:                                              ; preds = %134
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %15, align 4
  %146 = load i32*, i32** %14, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %15, align 4
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %142
  br label %324

154:                                              ; preds = %77
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %156 = icmp ne %struct.TYPE_3__* %155, null
  br i1 %156, label %157, label %182

157:                                              ; preds = %154
  %158 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %18, align 4
  %161 = call i32 %158(i32 %159, i32 %160, i32 1, i32* %15)
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 -1, i32* %7, align 4
  br label %325

165:                                              ; preds = %157
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %15, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, -65536
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, 32768
  %175 = ashr i64 %174, 16
  %176 = and i64 %175, 65535
  %177 = load i32*, i32** %14, align 8
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = or i64 %179, %176
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  br label %192

182:                                              ; preds = %154
  %183 = load i32, i32* %16, align 4
  %184 = shl i32 %183, 16
  %185 = load i32*, i32** %14, align 8
  %186 = call i32 @mips_tmp_reloc_add(i32 %184, i32* %185)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 -1, i32* %7, align 4
  br label %325

189:                                              ; preds = %182
  %190 = load i32, i32* %16, align 4
  %191 = shl i32 %190, 16
  store i32 %191, i32* @elf_reloc_internal.last_ahl, align 4
  br label %192

192:                                              ; preds = %189, %165
  br label %324

193:                                              ; preds = %77
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %195 = icmp ne %struct.TYPE_3__* %194, null
  br i1 %195, label %196, label %216

196:                                              ; preds = %193
  %197 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %18, align 4
  %200 = call i32 %197(i32 %198, i32 %199, i32 1, i32* %15)
  store i32 %200, i32* %22, align 4
  %201 = load i32, i32* %22, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  store i32 -1, i32* %7, align 4
  br label %325

204:                                              ; preds = %196
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %15, align 4
  %208 = load i32*, i32** %14, align 8
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, -65536
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %15, align 4
  %212 = and i32 %211, 65535
  %213 = load i32*, i32** %14, align 8
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %212
  store i32 %215, i32* %213, align 4
  br label %270

216:                                              ; preds = %193
  %217 = load i32, i32* @elf_reloc_internal.last_ahl, align 4
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %23, align 4
  %220 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %18, align 4
  %223 = call i32 %220(i32 %221, i32 %222, i32 1, i32* %15)
  store i32 %223, i32* %22, align 4
  %224 = load i32, i32* %22, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  store i32 -1, i32* %7, align 4
  br label %325

227:                                              ; preds = %216
  %228 = load i32, i32* %16, align 4
  %229 = and i32 %228, -65536
  store i32 %229, i32* %24, align 4
  %230 = load i32, i32* %23, align 4
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %24, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %24, align 4
  %235 = load i32, i32* %24, align 4
  %236 = load i32*, i32** %14, align 8
  store i32 %235, i32* %236, align 4
  br label %237

237:                                              ; preds = %240, %227
  %238 = call %struct.mips_tmp_reloc* (...) @mips_tmp_reloc_get()
  store %struct.mips_tmp_reloc* %238, %struct.mips_tmp_reloc** %19, align 8
  %239 = icmp ne %struct.mips_tmp_reloc* %238, null
  br i1 %239, label %240, label %269

240:                                              ; preds = %237
  %241 = load %struct.mips_tmp_reloc*, %struct.mips_tmp_reloc** %19, align 8
  %242 = getelementptr inbounds %struct.mips_tmp_reloc, %struct.mips_tmp_reloc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %25, align 4
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %25, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %25, align 4
  %247 = load %struct.mips_tmp_reloc*, %struct.mips_tmp_reloc** %19, align 8
  %248 = getelementptr inbounds %struct.mips_tmp_reloc, %struct.mips_tmp_reloc* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %24, align 4
  %251 = load i32, i32* %24, align 4
  %252 = and i32 %251, -65536
  store i32 %252, i32* %24, align 4
  %253 = load i32, i32* %25, align 4
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %253, %254
  %256 = load i32, i32* %25, align 4
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %256, %257
  %259 = sub nsw i32 %255, %258
  %260 = ashr i32 %259, 16
  %261 = load i32, i32* %24, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %24, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load %struct.mips_tmp_reloc*, %struct.mips_tmp_reloc** %19, align 8
  %265 = getelementptr inbounds %struct.mips_tmp_reloc, %struct.mips_tmp_reloc* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  store i32 %263, i32* %266, align 4
  %267 = load %struct.mips_tmp_reloc*, %struct.mips_tmp_reloc** %19, align 8
  %268 = call i32 @mips_tmp_reloc_free(%struct.mips_tmp_reloc* %267)
  br label %237

269:                                              ; preds = %237
  br label %270

270:                                              ; preds = %269, %204
  br label %324

271:                                              ; preds = %77
  %272 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* %18, align 4
  %275 = call i32 %272(i32 %273, i32 %274, i32 1, i32* %15)
  store i32 %275, i32* %22, align 4
  %276 = load i32, i32* %22, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  store i32 -1, i32* %7, align 4
  br label %325

279:                                              ; preds = %271
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* %15, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %15, align 4
  %283 = load i32*, i32** %14, align 8
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, -65536
  store i32 %285, i32* %283, align 4
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, 2147516416
  %289 = ashr i64 %288, 32
  %290 = and i64 %289, 65535
  %291 = load i32*, i32** %14, align 8
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = or i64 %293, %290
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %291, align 4
  br label %324

296:                                              ; preds = %77
  %297 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* %18, align 4
  %300 = call i32 %297(i32 %298, i32 %299, i32 1, i32* %15)
  store i32 %300, i32* %22, align 4
  %301 = load i32, i32* %22, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  store i32 -1, i32* %7, align 4
  br label %325

304:                                              ; preds = %296
  %305 = load i32, i32* %16, align 4
  %306 = load i32, i32* %15, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %15, align 4
  %308 = load i32*, i32** %14, align 8
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, -65536
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %312, 140739635871744
  %314 = ashr i64 %313, 48
  %315 = and i64 %314, 65535
  %316 = load i32*, i32** %14, align 8
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = or i64 %318, %315
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %316, align 4
  br label %324

321:                                              ; preds = %77
  %322 = load i32, i32* %17, align 4
  %323 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %322)
  store i32 -1, i32* %7, align 4
  br label %325

324:                                              ; preds = %304, %279, %270, %192, %153, %116, %99, %79
  store i32 0, i32* %7, align 4
  br label %325

325:                                              ; preds = %324, %321, %303, %278, %226, %203, %188, %164, %141, %107, %87
  %326 = load i32, i32* %7, align 4
  ret i32 %326
}

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @mips_tmp_reloc_add(i32, i32*) #1

declare dso_local %struct.mips_tmp_reloc* @mips_tmp_reloc_get(...) #1

declare dso_local i32 @mips_tmp_reloc_free(%struct.mips_tmp_reloc*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

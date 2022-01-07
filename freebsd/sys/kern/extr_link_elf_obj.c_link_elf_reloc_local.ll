; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_reloc_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_reloc_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [14 x i8] c"lost a reltab\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"lost base for reltab\00", align 1
@STB_LOCAL = common dso_local global i64 0, align 8
@STT_GNU_IFUNC = common dso_local global i64 0, align 8
@ELF_RELOC_REL = common dso_local global i32 0, align 4
@elf_obj_lookup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"lost a relatab!\00", align 1
@ELF_RELOC_RELA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @link_elf_reloc_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_elf_reloc_local(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = call i32 @link_elf_fix_link_set(%struct.TYPE_14__* %18)
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %134, %2
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %137

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %8, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = icmp eq %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @link_elf_error(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOEXEC, align 4
  store i32 %43, i32* %3, align 4
  br label %256

44:                                               ; preds = %26
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 %54
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %7, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @findbase(%struct.TYPE_14__* %56, i32 %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %44
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @link_elf_error(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ENOEXEC, align 4
  store i32 %74, i32* %3, align 4
  br label %256

75:                                               ; preds = %44
  br label %76

76:                                               ; preds = %130, %75
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = icmp ult %struct.TYPE_16__* %77, %78
  br i1 %79, label %80, label %133

80:                                               ; preds = %76
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ELF_R_SYM(i32 %83)
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %130

91:                                               ; preds = %80
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %95
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %11, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ELF_ST_BIND(i32 %99)
  %101 = load i64, i64* @STB_LOCAL, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %130

104:                                              ; preds = %91
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @ELF_ST_TYPE(i32 %107)
  %109 = load i64, i64* @STT_GNU_IFUNC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @elf_is_ifunc_reloc(i32 %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %111, %104
  %118 = phi i1 [ true, %104 ], [ %116, %111 ]
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* %4, align 4
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %126 = load i32, i32* @ELF_RELOC_REL, align 4
  %127 = load i32, i32* @elf_obj_lookup, align 4
  %128 = call i32 @elf_reloc_local(i32 %123, i64 %124, %struct.TYPE_16__* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %122, %117
  br label %130

130:                                              ; preds = %129, %103, %90
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 1
  store %struct.TYPE_16__* %132, %struct.TYPE_16__** %8, align 8
  br label %76

133:                                              ; preds = %76
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %20

137:                                              ; preds = %20
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %252, %137
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %255

144:                                              ; preds = %138
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  store %struct.TYPE_16__* %152, %struct.TYPE_16__** %10, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %154 = icmp eq %struct.TYPE_16__* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %144
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @link_elf_error(i32 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* @ENOEXEC, align 4
  store i32 %161, i32* %3, align 4
  br label %256

162:                                              ; preds = %144
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i64 %172
  store %struct.TYPE_16__* %173, %struct.TYPE_16__** %9, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @findbase(%struct.TYPE_14__* %174, i32 %182)
  store i64 %183, i64* %12, align 8
  %184 = load i64, i64* %12, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %162
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @link_elf_error(i32 %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %192 = load i32, i32* @ENOEXEC, align 4
  store i32 %192, i32* %3, align 4
  br label %256

193:                                              ; preds = %162
  br label %194

194:                                              ; preds = %248, %193
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %197 = icmp ult %struct.TYPE_16__* %195, %196
  br i1 %197, label %198, label %251

198:                                              ; preds = %194
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @ELF_R_SYM(i32 %201)
  store i64 %202, i64* %14, align 8
  %203 = load i64, i64* %14, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp sge i64 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  br label %248

209:                                              ; preds = %198
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = load i64, i64* %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i64 %213
  store %struct.TYPE_15__* %214, %struct.TYPE_15__** %11, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @ELF_ST_BIND(i32 %217)
  %219 = load i64, i64* @STB_LOCAL, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %209
  br label %248

222:                                              ; preds = %209
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @ELF_ST_TYPE(i32 %225)
  %227 = load i64, i64* @STT_GNU_IFUNC, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %235, label %229

229:                                              ; preds = %222
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @elf_is_ifunc_reloc(i32 %232)
  %234 = icmp ne i64 %233, 0
  br label %235

235:                                              ; preds = %229, %222
  %236 = phi i1 [ true, %222 ], [ %234, %229 ]
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* %5, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load i32, i32* %4, align 4
  %242 = load i64, i64* %12, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %244 = load i32, i32* @ELF_RELOC_RELA, align 4
  %245 = load i32, i32* @elf_obj_lookup, align 4
  %246 = call i32 @elf_reloc_local(i32 %241, i64 %242, %struct.TYPE_16__* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %240, %235
  br label %248

248:                                              ; preds = %247, %221, %208
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 1
  store %struct.TYPE_16__* %250, %struct.TYPE_16__** %10, align 8
  br label %194

251:                                              ; preds = %194
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %13, align 4
  br label %138

255:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %256

256:                                              ; preds = %255, %186, %155, %68, %37
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local i32 @link_elf_fix_link_set(%struct.TYPE_14__*) #1

declare dso_local i32 @link_elf_error(i32, i8*) #1

declare dso_local i64 @findbase(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ELF_R_SYM(i32) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i64 @elf_is_ifunc_reloc(i32) #1

declare dso_local i32 @elf_reloc_local(i32, i64, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kldxref/extr_ef.c_ef_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_file = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__**, %struct.TYPE_13__*, i32, %struct.elf_file*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64*, i64, i64, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ef_file_ops = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@EI_CLASS = common dso_local global i64 0, align 8
@ELF_TARG_CLASS = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@ELF_TARG_DATA = common dso_local global i64 0, align 8
@EI_VERSION = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i64 0, align 8
@ELF_TARG_MACH = common dso_local global i64 0, align 8
@MAXSEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Skipping %s: not dynamically-linked\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: too many segments\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ef_read_entry failed\0A\00", align 1
@ET_DYN = common dso_local global i64 0, align 8
@EFT_KLD = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i64 0, align 8
@EFT_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef_open(i8* %0, %struct.elf_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.elf_file* %1, %struct.elf_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %258

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %4, align 4
  br label %258

29:                                               ; preds = %22
  %30 = call %struct.TYPE_12__* @malloc(i32 64)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %8, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @close(i32 %34)
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %4, align 4
  br label %258

37:                                               ; preds = %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = load %struct.elf_file*, %struct.elf_file** %6, align 8
  %40 = getelementptr inbounds %struct.elf_file, %struct.elf_file* %39, i32 0, i32 1
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %40, align 8
  %41 = load %struct.elf_file*, %struct.elf_file** %6, align 8
  %42 = getelementptr inbounds %struct.elf_file, %struct.elf_file* %41, i32 0, i32 0
  store i32* @ef_file_ops, i32** %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = call i32 @bzero(%struct.TYPE_12__* %43, i32 64)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strdup(i8* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = load %struct.elf_file*, %struct.elf_file** %6, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 8
  store %struct.elf_file* %55, %struct.elf_file** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 7
  %60 = bitcast i32* %59 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %9, align 8
  br label %61

61:                                               ; preds = %37
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = call i32 @read(i32 %62, %struct.TYPE_14__* %63, i32 48)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* @EFTYPE, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 48
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %250

70:                                               ; preds = %61
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = call i32 @IS_ELF(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %250

75:                                               ; preds = %70
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @EI_CLASS, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ELF_TARG_CLASS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %120, label %84

84:                                               ; preds = %75
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @EI_DATA, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ELF_TARG_DATA, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %120, label %93

93:                                               ; preds = %84
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @EI_VERSION, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @EV_CURRENT, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %120, label %102

102:                                              ; preds = %93
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @EV_CURRENT, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ELF_TARG_MACH, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp ne i64 %118, 12
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %108, %102, %93, %84, %75
  br label %250

121:                                              ; preds = %114
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 12
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 6
  %135 = bitcast %struct.TYPE_13__** %134 to i8**
  %136 = call i64 @ef_read_entry(%struct.TYPE_12__* %128, i32 %131, i32 %132, i8** %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %121
  br label %250

139:                                              ; preds = %121
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %15, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %147
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %17, align 8
  store i32 0, i32* %14, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  br label %149

149:                                              ; preds = %181, %139
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %152 = icmp ult %struct.TYPE_13__* %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %158 = call i32 @ef_print_phdr(%struct.TYPE_13__* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  switch i32 %162, label %181 [
    i32 129, label %163
    i32 128, label %178
    i32 130, label %179
  ]

163:                                              ; preds = %159
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @MAXSEGS, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %171, i64 %173
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %174, align 8
  br label %175

175:                                              ; preds = %167, %163
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %181

178:                                              ; preds = %159
  br label %181

179:                                              ; preds = %159
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %16, align 8
  br label %181

181:                                              ; preds = %159, %179, %178, %175
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 1
  store %struct.TYPE_13__* %183, %struct.TYPE_13__** %15, align 8
  br label %149

184:                                              ; preds = %149
  %185 = load i32, i32* %7, align 4
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %184
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %191 = icmp eq %struct.TYPE_13__* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i8*, i8** %5, align 8
  %194 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %193)
  br label %250

195:                                              ; preds = %189
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* @MAXSEGS, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i8*, i8** %5, align 8
  %201 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %200)
  br label %250

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %14, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  %216 = bitcast i32* %215 to i8**
  %217 = call i64 @ef_read_entry(%struct.TYPE_12__* %207, i32 %210, i32 %213, i8** %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %203
  %220 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %250

221:                                              ; preds = %203
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %223 = call i32 @ef_parse_dynamic(%struct.TYPE_12__* %222)
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %250

227:                                              ; preds = %221
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @ET_DYN, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load i32, i32* @EFT_KLD, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 4
  store i32 0, i32* %11, align 4
  br label %249

237:                                              ; preds = %227
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @ET_EXEC, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %237
  %244 = load i32, i32* @EFT_KERNEL, align 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  store i32 0, i32* %11, align 4
  br label %248

247:                                              ; preds = %237
  br label %250

248:                                              ; preds = %243
  br label %249

249:                                              ; preds = %248, %233
  br label %250

250:                                              ; preds = %249, %247, %226, %219, %199, %192, %138, %120, %74, %69
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %255 = call i32 @ef_close(%struct.TYPE_12__* %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %256, %33, %27, %20
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @read(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @IS_ELF(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i64 @ef_read_entry(%struct.TYPE_12__*, i32, i32, i8**) #1

declare dso_local i32 @ef_print_phdr(%struct.TYPE_13__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @ef_parse_dynamic(%struct.TYPE_12__*) #1

declare dso_local i32 @ef_close(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_plan_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_plan_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@ok_to_create_file = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"(Creating file %s...)\0A\00", align 1
@check_only = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"can't find %s\0A\00", align 1
@filemode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s is not a normal file--can't patch\0A\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"block too large to mmap\0A\00", align 1
@i_size = common dso_local global i64 0, align 8
@out_of_mem = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"can't open file %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@i_womp = common dso_local global i8* null, align 8
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@MADV_SEQUENTIAL = common dso_local global i32 0, align 4
@i_ptr = common dso_local global i8** null, align 8
@last_line_missing_eol = common dso_local global i32 0, align 4
@empty_line = common dso_local global i8* null, align 8
@input_lines = common dso_local global i64 0, align 8
@revision = common dso_local global i8* null, align 8
@force = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [74 x i8] c"Warning: this file doesn't appear to be the %s version--patching anyway.\0A\00", align 1
@batch = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [58 x i8] c"this file doesn't appear to be the %s version--aborting.\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"This file doesn't appear to be the %s version--patch anyway? [n] \00", align 1
@buf = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"aborted\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Good.  This file appears to be the %s version.\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @plan_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plan_a(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %262

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @stat(i8* %22, %struct.stat* %8)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i64, i64* @ok_to_create_file, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i64, i64* @verbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* @check_only, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %262

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @makedirs(i8* %40, i32 1)
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @creat(i8* %42, i32 438)
  %44 = call i32 @close(i32 %43)
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @stat(i8* %45, %struct.stat* %8)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %26, %21
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* @filemode, align 4
  %56 = load i32, i32* @filemode, align 4
  %57 = call i32 @S_ISREG(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SIZE_MAX, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %262

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* @i_size, align 8
  %72 = load i32, i32* @out_of_mem, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (...) @set_hunkmax()
  store i32 0, i32* @out_of_mem, align 4
  store i32 0, i32* %2, align 4
  br label %262

76:                                               ; preds = %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i32, i32* @O_RDONLY, align 4
  %79 = call i32 @open(i8* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @pfatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i64, i64* @i_size, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i64, i64* @i_size, align 8
  %89 = load i32, i32* @PROT_READ, align 4
  %90 = load i32, i32* @MAP_PRIVATE, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i8* @mmap(i32* null, i64 %88, i32 %89, i32 %90, i32 %91, i32 0)
  store i8* %92, i8** @i_womp, align 8
  %93 = load i8*, i8** @i_womp, align 8
  %94 = load i8*, i8** @MAP_FAILED, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* null, i8** @i_womp, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @close(i32 %98)
  store i32 0, i32* %2, align 4
  br label %262

100:                                              ; preds = %87
  br label %102

101:                                              ; preds = %84
  store i8* null, i8** @i_womp, align 8
  br label %102

102:                                              ; preds = %101, %100
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load i64, i64* @i_size, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** @i_womp, align 8
  %109 = load i64, i64* @i_size, align 8
  %110 = load i32, i32* @MADV_SEQUENTIAL, align 4
  %111 = call i32 @madvise(i8* %108, i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i64, i64* @i_size, align 8
  %114 = udiv i64 %113, 25
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp ult i64 %115, 100
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i64 100, i64* %12, align 8
  br label %118

118:                                              ; preds = %117, %112
  %119 = call i32 @reallocate_lines(i64* %12)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %262

122:                                              ; preds = %118
  store i64 1, i64* %11, align 8
  %123 = load i8*, i8** @i_womp, align 8
  %124 = load i8**, i8*** @i_ptr, align 8
  %125 = load i64, i64* %11, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  store i8* %123, i8** %126, align 8
  %127 = load i8*, i8** @i_womp, align 8
  store i8* %127, i8** %7, align 8
  store i64 0, i64* %10, align 8
  br label %128

128:                                              ; preds = %154, %122
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @i_size, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = load i8*, i8** %7, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 10
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = call i32 @reallocate_lines(i64* %12)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %262

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %137
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8**, i8*** @i_ptr, align 8
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %11, align 8
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* %148, i8** %152, align 8
  br label %153

153:                                              ; preds = %146, %132
  br label %154

154:                                              ; preds = %153
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %7, align 8
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  br label %128

159:                                              ; preds = %128
  %160 = load i64, i64* @i_size, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %212

162:                                              ; preds = %159
  %163 = load i8*, i8** @i_womp, align 8
  %164 = load i64, i64* @i_size, align 8
  %165 = sub i64 %164, 1
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 10
  br i1 %169, label %170, label %212

170:                                              ; preds = %162
  store i32 1, i32* @last_line_missing_eol, align 4
  %171 = load i8*, i8** %7, align 8
  %172 = load i8**, i8*** @i_ptr, align 8
  %173 = load i64, i64* %11, align 8
  %174 = getelementptr inbounds i8*, i8** %172, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = ptrtoint i8* %171 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i8* @malloc(i32 %181)
  store i8* %182, i8** %6, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %170
  %186 = load i8**, i8*** @i_ptr, align 8
  %187 = call i32 @free(i8** %186)
  store i8** null, i8*** @i_ptr, align 8
  %188 = load i8*, i8** @i_womp, align 8
  %189 = load i64, i64* @i_size, align 8
  %190 = call i32 @munmap(i8* %188, i64 %189)
  store i8* null, i8** @i_womp, align 8
  store i32 0, i32* %2, align 4
  br label %262

191:                                              ; preds = %170
  %192 = load i8*, i8** %6, align 8
  %193 = load i8**, i8*** @i_ptr, align 8
  %194 = load i64, i64* %11, align 8
  %195 = getelementptr inbounds i8*, i8** %193, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @memcpy(i8* %192, i8* %196, i32 %197)
  %199 = load i8*, i8** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  store i8 10, i8* %202, align 1
  %203 = load i8*, i8** %6, align 8
  %204 = load i8**, i8*** @i_ptr, align 8
  %205 = load i64, i64* %11, align 8
  %206 = getelementptr inbounds i8*, i8** %204, i64 %205
  store i8* %203, i8** %206, align 8
  %207 = load i8*, i8** @empty_line, align 8
  %208 = load i8**, i8*** @i_ptr, align 8
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %11, align 8
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  store i8* %207, i8** %211, align 8
  br label %213

212:                                              ; preds = %162, %159
  store i32 0, i32* @last_line_missing_eol, align 4
  br label %213

213:                                              ; preds = %212, %191
  %214 = load i64, i64* %11, align 8
  %215 = sub i64 %214, 1
  store i64 %215, i64* @input_lines, align 8
  %216 = load i8*, i8** @revision, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %261

218:                                              ; preds = %213
  %219 = load i8*, i8** @i_womp, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = load i8*, i8** @i_womp, align 8
  %223 = call i32 @rev_in_string(i8* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %253, label %225

225:                                              ; preds = %221, %218
  %226 = load i64, i64* @force, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i64, i64* @verbose, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i8*, i8** @revision, align 8
  %233 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i8* %232)
  br label %234

234:                                              ; preds = %231, %228
  br label %252

235:                                              ; preds = %225
  %236 = load i64, i64* @batch, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i8*, i8** @revision, align 8
  %240 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i8* %239)
  br label %251

241:                                              ; preds = %235
  %242 = load i8*, i8** @revision, align 8
  %243 = call i32 @ask(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i8* %242)
  %244 = load i8*, i8** @buf, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 121
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %241
  br label %251

251:                                              ; preds = %250, %238
  br label %252

252:                                              ; preds = %251, %234
  br label %260

253:                                              ; preds = %221
  %254 = load i64, i64* @verbose, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i8*, i8** @revision, align 8
  %258 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %256, %253
  br label %260

260:                                              ; preds = %259, %252
  br label %261

261:                                              ; preds = %260, %213
  store i32 1, i32* %2, align 4
  br label %262

262:                                              ; preds = %261, %185, %144, %121, %96, %74, %67, %38, %20
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @say(i8*, ...) #1

declare dso_local i32 @makedirs(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @creat(i8*, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @set_hunkmax(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pfatal(i8*, i8*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @madvise(i8*, i64, i32) #1

declare dso_local i32 @reallocate_lines(i64*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @rev_in_string(i8*) #1

declare dso_local i32 @ask(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

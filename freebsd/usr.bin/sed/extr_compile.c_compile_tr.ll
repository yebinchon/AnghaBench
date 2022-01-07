; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_tr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_tr = type { i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"%lu: %s: transform pattern can not be delimited by newline or backslash\00", align 1
@linenum = common dso_local global i32 0, align 4
@fname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%lu: %s: unterminated transform source string\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%lu: %s: unterminated transform target string\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%lu: %s: transform strings are not the same length\00", align 1
@MB_CUR_MAX = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@WEOF = common dso_local global i64 0, align 8
@MB_LEN_MAX = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.s_tr**)* @compile_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compile_tr(i8* %0, %struct.s_tr** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.s_tr**, align 8
  %5 = alloca %struct.s_tr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.s_tr** %1, %struct.s_tr*** %4, align 8
  %18 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = call %struct.s_tr* @malloc(i32 24)
  store %struct.s_tr* %27, %struct.s_tr** %5, align 8
  %28 = load %struct.s_tr**, %struct.s_tr*** %4, align 8
  store %struct.s_tr* %27, %struct.s_tr** %28, align 8
  %29 = icmp eq %struct.s_tr* %27, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @err(i32 1, i32* null)
  br label %32

32:                                               ; preds = %30, %2
  %33 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %34 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %33, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %34, align 8
  %35 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %36 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %32
  %47 = load i32, i32* @linenum, align 4
  %48 = load i32, i32* @fname, align 4
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i8*, i8** %3, align 8
  %52 = call i8* @compile_delimited(i8* %51, i8* %22, i32 1)
  store i8* %52, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @linenum, align 4
  %57 = load i32, i32* @fname, align 4
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  %62 = call i8* @compile_delimited(i8* %61, i8* %26, i32 1)
  store i8* %62, i8** %3, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @linenum, align 4
  %67 = load i32, i32* @fname, align 4
  %68 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = call i32 (...) @EATSPACE()
  store i8* %22, i8** %7, align 8
  %71 = call i64 @mbsrtowcs(i32* null, i8** %7, i32 0, i32* null)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp eq i64 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @err(i32 1, i32* null)
  br label %76

76:                                               ; preds = %74, %69
  store i8* %26, i8** %8, align 8
  %77 = call i64 @mbsrtowcs(i32* null, i8** %8, i32 0, i32* null)
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @err(i32 1, i32* null)
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @linenum, align 4
  %88 = load i32, i32* @fname, align 4
  %89 = call i32 @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @MB_CUR_MAX, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %131

93:                                               ; preds = %90
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %107, %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @UCHAR_MAX, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = trunc i32 %99 to i8
  %101 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %102 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %100, i8* %106, align 1
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %94

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %125, %110
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %119 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8 %117, i8* %124, align 1
  br label %125

125:                                              ; preds = %115
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  br label %111

130:                                              ; preds = %111
  br label %282

131:                                              ; preds = %90
  %132 = call i32 @memset(i32* %16, i32 0, i32 4)
  %133 = call i32 @memset(i32* %17, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %155, %131
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @UCHAR_MAX, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @btowc(i32 %139)
  %141 = load i64, i64* @WEOF, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  br label %146

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ]
  %148 = trunc i32 %147 to i8
  %149 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %150 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 %148, i8* %154, align 1
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %134

158:                                              ; preds = %134
  br label %159

159:                                              ; preds = %274, %158
  %160 = load i8*, i8** %7, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %281

164:                                              ; preds = %159
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* @MB_LEN_MAX, align 4
  %167 = call i64 @mbrlen(i8* %165, i32 %166, i32* %16)
  store i64 %167, i64* %12, align 8
  %168 = load i64, i64* %12, align 8
  %169 = icmp eq i64 %168, -1
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = load i64, i64* %12, align 8
  %172 = icmp eq i64 %171, -2
  br i1 %172, label %173, label %176

173:                                              ; preds = %170, %164
  %174 = load i32, i32* @EILSEQ, align 4
  %175 = call i32 @errc(i32 1, i32 %174, i32* null)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* @MB_LEN_MAX, align 4
  %179 = call i64 @mbrlen(i8* %177, i32 %178, i32* %17)
  store i64 %179, i64* %14, align 8
  %180 = load i64, i64* %14, align 8
  %181 = icmp eq i64 %180, -1
  br i1 %181, label %185, label %182

182:                                              ; preds = %176
  %183 = load i64, i64* %14, align 8
  %184 = icmp eq i64 %183, -2
  br i1 %184, label %185, label %188

185:                                              ; preds = %182, %176
  %186 = load i32, i32* @EILSEQ, align 4
  %187 = call i32 @errc(i32 1, i32 %186, i32* null)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i64, i64* %12, align 8
  %190 = icmp eq i64 %189, 1
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load i64, i64* %14, align 8
  %193 = icmp eq i64 %192, 1
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load i8*, i8** %8, align 8
  %196 = load i8, i8* %195, align 1
  %197 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %198 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i8*, i8** %7, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  store i8 %196, i8* %203, align 1
  br label %274

204:                                              ; preds = %191, %188
  %205 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %206 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i8*, i8** %7, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  store i8 0, i8* %211, align 1
  %212 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %213 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %212, i32 0, i32 2
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %216 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = mul i64 %219, 24
  %221 = trunc i64 %220 to i32
  %222 = call %struct.TYPE_3__* @realloc(%struct.TYPE_3__* %214, i32 %221)
  %223 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %224 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %223, i32 0, i32 2
  store %struct.TYPE_3__* %222, %struct.TYPE_3__** %224, align 8
  %225 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %226 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %225, i32 0, i32 2
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = icmp eq %struct.TYPE_3__* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %204
  %230 = call i32 @err(i32 1, i32* null)
  br label %231

231:                                              ; preds = %229, %204
  %232 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %233 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  store i32 %234, i32* %6, align 4
  %236 = load i64, i64* %12, align 8
  %237 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %238 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %237, i32 0, i32 2
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  store i64 %236, i64* %243, align 8
  %244 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %245 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %244, i32 0, i32 2
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i8*, i8** %7, align 8
  %253 = load i64, i64* %12, align 8
  %254 = call i32 @memcpy(i32 %251, i8* %252, i64 %253)
  %255 = load i64, i64* %14, align 8
  %256 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %257 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %256, i32 0, i32 2
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  store i64 %255, i64* %262, align 8
  %263 = load %struct.s_tr*, %struct.s_tr** %5, align 8
  %264 = getelementptr inbounds %struct.s_tr, %struct.s_tr* %263, i32 0, i32 2
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i8*, i8** %8, align 8
  %272 = load i64, i64* %14, align 8
  %273 = call i32 @memcpy(i32 %270, i8* %271, i64 %272)
  br label %274

274:                                              ; preds = %231, %194
  %275 = load i64, i64* %12, align 8
  %276 = load i8*, i8** %7, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 %275
  store i8* %277, i8** %7, align 8
  %278 = load i64, i64* %14, align 8
  %279 = load i8*, i8** %8, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 %278
  store i8* %280, i8** %8, align 8
  br label %159

281:                                              ; preds = %159
  br label %282

282:                                              ; preds = %281, %130
  %283 = load i8*, i8** %3, align 8
  %284 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %284)
  ret i8* %283
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.s_tr* @malloc(i32) #2

declare dso_local i32 @err(i32, i32*) #2

declare dso_local i32 @errx(i32, i8*, i32, i32) #2

declare dso_local i8* @compile_delimited(i8*, i8*, i32) #2

declare dso_local i32 @EATSPACE(...) #2

declare dso_local i64 @mbsrtowcs(i32*, i8**, i32, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @btowc(i32) #2

declare dso_local i64 @mbrlen(i8*, i32, i32*) #2

declare dso_local i32 @errc(i32, i32, i32*) #2

declare dso_local %struct.TYPE_3__* @realloc(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

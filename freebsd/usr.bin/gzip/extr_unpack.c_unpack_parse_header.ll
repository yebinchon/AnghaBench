; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unpack.c_unpack_parse_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unpack.c_unpack_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i8*, i32, i32*, i32*, i32**, i32*, i32*, i32* }

@PACK_HEADER_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"prelen too long\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error reading pack header\00", align 1
@HTREE_MAXLEVEL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Huffman tree has insane levels\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Can not fdopen() input stream\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Can not fdopen() output stream\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"File appears to be truncated\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Bad symbol table\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Symbol table truncated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i64, i32*, %struct.TYPE_4__*)* @unpack_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_parse_header(i32 %0, i32 %1, i8* %2, i64 %3, i32* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %12, align 8
  %19 = load i32, i32* @PACK_HEADER_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ugt i64 %23, %20
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 @maybe_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %6
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @memcpy(i8* %22, i8* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %22, i64 %36
  %38 = load i32, i32* @PACK_HEADER_LENGTH, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %39, %40
  %42 = call i64 @read(i32 %35, i8* %37, i64 %41)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 @maybe_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @infile_newdata(i64 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @PACK_HEADER_LENGTH, align 4
  %52 = call i32 @accepted_bytes(i32* %50, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  store i32 2, i32* %16, align 4
  br label %55

55:                                               ; preds = %72, %47
  %56 = load i32, i32* %16, align 4
  %57 = icmp sle i32 %56, 5
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 8
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %22, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %55

75:                                               ; preds = %55
  %76 = getelementptr inbounds i8, i8* %22, i64 6
  %77 = load i8, i8* %76, align 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i8 %77, i8* %79, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8, i8* %81, align 4
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* @HTREE_MAXLEVEL, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %75
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8, i8* %89, align 4
  %91 = zext i8 %90 to i32
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %75
  %94 = call i32 @maybe_errx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %87
  %96 = load i32, i32* %7, align 4
  %97 = call i8* @fdopen(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 5
  store i32* %98, i32** %100, align 8
  %101 = icmp eq i32* %98, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 @maybe_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95
  %105 = load i32, i32* %8, align 4
  %106 = call i8* @fdopen(i32 %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 9
  store i32* %107, i32** %109, align 8
  %110 = icmp eq i32* %107, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @maybe_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %104
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8, i8* %115, align 4
  %117 = zext i8 %116 to i32
  %118 = call i8* @calloc(i32 %117, i32 4)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 8
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i8, i8* %123, align 4
  %125 = zext i8 %124 to i32
  %126 = call i8* @calloc(i32 %125, i32 1)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i8, i8* %130, align 4
  %132 = zext i8 %131 to i32
  %133 = call i8* @calloc(i32 %132, i32 8)
  %134 = bitcast i8* %133 to i32**
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 6
  store i32** %134, i32*** %136, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %151, label %141

141:                                              ; preds = %113
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  %149 = load i32**, i32*** %148, align 8
  %150 = icmp eq i32** %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %146, %141, %113
  %152 = call i32 @maybe_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %146
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i8, i8* %155, align 4
  %157 = add i8 %156, -1
  store i8 %157, i8* %155, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  store i32 1, i32* %159, align 8
  store i32 0, i32* %16, align 4
  br label %160

160:                                              ; preds = %197, %153
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i8, i8* %163, align 4
  %165 = zext i8 %164 to i32
  %166 = icmp sle i32 %161, %165
  br i1 %166, label %167, label %200

167:                                              ; preds = %160
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @fgetc(i32* %170)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* @EOF, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = call i32 @maybe_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %167
  %177 = load i32, i32* %18, align 4
  %178 = trunc i32 %177 to i8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 %178, i8* %184, align 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %176
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %16, align 4
  br label %160

200:                                              ; preds = %160
  %201 = load i32*, i32** %11, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i8, i8* %203, align 4
  %205 = zext i8 %204 to i32
  %206 = call i32 @accepted_bytes(i32* %201, i32 %205)
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = icmp sgt i32 %209, 256
  br i1 %210, label %211, label %213

211:                                              ; preds = %200
  %212 = call i32 @maybe_errx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %200
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i8, i8* %215, align 4
  %217 = zext i8 %216 to i64
  %218 = call i32 @infile_newdata(i64 %217)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i8* @calloc(i32 1, i32 %221)
  %223 = bitcast i8* %222 to i32*
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 7
  store i32* %223, i32** %225, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 4
  store i32* %223, i32** %227, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 7
  %230 = load i32*, i32** %229, align 8
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %213
  %233 = call i32 @maybe_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %213
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i8, i8* %239, align 4
  %241 = zext i8 %240 to i64
  %242 = getelementptr inbounds i8, i8* %237, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = add i8 %243, 1
  store i8 %244, i8* %242, align 1
  store i32 0, i32* %16, align 4
  br label %245

245:                                              ; preds = %313, %234
  %246 = load i32, i32* %16, align 4
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i8, i8* %248, align 4
  %250 = zext i8 %249 to i32
  %251 = icmp sle i32 %246, %250
  br i1 %251, label %252, label %316

252:                                              ; preds = %245
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 6
  %258 = load i32**, i32*** %257, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  store i32* %255, i32** %261, align 8
  store i32 0, i32* %17, align 4
  br label %262

262:                                              ; preds = %290, %252
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = load i32, i32* %16, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp slt i32 %263, %271
  br i1 %272, label %273, label %293

273:                                              ; preds = %262
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @fgetc(i32* %276)
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* @EOF, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %273
  %281 = call i32 @maybe_errx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %273
  %283 = load i32, i32* %18, align 4
  %284 = trunc i32 %283 to i8
  %285 = sext i8 %284 to i32
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %287, align 8
  store i32 %285, i32* %288, align 4
  br label %290

290:                                              ; preds = %282
  %291 = load i32, i32* %17, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %17, align 4
  br label %262

293:                                              ; preds = %262
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 2
  %296 = load i8*, i8** %295, align 8
  %297 = load i32, i32* %16, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i64
  %302 = call i32 @infile_newdata(i64 %301)
  %303 = load i32*, i32** %11, align 8
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = load i32, i32* %16, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = call i32 @accepted_bytes(i32* %303, i32 %311)
  br label %313

313:                                              ; preds = %293
  %314 = load i32, i32* %16, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %16, align 4
  br label %245

316:                                              ; preds = %245
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 1
  %322 = load i8, i8* %321, align 4
  %323 = zext i8 %322 to i64
  %324 = getelementptr inbounds i8, i8* %319, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = add i8 %325, 1
  store i8 %326, i8* %324, align 1
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %328 = call i32 @unpackd_fill_inodesin(%struct.TYPE_4__* %327, i32 0)
  %329 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %329)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @maybe_err(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @read(i32, i8*, i64) #2

declare dso_local i32 @infile_newdata(i64) #2

declare dso_local i32 @accepted_bytes(i32*, i32) #2

declare dso_local i32 @maybe_errx(i8*) #2

declare dso_local i8* @fdopen(i32, i8*) #2

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @fgetc(i32*) #2

declare dso_local i32 @unpackd_fill_inodesin(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

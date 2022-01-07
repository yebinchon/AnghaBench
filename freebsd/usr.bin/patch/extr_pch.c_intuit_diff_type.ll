; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_intuit_diff_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_intuit_diff_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_name = type { i8*, i64 }

@MAX_FILE = common dso_local global i32 0, align 4
@ok_to_create_file = common dso_local global i32 0, align 4
@pfp = common dso_local global i32 0, align 4
@p_base = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@p_bline = common dso_local global i8* null, align 8
@p_input_line = common dso_local global i8* null, align 8
@p_start = common dso_local global i64 0, align 8
@p_sline = common dso_local global i32 0, align 4
@ED_DIFF = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@p_indent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"*** \00", align 1
@OLD_FILE = common dso_local global i64 0, align 8
@strippath = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"--- \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--- a/\00", align 1
@NEW_FILE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"+++ \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"+++ b/\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Index:\00", align 1
@INDEX_FILE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"Prereq:\00", align 1
@revision = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"diff --git a/\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"==== \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@diff_type = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@UNI_DIFF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"0,0\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"********\00", align 1
@CONTEXT_DIFF = common dso_local global i32 0, align 4
@NEW_CONTEXT_DIFF = common dso_local global i32 0, align 4
@NORMAL_DIFF = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@source_file = common dso_local global i8* null, align 8
@_PATH_DEVNULL = common dso_local global i8* null, align 8
@filearg = common dso_local global i8** null, align 8
@posix = common dso_local global i64 0, align 8
@bestguess = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intuit_diff_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intuit_diff_type() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.file_name, align 8
  store i64 0, i64* %1, align 8
  store i64 -1, i64* %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @MAX_FILE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca %struct.file_name, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %23 = mul nuw i64 16, %20
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(%struct.file_name* %22, i32 0, i32 %24)
  store i32 0, i32* @ok_to_create_file, align 4
  %26 = load i32, i32* @pfp, align 4
  %27 = load i32, i32* @p_base, align 4
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @fseeko(i32 %26, i32 %27, i32 %28)
  %30 = load i8*, i8** @p_bline, align 8
  %31 = getelementptr i8, i8* %30, i64 -1
  store i8* %31, i8** @p_input_line, align 8
  br label %32

32:                                               ; preds = %431, %0
  %33 = load i64, i64* %1, align 8
  store i64 %33, i64* %2, align 8
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @pfp, align 4
  %37 = call i64 @ftello(i32 %36)
  store i64 %37, i64* %1, align 8
  store i32 0, i32* %11, align 4
  %38 = load i8*, i8** @p_input_line, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** @p_input_line, align 8
  %40 = call i64 @pgets(i32 0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i64, i64* %3, align 8
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* %3, align 8
  store i64 %46, i64* @p_start, align 8
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* @p_sline, align 4
  %48 = load i32, i32* @ED_DIFF, align 4
  store i32 %48, i32* %12, align 4
  br label %432

49:                                               ; preds = %42
  %50 = load i64, i64* %1, align 8
  store i64 %50, i64* @p_start, align 8
  %51 = load i8*, i8** @p_input_line, align 8
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* @p_sline, align 4
  store i32 0, i32* %12, align 4
  br label %432

53:                                               ; preds = %32
  %54 = load i8*, i8** @buf, align 8
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %87, %53
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 88
  br label %70

70:                                               ; preds = %65, %60, %55
  %71 = phi i1 [ true, %60 ], [ true, %55 ], [ %69, %65 ]
  br i1 %71, label %72, label %90

72:                                               ; preds = %70
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 9
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = srem i32 %78, 8
  %80 = sub nsw i32 8, %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  br label %55

90:                                               ; preds = %70
  %91 = load i8*, i8** %9, align 8
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %105, %90
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @isdigit(i8 zeroext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 44
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i1 [ true, %92 ], [ %101, %97 ]
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  br label %92

108:                                              ; preds = %102
  %109 = load i8*, i8** %9, align 8
  %110 = load i8, i8* %109, align 1
  %111 = call i64 @isdigit(i8 zeroext %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 100
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 99
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 97
  br label %128

128:                                              ; preds = %123, %118, %113
  %129 = phi i1 [ true, %118 ], [ true, %113 ], [ %127, %123 ]
  br label %130

130:                                              ; preds = %128, %108
  %131 = phi i1 [ false, %108 ], [ %129, %128 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %6, align 4
  %133 = load i64, i64* %3, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i64, i64* %1, align 8
  store i64 %139, i64* %3, align 8
  %140 = load i8*, i8** @p_input_line, align 8
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* @p_indent, align 4
  br label %143

143:                                              ; preds = %138, %135, %130
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @strnEQ(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  %153 = load i64, i64* @OLD_FILE, align 8
  %154 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %153
  %155 = getelementptr inbounds %struct.file_name, %struct.file_name* %154, i32 0, i32 1
  %156 = load i32, i32* @strippath, align 4
  %157 = call i8* @fetchname(i8* %152, i64* %155, i32 %156)
  %158 = load i64, i64* @OLD_FILE, align 8
  %159 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %158
  %160 = getelementptr inbounds %struct.file_name, %struct.file_name* %159, i32 0, i32 0
  store i8* %157, i8** %160, align 16
  br label %309

161:                                              ; preds = %146, %143
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @strnEQ(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %161
  store i64 4, i64* %16, align 8
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i32, i32* @strippath, align 4
  %170 = icmp eq i32 %169, 957
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @strnEQ(i8* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i64 6, i64* %16, align 8
  br label %176

176:                                              ; preds = %175, %171, %168, %165
  %177 = load i8*, i8** %9, align 8
  %178 = load i64, i64* %16, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  %180 = load i64, i64* @NEW_FILE, align 8
  %181 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %180
  %182 = getelementptr inbounds %struct.file_name, %struct.file_name* %181, i32 0, i32 1
  %183 = load i32, i32* @strippath, align 4
  %184 = call i8* @fetchname(i8* %179, i64* %182, i32 %183)
  %185 = load i64, i64* @NEW_FILE, align 8
  %186 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %185
  %187 = getelementptr inbounds %struct.file_name, %struct.file_name* %186, i32 0, i32 0
  store i8* %184, i8** %187, align 16
  br label %308

188:                                              ; preds = %161
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @strnEQ(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %188
  store i64 4, i64* %17, align 8
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32, i32* @strippath, align 4
  %197 = icmp eq i32 %196, 957
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 @strnEQ(i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i64 6, i64* %17, align 8
  br label %203

203:                                              ; preds = %202, %198, %195, %192
  %204 = load i8*, i8** %9, align 8
  %205 = load i64, i64* %17, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  %207 = load i64, i64* @OLD_FILE, align 8
  %208 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %207
  %209 = getelementptr inbounds %struct.file_name, %struct.file_name* %208, i32 0, i32 1
  %210 = load i32, i32* @strippath, align 4
  %211 = call i8* @fetchname(i8* %206, i64* %209, i32 %210)
  %212 = load i64, i64* @OLD_FILE, align 8
  %213 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %212
  %214 = getelementptr inbounds %struct.file_name, %struct.file_name* %213, i32 0, i32 0
  store i8* %211, i8** %214, align 16
  br label %307

215:                                              ; preds = %188
  %216 = load i8*, i8** %9, align 8
  %217 = call i32 @strnEQ(i8* %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %215
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 6
  %222 = load i64, i64* @INDEX_FILE, align 8
  %223 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %222
  %224 = getelementptr inbounds %struct.file_name, %struct.file_name* %223, i32 0, i32 1
  %225 = load i32, i32* @strippath, align 4
  %226 = call i8* @fetchname(i8* %221, i64* %224, i32 %225)
  %227 = load i64, i64* @INDEX_FILE, align 8
  %228 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %227
  %229 = getelementptr inbounds %struct.file_name, %struct.file_name* %228, i32 0, i32 0
  store i8* %226, i8** %229, align 16
  br label %306

230:                                              ; preds = %215
  %231 = load i8*, i8** %9, align 8
  %232 = call i32 @strnEQ(i8* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %277

234:                                              ; preds = %230
  %235 = load i8*, i8** %9, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 7
  store i8* %236, i8** %10, align 8
  br label %237

237:                                              ; preds = %243, %234
  %238 = load i8*, i8** %10, align 8
  %239 = load i8, i8* %238, align 1
  %240 = call i64 @isspace(i8 zeroext %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %242
  %244 = load i8*, i8** %10, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %10, align 8
  br label %237

246:                                              ; preds = %237
  %247 = load i8*, i8** %10, align 8
  %248 = call i8* @xstrdup(i8* %247)
  store i8* %248, i8** @revision, align 8
  %249 = load i8*, i8** @revision, align 8
  store i8* %249, i8** %10, align 8
  br label %250

250:                                              ; preds = %264, %246
  %251 = load i8*, i8** %10, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load i8*, i8** %10, align 8
  %257 = load i8, i8* %256, align 1
  %258 = call i64 @isspace(i8 zeroext %257)
  %259 = icmp ne i64 %258, 0
  %260 = xor i1 %259, true
  br label %261

261:                                              ; preds = %255, %250
  %262 = phi i1 [ false, %250 ], [ %260, %255 ]
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  br label %264

264:                                              ; preds = %263
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %10, align 8
  br label %250

267:                                              ; preds = %261
  %268 = load i8*, i8** %10, align 8
  store i8 0, i8* %268, align 1
  %269 = load i8*, i8** @revision, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %267
  %274 = load i8*, i8** @revision, align 8
  %275 = call i32 @free(i8* %274)
  store i8* null, i8** @revision, align 8
  br label %276

276:                                              ; preds = %273, %267
  br label %305

277:                                              ; preds = %230
  %278 = load i8*, i8** %9, align 8
  %279 = call i32 @strnEQ(i8* %278, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 13)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  store i32 1, i32* %15, align 4
  br label %304

282:                                              ; preds = %277
  %283 = load i8*, i8** %9, align 8
  %284 = call i32 @strnEQ(i8* %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %303

286:                                              ; preds = %282
  %287 = load i8*, i8** %9, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 5
  %289 = call i8* @strstr(i8* %288, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %289, i8** %10, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %286
  %292 = load i64, i64* @NEW_FILE, align 8
  %293 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %292
  %294 = load i8*, i8** %10, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 3
  %296 = call i32 @p4_fetchname(%struct.file_name* %293, i8* %295)
  br label %297

297:                                              ; preds = %291, %286
  %298 = load i64, i64* @OLD_FILE, align 8
  %299 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %298
  %300 = load i8*, i8** %9, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 5
  %302 = call i32 @p4_fetchname(%struct.file_name* %299, i8* %301)
  br label %303

303:                                              ; preds = %297, %282
  br label %304

304:                                              ; preds = %303, %281
  br label %305

305:                                              ; preds = %304, %276
  br label %306

306:                                              ; preds = %305, %219
  br label %307

307:                                              ; preds = %306, %203
  br label %308

308:                                              ; preds = %307, %176
  br label %309

309:                                              ; preds = %308, %150
  %310 = load i32, i32* @diff_type, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = load i32, i32* @diff_type, align 4
  %314 = load i32, i32* @ED_DIFF, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %312, %309
  %317 = load i64, i64* %3, align 8
  %318 = icmp sge i64 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %316
  %320 = load i8*, i8** %9, align 8
  %321 = call i64 @strEQ(i8* %320, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %319
  %324 = load i32, i32* %11, align 4
  store i32 %324, i32* @p_indent, align 4
  %325 = load i64, i64* %3, align 8
  store i64 %325, i64* @p_start, align 8
  %326 = load i32, i32* %4, align 4
  store i32 %326, i32* @p_sline, align 4
  %327 = load i32, i32* @ED_DIFF, align 4
  store i32 %327, i32* %12, align 4
  br label %432

328:                                              ; preds = %319, %316, %312
  %329 = load i32, i32* @diff_type, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load i32, i32* @diff_type, align 4
  %333 = load i32, i32* @UNI_DIFF, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %351

335:                                              ; preds = %331, %328
  %336 = load i8*, i8** %9, align 8
  %337 = call i32 @strnEQ(i8* %336, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %351

339:                                              ; preds = %335
  %340 = load i8*, i8** %9, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 4
  %342 = call i32 @strnEQ(i8* %341, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  store i32 1, i32* @ok_to_create_file, align 4
  br label %345

345:                                              ; preds = %344, %339
  %346 = load i32, i32* %11, align 4
  store i32 %346, i32* @p_indent, align 4
  %347 = load i64, i64* %1, align 8
  store i64 %347, i64* @p_start, align 8
  %348 = load i8*, i8** @p_input_line, align 8
  %349 = ptrtoint i8* %348 to i32
  store i32 %349, i32* @p_sline, align 4
  %350 = load i32, i32* @UNI_DIFF, align 4
  store i32 %350, i32* %12, align 4
  br label %432

351:                                              ; preds = %335, %331
  %352 = load i8*, i8** %9, align 8
  %353 = call i32 @strnEQ(i8* %352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 8)
  store i32 %353, i32* %8, align 4
  %354 = load i32, i32* @diff_type, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %351
  %357 = load i32, i32* @diff_type, align 4
  %358 = load i32, i32* @CONTEXT_DIFF, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %406

360:                                              ; preds = %356, %351
  %361 = load i32, i32* %7, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %406

363:                                              ; preds = %360
  %364 = load i8*, i8** %9, align 8
  %365 = call i32 @strnEQ(i8* %364, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %406

367:                                              ; preds = %363
  %368 = load i8*, i8** %9, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 4
  %370 = call i64 @strtolinenum(i8* %369, i8** %9)
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %367
  store i32 1, i32* @ok_to_create_file, align 4
  br label %373

373:                                              ; preds = %372, %367
  br label %374

374:                                              ; preds = %386, %373
  %375 = load i8*, i8** %9, align 8
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i32
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load i8*, i8** %9, align 8
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp ne i32 %382, 10
  br label %384

384:                                              ; preds = %379, %374
  %385 = phi i1 [ false, %374 ], [ %383, %379 ]
  br i1 %385, label %386, label %389

386:                                              ; preds = %384
  %387 = load i8*, i8** %9, align 8
  %388 = getelementptr inbounds i8, i8* %387, i32 1
  store i8* %388, i8** %9, align 8
  br label %374

389:                                              ; preds = %384
  %390 = load i32, i32* %11, align 4
  store i32 %390, i32* @p_indent, align 4
  %391 = load i64, i64* %2, align 8
  store i64 %391, i64* @p_start, align 8
  %392 = load i8*, i8** @p_input_line, align 8
  %393 = getelementptr i8, i8* %392, i64 -1
  %394 = ptrtoint i8* %393 to i32
  store i32 %394, i32* @p_sline, align 4
  %395 = load i8*, i8** %9, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 -1
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp eq i32 %398, 42
  br i1 %399, label %400, label %402

400:                                              ; preds = %389
  %401 = load i32, i32* @NEW_CONTEXT_DIFF, align 4
  br label %404

402:                                              ; preds = %389
  %403 = load i32, i32* @CONTEXT_DIFF, align 4
  br label %404

404:                                              ; preds = %402, %400
  %405 = phi i32 [ %401, %400 ], [ %403, %402 ]
  store i32 %405, i32* %12, align 4
  br label %432

406:                                              ; preds = %363, %360, %356
  %407 = load i32, i32* @diff_type, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %406
  %410 = load i32, i32* @diff_type, align 4
  %411 = load i32, i32* @NORMAL_DIFF, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %431

413:                                              ; preds = %409, %406
  %414 = load i32, i32* %5, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %413
  %417 = load i8*, i8** %9, align 8
  %418 = call i32 @strnEQ(i8* %417, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %424, label %420

420:                                              ; preds = %416
  %421 = load i8*, i8** %9, align 8
  %422 = call i32 @strnEQ(i8* %421, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %420, %416
  %425 = load i64, i64* %2, align 8
  store i64 %425, i64* @p_start, align 8
  %426 = load i8*, i8** @p_input_line, align 8
  %427 = getelementptr i8, i8* %426, i64 -1
  %428 = ptrtoint i8* %427 to i32
  store i32 %428, i32* @p_sline, align 4
  %429 = load i32, i32* %11, align 4
  store i32 %429, i32* @p_indent, align 4
  %430 = load i32, i32* @NORMAL_DIFF, align 4
  store i32 %430, i32* %12, align 4
  br label %432

431:                                              ; preds = %420, %413, %409
  br label %32

432:                                              ; preds = %424, %404, %345, %323, %49, %45
  %433 = load i32, i32* %12, align 4
  %434 = load i32, i32* @UNI_DIFF, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %451

436:                                              ; preds = %432
  %437 = load i64, i64* @OLD_FILE, align 8
  %438 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %437
  %439 = bitcast %struct.file_name* %18 to i8*
  %440 = bitcast %struct.file_name* %438 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %439, i8* align 16 %440, i64 16, i1 false)
  %441 = load i64, i64* @OLD_FILE, align 8
  %442 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %441
  %443 = load i64, i64* @NEW_FILE, align 8
  %444 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %443
  %445 = bitcast %struct.file_name* %442 to i8*
  %446 = bitcast %struct.file_name* %444 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %445, i8* align 16 %446, i64 16, i1 false)
  %447 = load i64, i64* @NEW_FILE, align 8
  %448 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %447
  %449 = bitcast %struct.file_name* %448 to i8*
  %450 = bitcast %struct.file_name* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %449, i8* align 8 %450, i64 16, i1 false)
  br label %451

451:                                              ; preds = %436, %432
  %452 = load i8*, i8** @source_file, align 8
  %453 = call i32 @free(i8* %452)
  store i8* null, i8** @source_file, align 8
  %454 = load i32, i32* %12, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %479

456:                                              ; preds = %451
  %457 = load i64, i64* @OLD_FILE, align 8
  %458 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %457
  %459 = getelementptr inbounds %struct.file_name, %struct.file_name* %458, i32 0, i32 0
  %460 = load i8*, i8** %459, align 16
  %461 = icmp ne i8* %460, null
  br i1 %461, label %462, label %468

462:                                              ; preds = %456
  %463 = load i64, i64* @OLD_FILE, align 8
  %464 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %463
  %465 = getelementptr inbounds %struct.file_name, %struct.file_name* %464, i32 0, i32 0
  %466 = load i8*, i8** %465, align 16
  %467 = call i8* @xstrdup(i8* %466)
  store i8* %467, i8** @source_file, align 8
  br label %478

468:                                              ; preds = %456
  %469 = load i64, i64* @OLD_FILE, align 8
  %470 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %469
  %471 = getelementptr inbounds %struct.file_name, %struct.file_name* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %468
  %475 = load i8*, i8** @_PATH_DEVNULL, align 8
  %476 = call i8* @xstrdup(i8* %475)
  store i8* %476, i8** @source_file, align 8
  br label %477

477:                                              ; preds = %474, %468
  br label %478

478:                                              ; preds = %477, %462
  br label %479

479:                                              ; preds = %478, %451
  %480 = load i8**, i8*** @filearg, align 8
  %481 = getelementptr inbounds i8*, i8** %480, i64 0
  %482 = load i8*, i8** %481, align 8
  %483 = icmp eq i8* %482, null
  br i1 %483, label %484, label %519

484:                                              ; preds = %479
  %485 = load i64, i64* @posix, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %484
  %488 = load i32, i32* @ok_to_create_file, align 4
  %489 = call i8* @posix_name(%struct.file_name* %22, i32 %488)
  %490 = load i8**, i8*** @filearg, align 8
  %491 = getelementptr inbounds i8*, i8** %490, i64 0
  store i8* %489, i8** %491, align 8
  br label %518

492:                                              ; preds = %484
  %493 = load i64, i64* @OLD_FILE, align 8
  %494 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %493
  %495 = getelementptr inbounds %struct.file_name, %struct.file_name* %494, i32 0, i32 0
  %496 = load i8*, i8** %495, align 16
  %497 = icmp ne i8* %496, null
  br i1 %497, label %504, label %498

498:                                              ; preds = %492
  %499 = load i64, i64* @NEW_FILE, align 8
  %500 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %499
  %501 = getelementptr inbounds %struct.file_name, %struct.file_name* %500, i32 0, i32 0
  %502 = load i8*, i8** %501, align 16
  %503 = icmp ne i8* %502, null
  br i1 %503, label %504, label %513

504:                                              ; preds = %498, %492
  %505 = load i64, i64* @INDEX_FILE, align 8
  %506 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %505
  %507 = getelementptr inbounds %struct.file_name, %struct.file_name* %506, i32 0, i32 0
  %508 = load i8*, i8** %507, align 16
  %509 = call i32 @free(i8* %508)
  %510 = load i64, i64* @INDEX_FILE, align 8
  %511 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %510
  %512 = getelementptr inbounds %struct.file_name, %struct.file_name* %511, i32 0, i32 0
  store i8* null, i8** %512, align 16
  br label %513

513:                                              ; preds = %504, %498
  %514 = load i32, i32* @ok_to_create_file, align 4
  %515 = call i8* @best_name(%struct.file_name* %22, i32 %514)
  %516 = load i8**, i8*** @filearg, align 8
  %517 = getelementptr inbounds i8*, i8** %516, i64 0
  store i8* %515, i8** %517, align 8
  br label %518

518:                                              ; preds = %513, %487
  br label %519

519:                                              ; preds = %518, %479
  %520 = load i8*, i8** @bestguess, align 8
  %521 = call i32 @free(i8* %520)
  store i8* null, i8** @bestguess, align 8
  %522 = load i8**, i8*** @filearg, align 8
  %523 = getelementptr inbounds i8*, i8** %522, i64 0
  %524 = load i8*, i8** %523, align 8
  %525 = icmp ne i8* %524, null
  br i1 %525, label %526, label %531

526:                                              ; preds = %519
  %527 = load i8**, i8*** @filearg, align 8
  %528 = getelementptr inbounds i8*, i8** %527, i64 0
  %529 = load i8*, i8** %528, align 8
  %530 = call i8* @xstrdup(i8* %529)
  store i8* %530, i8** @bestguess, align 8
  br label %543

531:                                              ; preds = %519
  %532 = load i32, i32* @ok_to_create_file, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %542, label %534

534:                                              ; preds = %531
  %535 = load i64, i64* @posix, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %539

537:                                              ; preds = %534
  %538 = call i8* @posix_name(%struct.file_name* %22, i32 1)
  store i8* %538, i8** @bestguess, align 8
  br label %541

539:                                              ; preds = %534
  %540 = call i8* @best_name(%struct.file_name* %22, i32 1)
  store i8* %540, i8** @bestguess, align 8
  br label %541

541:                                              ; preds = %539, %537
  br label %542

542:                                              ; preds = %541, %531
  br label %543

543:                                              ; preds = %542, %526
  %544 = load i64, i64* @OLD_FILE, align 8
  %545 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %544
  %546 = getelementptr inbounds %struct.file_name, %struct.file_name* %545, i32 0, i32 0
  %547 = load i8*, i8** %546, align 16
  %548 = call i32 @free(i8* %547)
  %549 = load i64, i64* @NEW_FILE, align 8
  %550 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %549
  %551 = getelementptr inbounds %struct.file_name, %struct.file_name* %550, i32 0, i32 0
  %552 = load i8*, i8** %551, align 16
  %553 = call i32 @free(i8* %552)
  %554 = load i64, i64* @INDEX_FILE, align 8
  %555 = getelementptr inbounds %struct.file_name, %struct.file_name* %22, i64 %554
  %556 = getelementptr inbounds %struct.file_name, %struct.file_name* %555, i32 0, i32 0
  %557 = load i8*, i8** %556, align 16
  %558 = call i32 @free(i8* %557)
  %559 = load i32, i32* %12, align 4
  %560 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %560)
  ret i32 %559
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.file_name*, i32, i32) #2

declare dso_local i32 @fseeko(i32, i32, i32) #2

declare dso_local i64 @ftello(i32) #2

declare dso_local i64 @pgets(i32) #2

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i32 @strnEQ(i8*, i8*, i32) #2

declare dso_local i8* @fetchname(i8*, i64*, i32) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @p4_fetchname(%struct.file_name*, i8*) #2

declare dso_local i64 @strEQ(i8*, i8*) #2

declare dso_local i64 @strtolinenum(i8*, i8**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @posix_name(%struct.file_name*, i32) #2

declare dso_local i8* @best_name(%struct.file_name*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

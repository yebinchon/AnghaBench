; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }
%struct.dataset = type { i8* }

@MAX_DS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@TIOCGWINSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"AC:c:d:snw:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid column number.\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Column number should be positive.\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Not a floating point number\00", align 1
@NCONF = common dso_local global i32 0, align 4
@studentpct = common dso_local global double* null, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"No support for confidence level\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't use empty delimiter string\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Invalid width, not a number.\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Unable to move beyond left margin.\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"Too many datasets.\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@CAPH_READ = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"unable to limit rights for %s\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%c %s\0A\00", align 1
@symbol = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.winsize, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i32, i32* @MAX_DS, align 4
  %24 = sub nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %6, align 8
  %27 = alloca i8*, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %28 = load i32, i32* @MAX_DS, align 4
  %29 = sub nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca %struct.dataset*, i64 %30, align 16
  store i64 %30, i64* %8, align 8
  %32 = load i32, i32* @MAX_DS, align 4
  %33 = sub nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = alloca i32*, i64 %34, align 16
  store i64 %34, i64* %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 74, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %36 = load i32, i32* @STDOUT_FILENO, align 4
  %37 = call i64 @isatty(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %2
  %40 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %13, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @atoi(i8* %48)
  store i32 %49, i32* %20, align 4
  br label %64

50:                                               ; preds = %42, %39
  %51 = load i32, i32* @STDOUT_FILENO, align 4
  %52 = load i32, i32* @TIOCGWINSZ, align 4
  %53 = call i32 @ioctl(i32 %51, i32 %52, %struct.winsize* %22)
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.winsize, %struct.winsize* %22, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.winsize, %struct.winsize* %22, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 2
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %59, %55, %50
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %2
  store i32 -1, i32* %16, align 4
  br label %66

66:                                               ; preds = %160, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = call i32 @getopt(i32 %67, i8** %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %69, i32* %14, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %161

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  switch i32 %72, label %158 [
    i32 65, label %73
    i32 67, label %74
    i32 99, label %92
    i32 100, label %129
    i32 110, label %138
    i32 115, label %139
    i32 119, label %140
  ]

73:                                               ; preds = %71
  store i32 1, i32* %21, align 4
  br label %160

74:                                               ; preds = %71
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @strtol(i8* %75, i8** %13, i32 10)
  store i32 %76, i32* %17, align 4
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8*, i8** %13, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @usage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79, %74
  %87 = load i32, i32* %17, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @usage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  br label %160

92:                                               ; preds = %71
  %93 = load i8*, i8** @optarg, align 8
  %94 = call double @strtod(i8* %93, i8** %13)
  store double %94, double* %11, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8*, i8** %13, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 @usage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97, %92
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @NCONF, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load double, double* %11, align 8
  %111 = load double*, double** @studentpct, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %111, i64 %113
  %115 = load double, double* %114, align 8
  %116 = fcmp oeq double %110, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %16, align 4
  br label %119

119:                                              ; preds = %117, %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load i32, i32* %16, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 @usage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  br label %160

129:                                              ; preds = %71
  %130 = load i8*, i8** @optarg, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @usage(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %129
  %137 = load i8*, i8** @optarg, align 8
  store i8* %137, i8** %12, align 8
  br label %160

138:                                              ; preds = %71
  store i32 1, i32* %19, align 4
  br label %160

139:                                              ; preds = %71
  store i32 1, i32* %18, align 4
  br label %160

140:                                              ; preds = %71
  %141 = load i8*, i8** @optarg, align 8
  %142 = call i32 @strtol(i8* %141, i8** %13, i32 10)
  store i32 %142, i32* %20, align 4
  %143 = load i8*, i8** %13, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load i8*, i8** %13, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @usage(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %145, %140
  %153 = load i32, i32* %20, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 @usage(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %152
  br label %160

158:                                              ; preds = %71
  %159 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %157, %139, %138, %136, %128, %91, %73
  br label %66

161:                                              ; preds = %66
  %162 = load i32, i32* %16, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 2, i32* %16, align 4
  br label %165

165:                                              ; preds = %164, %161
  %166 = load i64, i64* @optind, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = sub nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %4, align 4
  %171 = load i64, i64* @optind, align 8
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 %171
  store i8** %173, i8*** %5, align 8
  %174 = load i32, i32* %4, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %177, align 16
  %178 = load i32*, i32** @stdin, align 8
  %179 = getelementptr inbounds i32*, i32** %35, i64 0
  store i32* %178, i32** %179, align 16
  store i32 1, i32* %10, align 4
  br label %240

180:                                              ; preds = %165
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @MAX_DS, align 4
  %183 = sub nsw i32 %182, 1
  %184 = icmp sgt i32 %181, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 @usage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %180
  %188 = load i32, i32* %4, align 4
  store i32 %188, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %189

189:                                              ; preds = %236, %187
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %239

193:                                              ; preds = %189
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %27, i64 %200
  store i8* %198, i8** %201, align 8
  %202 = load i8**, i8*** %5, align 8
  %203 = load i32, i32* %15, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %193
  %210 = load i32*, i32** @stdin, align 8
  %211 = getelementptr inbounds i32*, i32** %35, i64 0
  store i32* %210, i32** %211, align 16
  br label %222

212:                                              ; preds = %193
  %213 = load i8**, i8*** %5, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i32* @fopen(i8* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %35, i64 %220
  store i32* %218, i32** %221, align 8
  br label %222

222:                                              ; preds = %212, %209
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %35, i64 %224
  %226 = load i32*, i32** %225, align 8
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %222
  %229 = load i8**, i8*** %5, align 8
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %228, %222
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %15, align 4
  br label %189

239:                                              ; preds = %189
  br label %240

240:                                              ; preds = %239, %176
  %241 = call i64 (...) @caph_limit_stdio()
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %240
  store i32 0, i32* %15, align 4
  br label %246

246:                                              ; preds = %266, %245
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %246
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %35, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @fileno(i32* %254)
  %256 = load i32, i32* @CAPH_READ, align 4
  %257 = call i64 @caph_limit_stream(i32 %255, i32 %256)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %250
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %27, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %259, %250
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %246

269:                                              ; preds = %246
  %270 = call i64 (...) @caph_enter()
  %271 = icmp slt i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %269
  store i32 0, i32* %15, align 4
  br label %275

275:                                              ; preds = %307, %274
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %310

279:                                              ; preds = %275
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %35, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %15, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %27, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = load i32, i32* %17, align 4
  %289 = load i8*, i8** %12, align 8
  %290 = call %struct.dataset* @ReadSet(i32* %283, i8* %287, i32 %288, i8* %289)
  %291 = load i32, i32* %15, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 %292
  store %struct.dataset* %290, %struct.dataset** %293, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %35, i64 %295
  %297 = load i32*, i32** %296, align 8
  %298 = load i32*, i32** @stdin, align 8
  %299 = icmp ne i32* %297, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %279
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %35, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @fclose(i32* %304)
  br label %306

306:                                              ; preds = %300, %279
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %15, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %15, align 4
  br label %275

310:                                              ; preds = %275
  store i32 0, i32* %15, align 4
  br label %311

311:                                              ; preds = %329, %310
  %312 = load i32, i32* %15, align 4
  %313 = load i32, i32* %10, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %332

315:                                              ; preds = %311
  %316 = load i32*, i32** @symbol, align 8
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %15, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 %323
  %325 = load %struct.dataset*, %struct.dataset** %324, align 8
  %326 = getelementptr inbounds %struct.dataset, %struct.dataset* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %321, i8* %327)
  br label %329

329:                                              ; preds = %315
  %330 = load i32, i32* %15, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %15, align 4
  br label %311

332:                                              ; preds = %311
  %333 = load i32, i32* %19, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %374, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %21, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %374, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* %20, align 4
  %340 = load i32, i32* %18, align 4
  %341 = load i32, i32* %10, align 4
  %342 = call i32 @SetupPlot(i32 %339, i32 %340, i32 %341)
  store i32 0, i32* %15, align 4
  br label %343

343:                                              ; preds = %353, %338
  %344 = load i32, i32* %15, align 4
  %345 = load i32, i32* %10, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %343
  %348 = load i32, i32* %15, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 %349
  %351 = load %struct.dataset*, %struct.dataset** %350, align 8
  %352 = call i32 @DimPlot(%struct.dataset* %351)
  br label %353

353:                                              ; preds = %347
  %354 = load i32, i32* %15, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %15, align 4
  br label %343

356:                                              ; preds = %343
  store i32 0, i32* %15, align 4
  br label %357

357:                                              ; preds = %369, %356
  %358 = load i32, i32* %15, align 4
  %359 = load i32, i32* %10, align 4
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %361, label %372

361:                                              ; preds = %357
  %362 = load i32, i32* %15, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 %363
  %365 = load %struct.dataset*, %struct.dataset** %364, align 8
  %366 = load i32, i32* %15, align 4
  %367 = add nsw i32 %366, 1
  %368 = call i32 @PlotSet(%struct.dataset* %365, i32 %367)
  br label %369

369:                                              ; preds = %361
  %370 = load i32, i32* %15, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %15, align 4
  br label %357

372:                                              ; preds = %357
  %373 = call i32 (...) @DumpPlot()
  br label %374

374:                                              ; preds = %372, %335, %332
  %375 = call i32 (...) @VitalsHead()
  %376 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 0
  %377 = load %struct.dataset*, %struct.dataset** %376, align 16
  %378 = call i32 @Vitals(%struct.dataset* %377, i32 1)
  store i32 1, i32* %15, align 4
  br label %379

379:                                              ; preds = %403, %374
  %380 = load i32, i32* %15, align 4
  %381 = load i32, i32* %10, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %406

383:                                              ; preds = %379
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 %385
  %387 = load %struct.dataset*, %struct.dataset** %386, align 8
  %388 = load i32, i32* %15, align 4
  %389 = add nsw i32 %388, 1
  %390 = call i32 @Vitals(%struct.dataset* %387, i32 %389)
  %391 = load i32, i32* %19, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %402, label %393

393:                                              ; preds = %383
  %394 = load i32, i32* %15, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 %395
  %397 = load %struct.dataset*, %struct.dataset** %396, align 8
  %398 = getelementptr inbounds %struct.dataset*, %struct.dataset** %31, i64 0
  %399 = load %struct.dataset*, %struct.dataset** %398, align 16
  %400 = load i32, i32* %16, align 4
  %401 = call i32 @Relative(%struct.dataset* %397, %struct.dataset* %399, i32 %400)
  br label %402

402:                                              ; preds = %393, %383
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %15, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %15, align 4
  br label %379

406:                                              ; preds = %379
  %407 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isatty(i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local double @strtod(i8*, i8**) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @caph_limit_stdio(...) #2

declare dso_local i64 @caph_limit_stream(i32, i32) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i64 @caph_enter(...) #2

declare dso_local %struct.dataset* @ReadSet(i32*, i8*, i32, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @printf(i8*, i32, i8*) #2

declare dso_local i32 @SetupPlot(i32, i32, i32) #2

declare dso_local i32 @DimPlot(%struct.dataset*) #2

declare dso_local i32 @PlotSet(%struct.dataset*, i32) #2

declare dso_local i32 @DumpPlot(...) #2

declare dso_local i32 @VitalsHead(...) #2

declare dso_local i32 @Vitals(%struct.dataset*, i32) #2

declare dso_local i32 @Relative(%struct.dataset*, %struct.dataset*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

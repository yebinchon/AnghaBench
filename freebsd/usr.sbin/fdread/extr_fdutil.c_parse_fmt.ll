; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_parse_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdread/extr_fdutil.c_parse_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bad numeric value for sectrac: %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"bad numeric value for secsize: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bad sector size %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"bad numeric value for datalen: %s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"bad datalen %d\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"bad numeric value for gap: %s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"bad numeric value for ncyls: %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"bad # of cylinders %d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"bad numeric value for speed: %s\00", align 1
@FDC_250KBPS = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"bad speed %d\00", align 1
@FDC_300KBPS = common dso_local global i8* null, align 8
@FDC_500KBPS = common dso_local global i8* null, align 8
@FDC_1MBPS = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"bad numeric value for heads: %s\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"bad # of heads %d\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"bad numeric value for f_gap: %s\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"bad numeric value for f_inter: %s\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"bad numeric value for offs2: %s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"+mfm\00", align 1
@FL_MFM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"-mfm\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"+auto\00", align 1
@FL_AUTO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"-auto\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"+2step\00", align 1
@FL_2STEP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"-2step\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"+perpnd\00", align 1
@FL_PERPND = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"-perpnd\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"bad flag: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_fmt(i8* %0, i32 %1, %struct.fd_type* byval(%struct.fd_type) align 8 %2, %struct.fd_type* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fd_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fd_type* %3, %struct.fd_type** %7, align 8
  %12 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %13 = bitcast %struct.fd_type* %12 to i8*
  %14 = bitcast %struct.fd_type* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 56, i1 false)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %408, %4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %411

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 44)
  store i8* %21, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @abort() #4
  unreachable

30:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %63

31:                                               ; preds = %19
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = trunc i64 %37 to i32
  %39 = call i8* @malloc(i32 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = call i32 (...) @abort() #4
  unreachable

44:                                               ; preds = %31
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i8* %45, i8* %46, i32 %52)
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %44, %30
  %64 = load i8*, i8** %11, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  br label %408

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %309 [
    i32 0, label %72
    i32 1, label %83
    i32 2, label %123
    i32 3, label %142
    i32 4, label %153
    i32 5, label %172
    i32 6, label %253
    i32 7, label %276
    i32 8, label %287
    i32 9, label %298
  ]

72:                                               ; preds = %70
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %75 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %74, i32 0, i32 0
  %76 = call i32 @getnum(i8* %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @EX_USAGE, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 (i32, i8*, ...) @errx(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %72
  br label %405

83:                                               ; preds = %70
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @getnum(i8* %84, i32* %9)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @EX_USAGE, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 (i32, i8*, ...) @errx(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %96 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %122

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 256
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %102 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %121

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 512
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %108 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %107, i32 0, i32 1
  store i32 2, i32* %108, align 4
  br label %120

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 1024
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %114 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %113, i32 0, i32 1
  store i32 3, i32* %114, align 4
  br label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @EX_USAGE, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, ...) @errx(i32 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %106
  br label %121

121:                                              ; preds = %120, %100
  br label %122

122:                                              ; preds = %121, %94
  br label %405

123:                                              ; preds = %70
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @getnum(i8* %124, i32* %9)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* @EX_USAGE, align 4
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 (i32, i8*, ...) @errx(i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %9, align 4
  %133 = icmp sge i32 %132, 256
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* @EX_USAGE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (i32, i8*, ...) @errx(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %141 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %405

142:                                              ; preds = %70
  %143 = load i8*, i8** %11, align 8
  %144 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %145 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %144, i32 0, i32 3
  %146 = call i32 @getnum(i8* %143, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* @EX_USAGE, align 4
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 (i32, i8*, ...) @errx(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %148, %142
  br label %405

153:                                              ; preds = %70
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @getnum(i8* %154, i32* %9)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* @EX_USAGE, align 4
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 (i32, i8*, ...) @errx(i32 %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %9, align 4
  %163 = icmp sgt i32 %162, 85
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* @EX_USAGE, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32, i8*, ...) @errx(i32 %165, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %171 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  br label %405

172:                                              ; preds = %70
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @getnum(i8* %173, i32* %9)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* @EX_USAGE, align 4
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 (i32, i8*, ...) @errx(i32 %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %176, %172
  %181 = load i32, i32* %6, align 4
  switch i32 %181, label %182 [
    i32 129, label %184
    i32 128, label %184
    i32 132, label %196
    i32 130, label %224
    i32 131, label %232
  ]

182:                                              ; preds = %180
  %183 = call i32 (...) @abort() #4
  unreachable

184:                                              ; preds = %180, %180
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 %185, 250
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** @FDC_250KBPS, align 8
  %189 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %190 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %189, i32 0, i32 11
  store i8* %188, i8** %190, align 8
  br label %195

191:                                              ; preds = %184
  %192 = load i32, i32* @EX_USAGE, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 (i32, i8*, ...) @errx(i32 %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %191, %187
  br label %252

196:                                              ; preds = %180
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %197, 300
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i8*, i8** @FDC_300KBPS, align 8
  %201 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %202 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %201, i32 0, i32 11
  store i8* %200, i8** %202, align 8
  br label %223

203:                                              ; preds = %196
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %204, 250
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i8*, i8** @FDC_250KBPS, align 8
  %208 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %209 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %208, i32 0, i32 11
  store i8* %207, i8** %209, align 8
  br label %222

210:                                              ; preds = %203
  %211 = load i32, i32* %9, align 4
  %212 = icmp eq i32 %211, 500
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i8*, i8** @FDC_500KBPS, align 8
  %215 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %216 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %215, i32 0, i32 11
  store i8* %214, i8** %216, align 8
  br label %221

217:                                              ; preds = %210
  %218 = load i32, i32* @EX_USAGE, align 4
  %219 = load i32, i32* %9, align 4
  %220 = call i32 (i32, i8*, ...) @errx(i32 %218, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %217, %213
  br label %222

222:                                              ; preds = %221, %206
  br label %223

223:                                              ; preds = %222, %199
  br label %252

224:                                              ; preds = %180
  %225 = load i32, i32* %9, align 4
  %226 = icmp eq i32 %225, 1000
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i8*, i8** @FDC_1MBPS, align 8
  %229 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %230 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %229, i32 0, i32 11
  store i8* %228, i8** %230, align 8
  br label %231

231:                                              ; preds = %227, %224
  br label %232

232:                                              ; preds = %180, %231
  %233 = load i32, i32* %9, align 4
  %234 = icmp eq i32 %233, 250
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i8*, i8** @FDC_250KBPS, align 8
  %237 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %238 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %237, i32 0, i32 11
  store i8* %236, i8** %238, align 8
  br label %251

239:                                              ; preds = %232
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %240, 500
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i8*, i8** @FDC_500KBPS, align 8
  %244 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %245 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %244, i32 0, i32 11
  store i8* %243, i8** %245, align 8
  br label %250

246:                                              ; preds = %239
  %247 = load i32, i32* @EX_USAGE, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 (i32, i8*, ...) @errx(i32 %247, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %246, %242
  br label %251

251:                                              ; preds = %250, %235
  br label %252

252:                                              ; preds = %251, %223, %195
  br label %405

253:                                              ; preds = %70
  %254 = load i8*, i8** %11, align 8
  %255 = call i32 @getnum(i8* %254, i32* %9)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i32, i32* @EX_USAGE, align 4
  %259 = load i8*, i8** %11, align 8
  %260 = call i32 (i32, i8*, ...) @errx(i32 %258, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %259)
  br label %261

261:                                              ; preds = %257, %253
  %262 = load i32, i32* %9, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %9, align 4
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %271

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %270 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %269, i32 0, i32 5
  store i32 %268, i32* %270, align 4
  br label %275

271:                                              ; preds = %264
  %272 = load i32, i32* @EX_USAGE, align 4
  %273 = load i32, i32* %9, align 4
  %274 = call i32 (i32, i8*, ...) @errx(i32 %272, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %273)
  br label %275

275:                                              ; preds = %271, %267
  br label %405

276:                                              ; preds = %70
  %277 = load i8*, i8** %11, align 8
  %278 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %279 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %278, i32 0, i32 6
  %280 = call i32 @getnum(i8* %277, i32* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = load i32, i32* @EX_USAGE, align 4
  %284 = load i8*, i8** %11, align 8
  %285 = call i32 (i32, i8*, ...) @errx(i32 %283, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* %284)
  br label %286

286:                                              ; preds = %282, %276
  br label %405

287:                                              ; preds = %70
  %288 = load i8*, i8** %11, align 8
  %289 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %290 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %289, i32 0, i32 7
  %291 = call i32 @getnum(i8* %288, i32* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i32, i32* @EX_USAGE, align 4
  %295 = load i8*, i8** %11, align 8
  %296 = call i32 (i32, i8*, ...) @errx(i32 %294, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %295)
  br label %297

297:                                              ; preds = %293, %287
  br label %405

298:                                              ; preds = %70
  %299 = load i8*, i8** %11, align 8
  %300 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %301 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %300, i32 0, i32 8
  %302 = call i32 @getnum(i8* %299, i32* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %298
  %305 = load i32, i32* @EX_USAGE, align 4
  %306 = load i8*, i8** %11, align 8
  %307 = call i32 (i32, i8*, ...) @errx(i32 %305, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %306)
  br label %308

308:                                              ; preds = %304, %298
  br label %405

309:                                              ; preds = %70
  %310 = load i8*, i8** %11, align 8
  %311 = call i32 @strcmp(i8* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = load i32, i32* @FL_MFM, align 4
  %315 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %316 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %315, i32 0, i32 10
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %404

319:                                              ; preds = %309
  %320 = load i8*, i8** %11, align 8
  %321 = call i32 @strcmp(i8* %320, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %319
  %324 = load i32, i32* @FL_MFM, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %327 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %326, i32 0, i32 10
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %403

330:                                              ; preds = %319
  %331 = load i8*, i8** %11, align 8
  %332 = call i32 @strcmp(i8* %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %330
  %335 = load i32, i32* @FL_AUTO, align 4
  %336 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %337 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %336, i32 0, i32 10
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 8
  br label %402

340:                                              ; preds = %330
  %341 = load i8*, i8** %11, align 8
  %342 = call i32 @strcmp(i8* %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %340
  %345 = load i32, i32* @FL_AUTO, align 4
  %346 = xor i32 %345, -1
  %347 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %348 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %347, i32 0, i32 10
  %349 = load i32, i32* %348, align 8
  %350 = and i32 %349, %346
  store i32 %350, i32* %348, align 8
  br label %401

351:                                              ; preds = %340
  %352 = load i8*, i8** %11, align 8
  %353 = call i32 @strcmp(i8* %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %351
  %356 = load i32, i32* @FL_2STEP, align 4
  %357 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %358 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %357, i32 0, i32 10
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 8
  br label %400

361:                                              ; preds = %351
  %362 = load i8*, i8** %11, align 8
  %363 = call i32 @strcmp(i8* %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %361
  %366 = load i32, i32* @FL_2STEP, align 4
  %367 = xor i32 %366, -1
  %368 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %369 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %368, i32 0, i32 10
  %370 = load i32, i32* %369, align 8
  %371 = and i32 %370, %367
  store i32 %371, i32* %369, align 8
  br label %399

372:                                              ; preds = %361
  %373 = load i8*, i8** %11, align 8
  %374 = call i32 @strcmp(i8* %373, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %372
  %377 = load i32, i32* @FL_PERPND, align 4
  %378 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %379 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %378, i32 0, i32 10
  %380 = load i32, i32* %379, align 8
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 8
  br label %398

382:                                              ; preds = %372
  %383 = load i8*, i8** %11, align 8
  %384 = call i32 @strcmp(i8* %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %382
  %387 = load i32, i32* @FL_PERPND, align 4
  %388 = xor i32 %387, -1
  %389 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %390 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %389, i32 0, i32 10
  %391 = load i32, i32* %390, align 8
  %392 = and i32 %391, %388
  store i32 %392, i32* %390, align 8
  br label %397

393:                                              ; preds = %382
  %394 = load i32, i32* @EX_USAGE, align 4
  %395 = load i8*, i8** %11, align 8
  %396 = call i32 (i32, i8*, ...) @errx(i32 %394, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* %395)
  br label %397

397:                                              ; preds = %393, %386
  br label %398

398:                                              ; preds = %397, %376
  br label %399

399:                                              ; preds = %398, %365
  br label %400

400:                                              ; preds = %399, %355
  br label %401

401:                                              ; preds = %400, %344
  br label %402

402:                                              ; preds = %401, %334
  br label %403

403:                                              ; preds = %402, %323
  br label %404

404:                                              ; preds = %403, %313
  br label %405

405:                                              ; preds = %404, %308, %297, %286, %275, %252, %168, %152, %138, %122, %82
  %406 = load i8*, i8** %11, align 8
  %407 = call i32 @free(i8* %406)
  br label %408

408:                                              ; preds = %405, %67
  %409 = load i32, i32* %8, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %8, align 4
  br label %15

411:                                              ; preds = %18
  %412 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %413 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %416 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = mul nsw i32 %414, %417
  %419 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %420 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = mul nsw i32 %418, %421
  %423 = load %struct.fd_type*, %struct.fd_type** %7, align 8
  %424 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %423, i32 0, i32 9
  store i32 %422, i32* %424, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @getnum(i8*, i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

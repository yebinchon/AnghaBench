; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/chroot/extr_chroot.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/chroot/extr_chroot.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i64 }
%struct.passwd = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"G:g:u:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"no such group `%s'\00", align 1
@_SC_NGROUPS_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"too many supplementary groups provided\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no such user `%s'\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"setgroups\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"-i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %17, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load i32, i32* %17, align 4
  switch i32 %26, label %55 [
    i32 117, label %27
    i32 103, label %36
    i32 71, label %45
    i32 63, label %54
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %27
  br label %57

36:                                               ; preds = %25
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %42, %36
  br label %57

45:                                               ; preds = %25
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %45
  br label %57

54:                                               ; preds = %25
  br label %55

55:                                               ; preds = %25, %54
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %53, %44, %35
  br label %20

58:                                               ; preds = %20
  %59 = load i64, i64* @optind, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = load i64, i64* @optind, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  store i8** %66, i8*** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %102

74:                                               ; preds = %71
  %75 = load i8*, i8** %11, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isdigit(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 @strtoul(i8* %80, i8** %8, i32 0)
  store i64 %81, i64* %14, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %89

87:                                               ; preds = %79
  br label %101

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %86
  %90 = load i8*, i8** %11, align 8
  %91 = call %struct.group* @getgrnam(i8* %90)
  store %struct.group* %91, %struct.group** %6, align 8
  %92 = icmp ne %struct.group* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.group*, %struct.group** %6, align 8
  %95 = getelementptr inbounds %struct.group, %struct.group* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  br label %100

97:                                               ; preds = %89
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %93
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %71
  %103 = load i32, i32* @_SC_NGROUPS_MAX, align 4
  %104 = call i32 @sysconf(i32 %103)
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %19, align 8
  %107 = load i64, i64* %19, align 8
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i32
  %110 = call i64* @malloc(i32 %109)
  store i64* %110, i64** %15, align 8
  %111 = icmp eq i64* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %102
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %166, %130, %114
  %116 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %116, i8** %9, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %19, align 8
  %122 = icmp slt i64 %120, %121
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i1 [ false, %115 ], [ %122, %118 ]
  br i1 %124, label %125, label %169

125:                                              ; preds = %123
  %126 = load i8*, i8** %9, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %115

131:                                              ; preds = %125
  %132 = load i8*, i8** %9, align 8
  %133 = load i8, i8* %132, align 1
  %134 = call i64 @isdigit(i8 zeroext %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load i8*, i8** %9, align 8
  %138 = call i64 @strtoul(i8* %137, i8** %8, i32 0)
  %139 = load i64*, i64** %15, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %150

148:                                              ; preds = %136
  br label %166

149:                                              ; preds = %131
  br label %150

150:                                              ; preds = %149, %147
  %151 = load i8*, i8** %9, align 8
  %152 = call %struct.group* @getgrnam(i8* %151)
  store %struct.group* %152, %struct.group** %6, align 8
  %153 = icmp ne %struct.group* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load %struct.group*, %struct.group** %6, align 8
  %156 = getelementptr inbounds %struct.group, %struct.group* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %15, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 %157, i64* %161, align 8
  br label %165

162:                                              ; preds = %150
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %162, %154
  br label %166

166:                                              ; preds = %165, %148
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %115

169:                                              ; preds = %123
  %170 = load i8*, i8** %9, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %19, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %172, %169
  %180 = load i8*, i8** %10, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = load i8*, i8** %10, align 8
  %184 = load i8, i8* %183, align 1
  %185 = call i64 @isdigit(i8 zeroext %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load i8*, i8** %10, align 8
  %189 = call i64 @strtoul(i8* %188, i8** %8, i32 0)
  store i64 %189, i64* %16, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %197

195:                                              ; preds = %187
  br label %209

196:                                              ; preds = %182
  br label %197

197:                                              ; preds = %196, %194
  %198 = load i8*, i8** %10, align 8
  %199 = call %struct.passwd* @getpwnam(i8* %198)
  store %struct.passwd* %199, %struct.passwd** %7, align 8
  %200 = icmp ne %struct.passwd* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load %struct.passwd*, %struct.passwd** %7, align 8
  %203 = getelementptr inbounds %struct.passwd, %struct.passwd* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %16, align 8
  br label %208

205:                                              ; preds = %197
  %206 = load i8*, i8** %10, align 8
  %207 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %205, %201
  br label %209

209:                                              ; preds = %208, %195
  br label %210

210:                                              ; preds = %209, %179
  %211 = load i8**, i8*** %5, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @chdir(i8* %213)
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %219, label %216

216:                                              ; preds = %210
  %217 = call i32 @chroot(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %224

219:                                              ; preds = %216, %210
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %219, %216
  %225 = load i32, i32* %18, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32, i32* %18, align 4
  %229 = load i64*, i64** %15, align 8
  %230 = call i32 @setgroups(i32 %228, i64* %229)
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %227, %224
  %235 = load i8*, i8** %11, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i64, i64* %14, align 8
  %239 = call i32 @setgid(i64 %238)
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %237, %234
  %244 = load i8*, i8** %10, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load i64, i64* %16, align 8
  %248 = call i32 @setuid(i64 %247)
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %246, %243
  %253 = load i8**, i8*** %5, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 1
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load i8**, i8*** %5, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 1
  %260 = load i8*, i8** %259, align 8
  %261 = load i8**, i8*** %5, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 1
  %263 = call i32 @execvp(i8* %260, i8** %262)
  %264 = load i8**, i8*** %5, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 1
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %257, %252
  %269 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i8* %269, i8** %13, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %272, i8** %13, align 8
  br label %273

273:                                              ; preds = %271, %268
  %274 = load i8*, i8** %13, align 8
  %275 = load i8*, i8** %13, align 8
  %276 = call i32 @execlp(i8* %274, i8* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* null)
  %277 = load i8*, i8** %13, align 8
  %278 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %277)
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @chroot(i8*) #1

declare dso_local i32 @setgroups(i32, i64*) #1

declare dso_local i32 @setgid(i64) #1

declare dso_local i32 @setuid(i64) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

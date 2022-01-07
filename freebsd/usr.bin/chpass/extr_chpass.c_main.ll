; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_chpass.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_chpass.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i32, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"a:p:s:e:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown user: uid %lu\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"unknown user: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pw_dup\00", align 1
@master_mode = common dso_local global i32 0, align 4
@_PWSCAN_WARN = common dso_local global i32 0, align 4
@_PWSCAN_MASTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid format for password\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"pw_init()\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pw_tmp()\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"edit()\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"user information unchanged\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_PWF_SOURCE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"pw_lock()\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"pw_copy\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"pw_mkdb()\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"user information updated\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"unsupported passwd source\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.passwd, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %14, align 8
  store %struct.passwd* null, %struct.passwd** %8, align 8
  store %struct.passwd* null, %struct.passwd** %9, align 8
  store i32 2, i32* %6, align 4
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %33 [
    i32 97, label %24
    i32 115, label %26
    i32 112, label %28
    i32 101, label %30
    i32 63, label %32
  ]

24:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** %14, align 8
  br label %35

26:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %14, align 8
  br label %35

28:                                               ; preds = %22
  store i32 3, i32* %6, align 4
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %14, align 8
  br label %35

30:                                               ; preds = %22
  store i32 4, i32* %6, align 4
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %14, align 8
  br label %35

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %22, %32
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %30, %28, %26, %24
  br label %17

36:                                               ; preds = %17
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %36
  %50 = call i64 (...) @getuid()
  store i64 %50, i64* %16, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %105

62:                                               ; preds = %59, %56, %53, %49
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i64, i64* %16, align 8
  %67 = call %struct.passwd* @getpwuid(i64 %66)
  store %struct.passwd* %67, %struct.passwd** %9, align 8
  %68 = icmp eq %struct.passwd* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %16, align 8
  %71 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %69, %65
  br label %94

73:                                               ; preds = %62
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = call %struct.passwd* @getpwnam(i8* %75)
  store %struct.passwd* %76, %struct.passwd** %9, align 8
  %77 = icmp eq %struct.passwd* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i64, i64* %16, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i64, i64* %16, align 8
  %87 = load %struct.passwd*, %struct.passwd** %9, align 8
  %88 = getelementptr inbounds %struct.passwd, %struct.passwd* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 (...) @baduser()
  br label %93

93:                                               ; preds = %91, %85, %82
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.passwd*, %struct.passwd** %9, align 8
  %96 = call %struct.passwd* @pw_dup(%struct.passwd* %95)
  store %struct.passwd* %96, %struct.passwd** %9, align 8
  %97 = icmp eq %struct.passwd* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load %struct.passwd*, %struct.passwd** %9, align 8
  %100 = call %struct.passwd* @pw_dup(%struct.passwd* %99)
  store %struct.passwd* %100, %struct.passwd** %8, align 8
  %101 = icmp eq %struct.passwd* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %94
  %103 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %98
  br label %105

105:                                              ; preds = %104, %59
  %106 = load i64, i64* %16, align 8
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  store i32 %108, i32* @master_mode, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = call i32 (...) @usage()
  br label %118

118:                                              ; preds = %116, %111
  %119 = load i8*, i8** %14, align 8
  %120 = load %struct.passwd*, %struct.passwd** %9, align 8
  %121 = call i32 @p_shell(i8* %119, %struct.passwd* %120, i32* null)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = call i32 @exit(i32 1) #3
  unreachable

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %105
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i64, i64* %16, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (...) @baduser()
  br label %134

134:                                              ; preds = %132, %129
  %135 = load i8*, i8** %14, align 8
  %136 = load %struct.passwd*, %struct.passwd** %9, align 8
  %137 = call i32 @p_expire(i8* %135, %struct.passwd* %136, i32* null)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 @exit(i32 1) #3
  unreachable

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %126
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %161

145:                                              ; preds = %142
  %146 = load i64, i64* %16, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (...) @baduser()
  br label %150

150:                                              ; preds = %148, %145
  store %struct.passwd* %7, %struct.passwd** %9, align 8
  store %struct.passwd* null, %struct.passwd** %8, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = load %struct.passwd*, %struct.passwd** %9, align 8
  %153 = load i32, i32* @_PWSCAN_WARN, align 4
  %154 = load i32, i32* @_PWSCAN_MASTER, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @__pw_scan(i8* %151, %struct.passwd* %152, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = call i32 @exit(i32 1) #3
  unreachable

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160, %142
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = load i64, i64* %16, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 (...) @baduser()
  br label %169

169:                                              ; preds = %167, %164
  %170 = load i8*, i8** %14, align 8
  %171 = call i64 @strchr(i8* %170, i8 signext 58)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %169
  %176 = load i8*, i8** %14, align 8
  %177 = load %struct.passwd*, %struct.passwd** %9, align 8
  %178 = getelementptr inbounds %struct.passwd, %struct.passwd* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %175, %161
  %180 = load i32, i32* %6, align 4
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %221

182:                                              ; preds = %179
  %183 = call i64 @pw_init(i32* null, i32* null)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %182
  %188 = call i32 @pw_tmp(i32 -1)
  store i32 %188, i32* %12, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = call i32 (...) @pw_fini()
  %192 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.passwd*, %struct.passwd** %9, align 8
  %195 = call i32 @free(%struct.passwd* %194)
  %196 = call i32 (...) @pw_tempname()
  %197 = load %struct.passwd*, %struct.passwd** %8, align 8
  %198 = call %struct.passwd* @edit(i32 %196, %struct.passwd* %197)
  store %struct.passwd* %198, %struct.passwd** %9, align 8
  %199 = call i32 (...) @pw_fini()
  %200 = load %struct.passwd*, %struct.passwd** %9, align 8
  %201 = icmp eq %struct.passwd* %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %193
  %205 = load %struct.passwd*, %struct.passwd** %8, align 8
  %206 = load %struct.passwd*, %struct.passwd** %9, align 8
  %207 = call i64 @pw_equal(%struct.passwd* %205, %struct.passwd* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load %struct.passwd*, %struct.passwd** %8, align 8
  %211 = getelementptr inbounds %struct.passwd, %struct.passwd* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.passwd*, %struct.passwd** %9, align 8
  %214 = getelementptr inbounds %struct.passwd, %struct.passwd* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = call i64 @strcmp(i8* %212, i8* %215)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %209
  %219 = call i32 (i32, i8*, ...) @errx(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %209, %204
  br label %221

221:                                              ; preds = %220, %179
  %222 = load %struct.passwd*, %struct.passwd** %8, align 8
  %223 = icmp ne %struct.passwd* %222, null
  br i1 %223, label %224, label %246

224:                                              ; preds = %221
  %225 = load i32, i32* @master_mode, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %246, label %227

227:                                              ; preds = %224
  %228 = call i8* @getpass(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i8* %228, i8** %13, align 8
  %229 = load i8*, i8** %13, align 8
  %230 = load %struct.passwd*, %struct.passwd** %8, align 8
  %231 = getelementptr inbounds %struct.passwd, %struct.passwd* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = call i8* @crypt(i8* %229, i8* %232)
  store i8* %233, i8** %15, align 8
  %234 = load i8*, i8** %15, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %243, label %236

236:                                              ; preds = %227
  %237 = load i8*, i8** %15, align 8
  %238 = load %struct.passwd*, %struct.passwd** %8, align 8
  %239 = getelementptr inbounds %struct.passwd, %struct.passwd* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @strcmp(i8* %237, i8* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236, %227
  %244 = call i32 (...) @baduser()
  br label %245

245:                                              ; preds = %243, %236
  br label %247

246:                                              ; preds = %224, %221
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %247

247:                                              ; preds = %246, %245
  %248 = load %struct.passwd*, %struct.passwd** %8, align 8
  %249 = icmp ne %struct.passwd* %248, null
  br i1 %249, label %250, label %260

250:                                              ; preds = %247
  %251 = load %struct.passwd*, %struct.passwd** %8, align 8
  %252 = getelementptr inbounds %struct.passwd, %struct.passwd* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @_PWF_SOURCE, align 4
  %255 = and i32 %253, %254
  %256 = load %struct.passwd*, %struct.passwd** %9, align 8
  %257 = getelementptr inbounds %struct.passwd, %struct.passwd* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %250, %247
  %261 = load %struct.passwd*, %struct.passwd** %9, align 8
  %262 = getelementptr inbounds %struct.passwd, %struct.passwd* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @_PWF_SOURCE, align 4
  %265 = and i32 %263, %264
  switch i32 %265, label %305 [
    i32 0, label %266
    i32 129, label %266
  ]

266:                                              ; preds = %260, %260
  %267 = call i64 @pw_init(i32* null, i32* null)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %271

271:                                              ; preds = %269, %266
  %272 = call i32 (...) @pw_lock()
  store i32 %272, i32* %11, align 4
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = call i32 (...) @pw_fini()
  %276 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %277

277:                                              ; preds = %274, %271
  %278 = call i32 @pw_tmp(i32 -1)
  store i32 %278, i32* %12, align 4
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = call i32 (...) @pw_fini()
  %282 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %277
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load %struct.passwd*, %struct.passwd** %9, align 8
  %287 = load %struct.passwd*, %struct.passwd** %8, align 8
  %288 = call i32 @pw_copy(i32 %284, i32 %285, %struct.passwd* %286, %struct.passwd* %287)
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = call i32 (...) @pw_fini()
  %292 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %283
  %294 = load %struct.passwd*, %struct.passwd** %9, align 8
  %295 = getelementptr inbounds %struct.passwd, %struct.passwd* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @pw_mkdb(i32 %296)
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = call i32 (...) @pw_fini()
  %301 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %293
  %303 = call i32 (...) @pw_fini()
  %304 = call i32 (i32, i8*, ...) @errx(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %307

305:                                              ; preds = %260
  %306 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %302
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @baduser(...) #1

declare dso_local %struct.passwd* @pw_dup(%struct.passwd*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @p_shell(i8*, %struct.passwd*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @p_expire(i8*, %struct.passwd*, i32*) #1

declare dso_local i32 @__pw_scan(i8*, %struct.passwd*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @pw_init(i32*, i32*) #1

declare dso_local i32 @pw_tmp(i32) #1

declare dso_local i32 @pw_fini(...) #1

declare dso_local i32 @free(%struct.passwd*) #1

declare dso_local %struct.passwd* @edit(i32, %struct.passwd*) #1

declare dso_local i32 @pw_tempname(...) #1

declare dso_local i64 @pw_equal(%struct.passwd*, %struct.passwd*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @getpass(i8*) #1

declare dso_local i8* @crypt(i8*, i8*) #1

declare dso_local i32 @pw_lock(...) #1

declare dso_local i32 @pw_copy(i32, i32, %struct.passwd*, %struct.passwd*) #1

declare dso_local i32 @pw_mkdb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

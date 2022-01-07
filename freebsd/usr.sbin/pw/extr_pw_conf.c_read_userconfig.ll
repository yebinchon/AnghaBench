; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_conf.c_read_userconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_conf.c_read_userconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userconf = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@config = common dso_local global %struct.userconf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" \09\0D\0A=\00", align 1
@read_userconfig.toks = internal constant [7 x i8] c" \09\0D\0A,=\00", align 1
@kwds = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"/home\00", align 1
@_DEF_DIRMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"/bin\00", align 1
@_UC_MAXSHELLS = common dso_local global i32 0, align 4
@system_shells = common dso_local global i8** null, align 8
@bourne_shell = common dso_local global i64 0, align 8
@UID_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Invalid min_uid: '%s'; ignoring\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Invalid max_uid: '%s'; ignoring\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Invalid min_gid: '%s'; ignoring\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Invalid max_gid: '%s'; ignoring\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Invalid expire days: '%s'; ignoring\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Invalid password days: '%s'; ignoring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.userconf* @read_userconfig(i8* %0) #0 {
  %2 = alloca %struct.userconf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* %8, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.userconf* @config, %struct.userconf** %2, align 8
  br label %360

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %354, %17
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @getline(i8** %5, i64* %8, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %355

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %354

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strtok(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %354

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 35
  br i1 %35, label %36, label %354

36:                                               ; preds = %31
  %37 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @read_userconfig.toks, i64 0, i64 0))
  store i8* %37, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %52, %36
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 143
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** @kwds, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i8* %42, i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %38
  %51 = phi i1 [ false, %38 ], [ %49, %41 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %38

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  switch i32 %56, label %353 [
    i32 148, label %57
    i32 130, label %60
    i32 131, label %63
    i32 134, label %66
    i32 146, label %79
    i32 135, label %92
    i32 140, label %105
    i32 141, label %118
    i32 142, label %131
    i32 129, label %150
    i32 128, label %163
    i32 147, label %200
    i32 149, label %215
    i32 144, label %234
    i32 150, label %249
    i32 136, label %262
    i32 138, label %277
    i32 137, label %292
    i32 139, label %307
    i32 145, label %322
    i32 132, label %337
    i32 143, label %352
    i32 133, label %352
  ]

57:                                               ; preds = %55
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @passwd_val(i8* %58, i32 1)
  store i32 %59, i32* getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 19), align 8
  br label %353

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @boolean_val(i8* %61, i32 0)
  store i8* %62, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 18), align 8
  br label %353

63:                                               ; preds = %55
  %64 = load i8*, i8** %10, align 8
  %65 = call i8* @boolean_val(i8* %64, i32 0)
  store i8* %65, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 17), align 8
  br label %353

66:                                               ; preds = %55
  %67 = load i8*, i8** %10, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = call i8* @boolean_val(i8* %70, i32 1)
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69, %66
  br label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = call i8* @newstr(i8* %75)
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i8* [ null, %73 ], [ %76, %74 ]
  store i8* %78, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 0), align 8
  br label %353

79:                                               ; preds = %55
  %80 = load i8*, i8** %10, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %10, align 8
  %84 = call i8* @boolean_val(i8* %83, i32 1)
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %79
  br label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %10, align 8
  %89 = call i8* @newstr(i8* %88)
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i8* [ null, %86 ], [ %89, %87 ]
  store i8* %91, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 1), align 8
  br label %353

92:                                               ; preds = %55
  %93 = load i8*, i8** %10, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %10, align 8
  %97 = call i8* @boolean_val(i8* %96, i32 1)
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %92
  br label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = call i8* @newstr(i8* %101)
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i8* [ null, %99 ], [ %102, %100 ]
  store i8* %104, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 2), align 8
  br label %353

105:                                              ; preds = %55
  %106 = load i8*, i8** %10, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %10, align 8
  %110 = call i8* @boolean_val(i8* %109, i32 1)
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108, %105
  br label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = call i8* @newstr(i8* %114)
  br label %116

116:                                              ; preds = %113, %112
  %117 = phi i8* [ null, %112 ], [ %115, %113 ]
  store i8* %117, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 3), align 8
  br label %353

118:                                              ; preds = %55
  %119 = load i8*, i8** %10, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load i8*, i8** %10, align 8
  %123 = call i8* @boolean_val(i8* %122, i32 1)
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %121, %118
  br label %129

126:                                              ; preds = %121
  %127 = load i8*, i8** %10, align 8
  %128 = call i8* @newstr(i8* %127)
  br label %129

129:                                              ; preds = %126, %125
  %130 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %125 ], [ %128, %126 ]
  store i8* %130, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 4), align 8
  br label %353

131:                                              ; preds = %55
  %132 = load i8*, i8** %10, align 8
  %133 = call i8* @setmode(i8* %132)
  store i8* %133, i8** %12, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i8*, i8** %10, align 8
  %138 = call i8* @boolean_val(i8* %137, i32 1)
  %139 = icmp ne i8* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %136, %131
  %141 = load i32, i32* @_DEF_DIRMODE, align 4
  br label %146

142:                                              ; preds = %136
  %143 = load i8*, i8** %12, align 8
  %144 = load i32, i32* @_DEF_DIRMODE, align 4
  %145 = call i32 @getmode(i8* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %140
  %147 = phi i32 [ %141, %140 ], [ %145, %142 ]
  store i32 %147, i32* getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 16), align 8
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @free(i8* %148)
  br label %353

150:                                              ; preds = %55
  %151 = load i8*, i8** %10, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %10, align 8
  %155 = call i8* @boolean_val(i8* %154, i32 1)
  %156 = icmp ne i8* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %153, %150
  br label %161

158:                                              ; preds = %153
  %159 = load i8*, i8** %10, align 8
  %160 = call i8* @newstr(i8* %159)
  br label %161

161:                                              ; preds = %158, %157
  %162 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %157 ], [ %160, %158 ]
  store i8* %162, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 5), align 8
  br label %353

163:                                              ; preds = %55
  store i32 0, i32* %11, align 4
  br label %164

164:                                              ; preds = %180, %163
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @_UC_MAXSHELLS, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i8*, i8** %10, align 8
  %170 = icmp ne i8* %169, null
  br label %171

171:                                              ; preds = %168, %164
  %172 = phi i1 [ false, %164 ], [ %170, %168 ]
  br i1 %172, label %173, label %184

173:                                              ; preds = %171
  %174 = load i8*, i8** %10, align 8
  %175 = call i8* @newstr(i8* %174)
  %176 = load i8**, i8*** @system_shells, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  store i8* %175, i8** %179, align 8
  br label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  %183 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @read_userconfig.toks, i64 0, i64 0))
  store i8* %183, i8** %10, align 8
  br label %164

184:                                              ; preds = %171
  %185 = load i32, i32* %11, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  br label %188

188:                                              ; preds = %192, %187
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @_UC_MAXSHELLS, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i8**, i8*** @system_shells, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8*, i8** %193, i64 %196
  store i8* null, i8** %197, align 8
  br label %188

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %184
  br label %353

200:                                              ; preds = %55
  %201 = load i8*, i8** %10, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load i8*, i8** %10, align 8
  %205 = call i8* @boolean_val(i8* %204, i32 1)
  %206 = icmp ne i8* %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %203, %200
  %208 = load i64, i64* @bourne_shell, align 8
  %209 = inttoptr i64 %208 to i8*
  br label %213

210:                                              ; preds = %203
  %211 = load i8*, i8** %10, align 8
  %212 = call i8* @newstr(i8* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = phi i8* [ %209, %207 ], [ %212, %210 ]
  store i8* %214, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 6), align 8
  br label %353

215:                                              ; preds = %55
  %216 = load i8*, i8** %10, align 8
  %217 = call i8* @unquote(i8* %216)
  store i8* %217, i8** %10, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = icmp eq i8* %218, null
  br i1 %219, label %228, label %220

220:                                              ; preds = %215
  %221 = load i8*, i8** %10, align 8
  %222 = call i8* @boolean_val(i8* %221, i32 1)
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i8*, i8** %10, align 8
  %226 = call i32* @GETGRNAM(i8* %225)
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %224, %220, %215
  br label %232

229:                                              ; preds = %224
  %230 = load i8*, i8** %10, align 8
  %231 = call i8* @newstr(i8* %230)
  br label %232

232:                                              ; preds = %229, %228
  %233 = phi i8* [ null, %228 ], [ %231, %229 ]
  store i8* %233, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 7), align 8
  br label %353

234:                                              ; preds = %55
  br label %235

235:                                              ; preds = %243, %234
  %236 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @read_userconfig.toks, i64 0, i64 0))
  store i8* %236, i8** %10, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  %239 = load i32*, i32** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 15), align 8
  %240 = icmp eq i32* %239, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = call i32* (...) @sl_init()
  store i32* %242, i32** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 15), align 8
  br label %243

243:                                              ; preds = %241, %238
  %244 = load i32*, i32** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 15), align 8
  %245 = load i8*, i8** %10, align 8
  %246 = call i8* @newstr(i8* %245)
  %247 = call i32 @sl_add(i32* %244, i8* %246)
  br label %235

248:                                              ; preds = %235
  br label %353

249:                                              ; preds = %55
  %250 = load i8*, i8** %10, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = load i8*, i8** %10, align 8
  %254 = call i8* @boolean_val(i8* %253, i32 1)
  %255 = icmp ne i8* %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %252, %249
  br label %260

257:                                              ; preds = %252
  %258 = load i8*, i8** %10, align 8
  %259 = call i8* @newstr(i8* %258)
  br label %260

260:                                              ; preds = %257, %256
  %261 = phi i8* [ null, %256 ], [ %259, %257 ]
  store i8* %261, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 8), align 8
  br label %353

262:                                              ; preds = %55
  %263 = load i8*, i8** %10, align 8
  %264 = call i8* @unquote(i8* %263)
  store i8* %264, i8** %10, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %276

266:                                              ; preds = %262
  %267 = load i8*, i8** %10, align 8
  %268 = load i32, i32* @UID_MAX, align 4
  %269 = call i8* @strtounum(i8* %267, i32 0, i32 %268, i8** %7)
  store i8* %269, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 14), align 8
  %270 = load i8*, i8** %7, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = load i8*, i8** %10, align 8
  %274 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %273)
  br label %275

275:                                              ; preds = %272, %266
  br label %276

276:                                              ; preds = %275, %262
  br label %353

277:                                              ; preds = %55
  %278 = load i8*, i8** %10, align 8
  %279 = call i8* @unquote(i8* %278)
  store i8* %279, i8** %10, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %291

281:                                              ; preds = %277
  %282 = load i8*, i8** %10, align 8
  %283 = load i32, i32* @UID_MAX, align 4
  %284 = call i8* @strtounum(i8* %282, i32 0, i32 %283, i8** %7)
  store i8* %284, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 13), align 8
  %285 = load i8*, i8** %7, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = load i8*, i8** %10, align 8
  %289 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %288)
  br label %290

290:                                              ; preds = %287, %281
  br label %291

291:                                              ; preds = %290, %277
  br label %353

292:                                              ; preds = %55
  %293 = load i8*, i8** %10, align 8
  %294 = call i8* @unquote(i8* %293)
  store i8* %294, i8** %10, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %306

296:                                              ; preds = %292
  %297 = load i8*, i8** %10, align 8
  %298 = load i32, i32* @GID_MAX, align 4
  %299 = call i8* @strtounum(i8* %297, i32 0, i32 %298, i8** %7)
  store i8* %299, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 12), align 8
  %300 = load i8*, i8** %7, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %296
  %303 = load i8*, i8** %10, align 8
  %304 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %303)
  br label %305

305:                                              ; preds = %302, %296
  br label %306

306:                                              ; preds = %305, %292
  br label %353

307:                                              ; preds = %55
  %308 = load i8*, i8** %10, align 8
  %309 = call i8* @unquote(i8* %308)
  store i8* %309, i8** %10, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %321

311:                                              ; preds = %307
  %312 = load i8*, i8** %10, align 8
  %313 = load i32, i32* @GID_MAX, align 4
  %314 = call i8* @strtounum(i8* %312, i32 0, i32 %313, i8** %7)
  store i8* %314, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 11), align 8
  %315 = load i8*, i8** %7, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load i8*, i8** %10, align 8
  %319 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %318)
  br label %320

320:                                              ; preds = %317, %311
  br label %321

321:                                              ; preds = %320, %307
  br label %353

322:                                              ; preds = %55
  %323 = load i8*, i8** %10, align 8
  %324 = call i8* @unquote(i8* %323)
  store i8* %324, i8** %10, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %336

326:                                              ; preds = %322
  %327 = load i8*, i8** %10, align 8
  %328 = load i32, i32* @INT_MAX, align 4
  %329 = call i8* @strtonum(i8* %327, i32 0, i32 %328, i8** %7)
  store i8* %329, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 10), align 8
  %330 = load i8*, i8** %7, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  %333 = load i8*, i8** %10, align 8
  %334 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %333)
  br label %335

335:                                              ; preds = %332, %326
  br label %336

336:                                              ; preds = %335, %322
  br label %353

337:                                              ; preds = %55
  %338 = load i8*, i8** %10, align 8
  %339 = call i8* @unquote(i8* %338)
  store i8* %339, i8** %10, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %351

341:                                              ; preds = %337
  %342 = load i8*, i8** %10, align 8
  %343 = load i32, i32* @INT_MAX, align 4
  %344 = call i8* @strtonum(i8* %342, i32 0, i32 %343, i8** %7)
  store i8* %344, i8** getelementptr inbounds (%struct.userconf, %struct.userconf* @config, i32 0, i32 9), align 8
  %345 = load i8*, i8** %7, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %341
  %348 = load i8*, i8** %10, align 8
  %349 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %348)
  br label %350

350:                                              ; preds = %347, %341
  br label %351

351:                                              ; preds = %350, %337
  br label %353

352:                                              ; preds = %55, %55
  br label %353

353:                                              ; preds = %55, %352, %351, %336, %321, %306, %291, %276, %260, %248, %232, %213, %199, %161, %146, %129, %116, %103, %90, %77, %63, %60, %57
  br label %354

354:                                              ; preds = %353, %31, %27, %22
  br label %18

355:                                              ; preds = %18
  %356 = load i8*, i8** %5, align 8
  %357 = call i32 @free(i8* %356)
  %358 = load i32*, i32** %4, align 8
  %359 = call i32 @fclose(i32* %358)
  store %struct.userconf* @config, %struct.userconf** %2, align 8
  br label %360

360:                                              ; preds = %355, %16
  %361 = load %struct.userconf*, %struct.userconf** %2, align 8
  ret %struct.userconf* %361
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @passwd_val(i8*, i32) #1

declare dso_local i8* @boolean_val(i8*, i32) #1

declare dso_local i8* @newstr(i8*) #1

declare dso_local i8* @setmode(i8*) #1

declare dso_local i32 @getmode(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @unquote(i8*) #1

declare dso_local i32* @GETGRNAM(i8*) #1

declare dso_local i32* @sl_init(...) #1

declare dso_local i32 @sl_add(i32*, i8*) #1

declare dso_local i8* @strtounum(i8*, i32, i32, i8**) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i8* @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

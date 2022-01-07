; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_user_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_user_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.userconf = type { i8* }
%struct.passwd = type { i32, i64, i8*, i32, i32 }
%struct.group = type { i8**, i32 }
%struct.stat = type { i32 }

@MAXLOGNAME = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@UID_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"C:qn:u:rYy:\00", align 1
@optarg = common dso_local global i8* null, align 8
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"username or id required\00", align 1
@EX_NOUSER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"no such uid `%ju'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no such user `%s'\00", align 1
@PWF = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PWF_REGULAR = common dso_local global i64 0, align 8
@_PWF_SOURCE = common dso_local global i32 0, align 4
@_PWF_FILES = common dso_local global i32 0, align 4
@_PWF_NIS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot remove NIS user `%s'\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Cannot remove non local user `%s'\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"cannot remove user 'root'\00", align 1
@PWF_ALT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"/var/cron/tabs/%s\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"crontab -u %s -r\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_PATH_MAILDIR = common dso_local global i8* null, align 8
@LOGNAMESIZE = common dso_local global i32 0, align 4
@EX_IOERR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"user '%s' does not exist\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"passwd update\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"WARNING: user '%s' does not exist in NIS passwd\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"WARNING: NIS passwd update\00", align 1
@M_DELETE = common dso_local global i32 0, align 4
@W_USER = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"%s(%ju) account removed\00", align 1
@conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"%s(%ju) home '%s' %sremoved\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"not completely \00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_user_del(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.userconf*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.group*, align 8
  %10 = alloca %struct.group*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.stat, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.userconf* null, %struct.userconf** %7, align 8
  store %struct.passwd* null, %struct.passwd** %8, align 8
  store i8* null, i8** %11, align 8
  %30 = load i32, i32* @MAXLOGNAME, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %12, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  store i8* null, i8** %14, align 8
  %34 = load i32, i32* @MAXPATHLEN, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  %37 = load i32, i32* @MAXPATHLEN, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %16, align 8
  store i8* null, i8** %17, align 8
  store i64 -1, i64* %19, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %3
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strspn(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @UID_MAX, align 4
  %53 = call i64 @pw_checkid(i8* %51, i32 %52)
  store i64 %53, i64* %19, align 8
  br label %56

54:                                               ; preds = %42
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %11, align 8
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %3
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @getopt(i32 %59, i8** %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %20, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load i32, i32* %20, align 4
  switch i32 %64, label %78 [
    i32 67, label %65
    i32 113, label %67
    i32 110, label %68
    i32 117, label %70
    i32 114, label %74
    i32 121, label %75
    i32 89, label %77
  ]

65:                                               ; preds = %63
  %66 = load i8*, i8** @optarg, align 8
  store i8* %66, i8** %17, align 8
  br label %78

67:                                               ; preds = %63
  store i32 1, i32* %24, align 4
  br label %78

68:                                               ; preds = %63
  %69 = load i8*, i8** @optarg, align 8
  store i8* %69, i8** %11, align 8
  br label %78

70:                                               ; preds = %63
  %71 = load i8*, i8** @optarg, align 8
  %72 = load i32, i32* @UID_MAX, align 4
  %73 = call i64 @pw_checkid(i8* %71, i32 %72)
  store i64 %73, i64* %19, align 8
  br label %78

74:                                               ; preds = %63
  store i32 1, i32* %23, align 4
  br label %78

75:                                               ; preds = %63
  %76 = load i8*, i8** @optarg, align 8
  store i8* %76, i8** %14, align 8
  br label %78

77:                                               ; preds = %63
  store i32 1, i32* %22, align 4
  br label %78

78:                                               ; preds = %63, %77, %75, %74, %70, %68, %67, %65
  br label %58

79:                                               ; preds = %58
  %80 = load i32, i32* %24, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @_PATH_DEVNULL, align 4
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @freopen(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i64, i64* %19, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @EX_DATAERR, align 4
  %94 = call i32 (i32, i8*, ...) @errx(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89, %86
  %96 = load i8*, i8** %17, align 8
  %97 = call %struct.userconf* @get_userconfig(i8* %96)
  store %struct.userconf* %97, %struct.userconf** %7, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.userconf*, %struct.userconf** %7, align 8
  %102 = getelementptr inbounds %struct.userconf, %struct.userconf* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %14, align 8
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @pw_checkname(i8* %108, i32 0)
  %110 = call %struct.passwd* @GETPWNAM(i32 %109)
  br label %114

111:                                              ; preds = %104
  %112 = load i64, i64* %19, align 8
  %113 = call %struct.passwd* @GETPWUID(i64 %112)
  br label %114

114:                                              ; preds = %111, %107
  %115 = phi %struct.passwd* [ %110, %107 ], [ %113, %111 ]
  store %struct.passwd* %115, %struct.passwd** %8, align 8
  %116 = load %struct.passwd*, %struct.passwd** %8, align 8
  %117 = icmp eq %struct.passwd* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i8*, i8** %11, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* @EX_NOUSER, align 4
  %123 = load i64, i64* %19, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i32, i8*, ...) @errx(i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* @EX_NOUSER, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 (i32, i8*, ...) @errx(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %126, %114
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PWF, i32 0, i32 0), align 8
  %132 = load i64, i64* @PWF_REGULAR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %130
  %135 = load %struct.passwd*, %struct.passwd** %8, align 8
  %136 = getelementptr inbounds %struct.passwd, %struct.passwd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @_PWF_SOURCE, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @_PWF_FILES, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %134
  %143 = load %struct.passwd*, %struct.passwd** %8, align 8
  %144 = getelementptr inbounds %struct.passwd, %struct.passwd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @_PWF_SOURCE, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @_PWF_NIS, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %142
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %14, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i8*, i8** %14, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 47
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* @EX_NOUSER, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 (i32, i8*, ...) @errx(i32 %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %161, %156, %153, %150
  br label %170

166:                                              ; preds = %142
  %167 = load i32, i32* @EX_NOUSER, align 4
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 (i32, i8*, ...) @errx(i32 %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %166, %165
  br label %171

171:                                              ; preds = %170, %134, %130
  %172 = load %struct.passwd*, %struct.passwd** %8, align 8
  %173 = getelementptr inbounds %struct.passwd, %struct.passwd* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %19, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load %struct.passwd*, %struct.passwd** %8, align 8
  %179 = getelementptr inbounds %struct.passwd, %struct.passwd* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %11, align 8
  br label %181

181:                                              ; preds = %177, %171
  %182 = load %struct.passwd*, %struct.passwd** %8, align 8
  %183 = getelementptr inbounds %struct.passwd, %struct.passwd* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* @EX_DATAERR, align 4
  %189 = call i32 (i32, i8*, ...) @errx(i32 %188, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %181
  %191 = call i64 (...) @PWALTDIR()
  %192 = load i64, i64* @PWF_ALT, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load %struct.passwd*, %struct.passwd** %8, align 8
  %196 = getelementptr inbounds %struct.passwd, %struct.passwd* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @rmopie(i8* %197)
  br label %199

199:                                              ; preds = %194, %190
  %200 = call i64 (...) @PWALTDIR()
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %219, label %202

202:                                              ; preds = %199
  %203 = trunc i64 %35 to i32
  %204 = load %struct.passwd*, %struct.passwd** %8, align 8
  %205 = getelementptr inbounds %struct.passwd, %struct.passwd* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %206)
  %208 = load i32, i32* @F_OK, align 4
  %209 = call i64 @access(i8* %36, i32 %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %202
  %212 = trunc i64 %35 to i32
  %213 = load %struct.passwd*, %struct.passwd** %8, align 8
  %214 = getelementptr inbounds %struct.passwd, %struct.passwd* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %215)
  %217 = call i32 @system(i8* %36)
  br label %218

218:                                              ; preds = %211, %202
  br label %219

219:                                              ; preds = %218, %199
  %220 = trunc i64 %35 to i32
  %221 = load i8*, i8** @_PATH_MAILDIR, align 8
  %222 = load %struct.passwd*, %struct.passwd** %8, align 8
  %223 = getelementptr inbounds %struct.passwd, %struct.passwd* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %36, i32 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %221, i8* %224)
  %226 = load %struct.passwd*, %struct.passwd** %8, align 8
  %227 = getelementptr inbounds %struct.passwd, %struct.passwd* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = trunc i64 %38 to i32
  %230 = call i32 @strlcpy(i8* %39, i32 %228, i32 %229)
  %231 = load %struct.passwd*, %struct.passwd** %8, align 8
  %232 = getelementptr inbounds %struct.passwd, %struct.passwd* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call %struct.group* @GETGRGID(i32 %233)
  store %struct.group* %234, %struct.group** %9, align 8
  %235 = load %struct.group*, %struct.group** %9, align 8
  %236 = icmp ne %struct.group* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %219
  %238 = load %struct.group*, %struct.group** %9, align 8
  %239 = getelementptr inbounds %struct.group, %struct.group* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @LOGNAMESIZE, align 4
  %242 = call i32 @strlcpy(i8* %33, i32 %240, i32 %241)
  br label %245

243:                                              ; preds = %219
  %244 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %244, align 16
  br label %245

245:                                              ; preds = %243, %237
  %246 = load %struct.passwd*, %struct.passwd** %8, align 8
  %247 = call i32 @delpwent(%struct.passwd* %246)
  store i32 %247, i32* %21, align 4
  %248 = load i32, i32* %21, align 4
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load i32, i32* @EX_IOERR, align 4
  %252 = load %struct.passwd*, %struct.passwd** %8, align 8
  %253 = getelementptr inbounds %struct.passwd, %struct.passwd* %252, i32 0, i32 2
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 (i32, i8*, ...) @err(i32 %251, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %254)
  br label %263

256:                                              ; preds = %245
  %257 = load i32, i32* %21, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* @EX_IOERR, align 4
  %261 = call i32 (i32, i8*, ...) @err(i32 %260, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %250
  %264 = load i32, i32* %22, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %292

266:                                              ; preds = %263
  %267 = load i8*, i8** %14, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %292

269:                                              ; preds = %266
  %270 = load i8*, i8** %14, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 47
  br i1 %273, label %274, label %292

274:                                              ; preds = %269
  %275 = load i8*, i8** %14, align 8
  %276 = load i8*, i8** %11, align 8
  %277 = call i32 @delnispwent(i8* %275, i8* %276)
  store i32 %277, i32* %21, align 4
  %278 = load i32, i32* %21, align 4
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = load %struct.passwd*, %struct.passwd** %8, align 8
  %282 = getelementptr inbounds %struct.passwd, %struct.passwd* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* %283)
  br label %291

285:                                              ; preds = %274
  %286 = load i32, i32* %21, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %285
  br label %291

291:                                              ; preds = %290, %280
  br label %292

292:                                              ; preds = %291, %269, %266, %263
  %293 = load i8*, i8** %11, align 8
  %294 = call %struct.group* @GETGRNAM(i8* %293)
  store %struct.group* %294, %struct.group** %10, align 8
  %295 = load %struct.group*, %struct.group** %10, align 8
  %296 = icmp ne %struct.group* %295, null
  br i1 %296, label %297, label %316

297:                                              ; preds = %292
  %298 = load %struct.group*, %struct.group** %10, align 8
  %299 = getelementptr inbounds %struct.group, %struct.group* %298, i32 0, i32 0
  %300 = load i8**, i8*** %299, align 8
  %301 = icmp eq i8** %300, null
  br i1 %301, label %308, label %302

302:                                              ; preds = %297
  %303 = load %struct.group*, %struct.group** %10, align 8
  %304 = getelementptr inbounds %struct.group, %struct.group* %303, i32 0, i32 0
  %305 = load i8**, i8*** %304, align 8
  %306 = load i8*, i8** %305, align 8
  %307 = icmp eq i8* %306, null
  br i1 %307, label %308, label %316

308:                                              ; preds = %302, %297
  %309 = load i8*, i8** %11, align 8
  %310 = call i64 @strcmp(i8* %309, i8* %33)
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %308
  %313 = load i8*, i8** %11, align 8
  %314 = call %struct.group* @GETGRNAM(i8* %313)
  %315 = call i32 @delgrent(%struct.group* %314)
  br label %316

316:                                              ; preds = %312, %308, %302, %292
  %317 = call i32 (...) @SETGRENT()
  br label %318

318:                                              ; preds = %397, %394, %316
  %319 = call %struct.group* (...) @GETGRENT()
  store %struct.group* %319, %struct.group** %10, align 8
  %320 = icmp ne %struct.group* %319, null
  br i1 %320, label %321, label %398

321:                                              ; preds = %318
  %322 = load i32, i32* @MAXLOGNAME, align 4
  %323 = zext i32 %322 to i64
  %324 = call i8* @llvm.stacksave()
  store i8* %324, i8** %27, align 8
  %325 = alloca i8, i64 %323, align 16
  store i64 %323, i64* %28, align 8
  %326 = load %struct.group*, %struct.group** %10, align 8
  %327 = getelementptr inbounds %struct.group, %struct.group* %326, i32 0, i32 0
  %328 = load i8**, i8*** %327, align 8
  %329 = icmp eq i8** %328, null
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  store i32 5, i32* %29, align 4
  br label %394

331:                                              ; preds = %321
  store i32 0, i32* %25, align 4
  br label %332

332:                                              ; preds = %390, %331
  %333 = load %struct.group*, %struct.group** %10, align 8
  %334 = getelementptr inbounds %struct.group, %struct.group* %333, i32 0, i32 0
  %335 = load i8**, i8*** %334, align 8
  %336 = load i32, i32* %25, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8*, i8** %335, i64 %337
  %339 = load i8*, i8** %338, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %393

341:                                              ; preds = %332
  %342 = load %struct.group*, %struct.group** %10, align 8
  %343 = getelementptr inbounds %struct.group, %struct.group* %342, i32 0, i32 0
  %344 = load i8**, i8*** %343, align 8
  %345 = load i32, i32* %25, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i8*, i8** %344, i64 %346
  %348 = load i8*, i8** %347, align 8
  %349 = load i8*, i8** %11, align 8
  %350 = call i64 @strcmp(i8* %348, i8* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %341
  br label %390

353:                                              ; preds = %341
  %354 = load i32, i32* %25, align 4
  store i32 %354, i32* %26, align 4
  br label %355

355:                                              ; preds = %379, %353
  %356 = load %struct.group*, %struct.group** %10, align 8
  %357 = getelementptr inbounds %struct.group, %struct.group* %356, i32 0, i32 0
  %358 = load i8**, i8*** %357, align 8
  %359 = load i32, i32* %26, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8*, i8** %358, i64 %360
  %362 = load i8*, i8** %361, align 8
  %363 = icmp ne i8* %362, null
  br i1 %363, label %364, label %382

364:                                              ; preds = %355
  %365 = load %struct.group*, %struct.group** %10, align 8
  %366 = getelementptr inbounds %struct.group, %struct.group* %365, i32 0, i32 0
  %367 = load i8**, i8*** %366, align 8
  %368 = load i32, i32* %26, align 4
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8*, i8** %367, i64 %370
  %372 = load i8*, i8** %371, align 8
  %373 = load %struct.group*, %struct.group** %10, align 8
  %374 = getelementptr inbounds %struct.group, %struct.group* %373, i32 0, i32 0
  %375 = load i8**, i8*** %374, align 8
  %376 = load i32, i32* %26, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8*, i8** %375, i64 %377
  store i8* %372, i8** %378, align 8
  br label %379

379:                                              ; preds = %364
  %380 = load i32, i32* %26, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %26, align 4
  br label %355

382:                                              ; preds = %355
  %383 = load %struct.group*, %struct.group** %10, align 8
  %384 = getelementptr inbounds %struct.group, %struct.group* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @MAXLOGNAME, align 4
  %387 = call i32 @strlcpy(i8* %325, i32 %385, i32 %386)
  %388 = load %struct.group*, %struct.group** %10, align 8
  %389 = call i32 @chggrent(i8* %325, %struct.group* %388)
  br label %390

390:                                              ; preds = %382, %352
  %391 = load i32, i32* %25, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %25, align 4
  br label %332

393:                                              ; preds = %332
  store i32 0, i32* %29, align 4
  br label %394

394:                                              ; preds = %393, %330
  %395 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %395)
  %396 = load i32, i32* %29, align 4
  switch i32 %396, label %464 [
    i32 0, label %397
    i32 5, label %318
  ]

397:                                              ; preds = %394
  br label %318

398:                                              ; preds = %318
  %399 = call i32 (...) @ENDGRENT()
  %400 = load %struct.userconf*, %struct.userconf** %7, align 8
  %401 = load i32, i32* @M_DELETE, align 4
  %402 = load i32, i32* @W_USER, align 4
  %403 = load i8*, i8** %11, align 8
  %404 = load i64, i64* %19, align 8
  %405 = trunc i64 %404 to i32
  %406 = call i32 (%struct.userconf*, i32, i32, i8*, i8*, i32, ...) @pw_log(%struct.userconf* %400, i32 %401, i32 %402, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %403, i32 %405)
  %407 = call i64 (...) @PWALTDIR()
  %408 = load i64, i64* @PWF_ALT, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %414

410:                                              ; preds = %398
  %411 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @conf, i32 0, i32 0), align 4
  %412 = getelementptr inbounds i8, i8* %36, i64 1
  %413 = call i32 @unlinkat(i32 %411, i8* %412, i32 0)
  br label %414

414:                                              ; preds = %410, %398
  %415 = call i64 (...) @PWALTDIR()
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %414
  %418 = load i64, i64* %19, align 8
  %419 = call i32* @getpwuid(i64 %418)
  %420 = icmp eq i32* %419, null
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = load i64, i64* %19, align 8
  %423 = call i32 @rmat(i64 %422)
  br label %424

424:                                              ; preds = %421, %417, %414
  %425 = call i64 (...) @PWALTDIR()
  %426 = load i64, i64* @PWF_ALT, align 8
  %427 = icmp ne i64 %425, %426
  br i1 %427, label %428, label %461

428:                                              ; preds = %424
  %429 = load i32, i32* %23, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %461

431:                                              ; preds = %428
  %432 = load i8, i8* %39, align 16
  %433 = sext i8 %432 to i32
  %434 = icmp eq i32 %433, 47
  br i1 %434, label %435, label %461

435:                                              ; preds = %431
  %436 = load i64, i64* %19, align 8
  %437 = call %struct.passwd* @GETPWUID(i64 %436)
  %438 = icmp eq %struct.passwd* %437, null
  br i1 %438, label %439, label %461

439:                                              ; preds = %435
  %440 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @conf, i32 0, i32 0), align 4
  %441 = getelementptr inbounds i8, i8* %39, i64 1
  %442 = call i32 @fstatat(i32 %440, i8* %441, %struct.stat* %18, i32 0)
  %443 = icmp ne i32 %442, -1
  br i1 %443, label %444, label %461

444:                                              ; preds = %439
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @conf, i32 0, i32 0), align 4
  %446 = load i64, i64* %19, align 8
  %447 = call i32 @rm_r(i32 %445, i8* %39, i64 %446)
  %448 = load %struct.userconf*, %struct.userconf** %7, align 8
  %449 = load i32, i32* @M_DELETE, align 4
  %450 = load i32, i32* @W_USER, align 4
  %451 = load i8*, i8** %11, align 8
  %452 = load i64, i64* %19, align 8
  %453 = trunc i64 %452 to i32
  %454 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @conf, i32 0, i32 0), align 4
  %455 = getelementptr inbounds i8, i8* %39, i64 1
  %456 = call i32 @fstatat(i32 %454, i8* %455, %struct.stat* %18, i32 0)
  %457 = icmp eq i32 %456, -1
  %458 = zext i1 %457 to i64
  %459 = select i1 %457, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0)
  %460 = call i32 (%struct.userconf*, i32, i32, i8*, i8*, i32, ...) @pw_log(%struct.userconf* %448, i32 %449, i32 %450, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %451, i32 %453, i8* %39, i8* %459)
  br label %461

461:                                              ; preds = %444, %439, %435, %431, %428, %424
  %462 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 1, i32* %29, align 4
  %463 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %463)
  ret i32 %462

464:                                              ; preds = %394
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @pw_checkid(i8*, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @freopen(i32, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local %struct.userconf* @get_userconfig(i8*) #2

declare dso_local %struct.passwd* @GETPWNAM(i32) #2

declare dso_local i32 @pw_checkname(i8*, i32) #2

declare dso_local %struct.passwd* @GETPWUID(i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @PWALTDIR(...) #2

declare dso_local i32 @rmopie(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local %struct.group* @GETGRGID(i32) #2

declare dso_local i32 @delpwent(%struct.passwd*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @delnispwent(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local %struct.group* @GETGRNAM(i8*) #2

declare dso_local i32 @delgrent(%struct.group*) #2

declare dso_local i32 @SETGRENT(...) #2

declare dso_local %struct.group* @GETGRENT(...) #2

declare dso_local i32 @chggrent(i8*, %struct.group*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @ENDGRENT(...) #2

declare dso_local i32 @pw_log(%struct.userconf*, i32, i32, i8*, i8*, i32, ...) #2

declare dso_local i32 @unlinkat(i32, i8*, i32) #2

declare dso_local i32* @getpwuid(i64) #2

declare dso_local i32 @rmat(i64) #2

declare dso_local i32 @fstatat(i32, i8*, %struct.stat*, i32) #2

declare dso_local i32 @rm_r(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_user_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_user_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.userconf = type { i8*, i8*, i64, i32, i32, i32 }
%struct.passwd = type { i8*, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.group = type { i64, i8**, i8* }
%struct.TYPE_5__ = type { i64, i8** }
%struct.stat = type { i32 }

@__const.pw_user_mod.args = private unnamed_addr constant [42 x i8] c"C:qn:u:c:d:e:p:g:G:mM:l:k:s:w:L:h:H:NPYy:\00", align 16
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@UID_MAX = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EX_OSFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"skeleton `%s' does not exists\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"skeleton `%s' is not a directory\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"'-h' and '-H' are mutually exclusive options\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"-H expects a file descriptor\00", align 1
@EX_NOPERM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"you must be root\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"username or id required\00", align 1
@EX_NOUSER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"no such uid `%ju'\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"no such user `%s'\00", align 1
@PWF = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PWF_REGULAR = common dso_local global i64 0, align 8
@_PWF_SOURCE = common dso_local global i32 0, align 4
@_PWF_FILES = common dso_local global i32 0, align 4
@_PWF_NIS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"Cannot modify NIS user `%s'\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Cannot modify non local user `%s'\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"can't rename `root' account\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"can't change uid of `root' account\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"WARNING: account `%s' will have a uid of 0 (superuser access!)\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"WARNING: home `%s' does not exist\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"WARNING: home `%s' is not a directory\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"setting crypt(3) format\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"user '%s' disappeared during update\00", align 1
@M_UPDATE = common dso_local global i32 0, align 4
@W_USER = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [25 x i8] c"%s(%ju):%s(%ju):%s:%s:%s\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@PWF_ALT = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [17 x i8] c"NIS maps updated\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_user_mod(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.userconf*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca %struct.group*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca [42 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.stat, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %43 = bitcast [42 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 getelementptr inbounds ([42 x i8], [42 x i8]* @__const.pw_user_mod.args, i32 0, i32 0), i64 42, i1 false)
  store i8* null, i8** %13, align 8
  store i64 -1, i64* %27, align 8
  store i32 -1, i32* %29, align 4
  store i64 0, i64* %39, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %41, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %40, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %24, align 8
  store i8* null, i8** %23, align 8
  store i32 0, i32* %38, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %37, align 4
  %44 = call i8* @time(i32* null)
  store i8* %44, i8** %42, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %3
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @strspn(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @UID_MAX, align 4
  %58 = call i64 @pw_checkid(i8* %56, i32 %57)
  store i64 %58, i64* %27, align 8
  br label %61

59:                                               ; preds = %47
  %60 = load i8*, i8** %7, align 8
  store i8* %60, i8** %17, align 8
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %61, %3
  br label %63

63:                                               ; preds = %170, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds [42 x i8], [42 x i8]* %12, i64 0, i64 0
  %67 = call i32 @getopt(i32 %64, i8** %65, i8* %66)
  store i32 %67, i32* %28, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %171

69:                                               ; preds = %63
  %70 = load i32, i32* %28, align 4
  switch i32 %70, label %170 [
    i32 67, label %71
    i32 113, label %73
    i32 110, label %74
    i32 117, label %76
    i32 99, label %80
    i32 100, label %83
    i32 101, label %85
    i32 112, label %89
    i32 103, label %93
    i32 71, label %97
    i32 109, label %100
    i32 77, label %101
    i32 108, label %104
    i32 107, label %106
    i32 115, label %134
    i32 119, label %136
    i32 76, label %138
    i32 72, label %141
    i32 104, label %156
    i32 78, label %165
    i32 80, label %166
    i32 121, label %167
    i32 89, label %169
  ]

71:                                               ; preds = %69
  %72 = load i8*, i8** @optarg, align 8
  store i8* %72, i8** %13, align 8
  br label %170

73:                                               ; preds = %69
  store i32 1, i32* %32, align 4
  br label %170

74:                                               ; preds = %69
  %75 = load i8*, i8** @optarg, align 8
  store i8* %75, i8** %17, align 8
  br label %170

76:                                               ; preds = %69
  %77 = load i8*, i8** @optarg, align 8
  %78 = load i32, i32* @UID_MAX, align 4
  %79 = call i64 @pw_checkid(i8* %77, i32 %78)
  store i64 %79, i64* %27, align 8
  br label %170

80:                                               ; preds = %69
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i8* @pw_checkname(i8* %81, i32 1)
  store i8* %82, i8** %14, align 8
  br label %170

83:                                               ; preds = %69
  %84 = load i8*, i8** @optarg, align 8
  store i8* %84, i8** %15, align 8
  br label %170

85:                                               ; preds = %69
  %86 = load i8*, i8** %42, align 8
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i8* @parse_date(i8* %86, i8* %87)
  store i8* %88, i8** %40, align 8
  br label %170

89:                                               ; preds = %69
  %90 = load i8*, i8** %42, align 8
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i8* @parse_date(i8* %90, i8* %91)
  store i8* %92, i8** %41, align 8
  br label %170

93:                                               ; preds = %69
  %94 = load i8*, i8** @optarg, align 8
  %95 = call i32 @group_from_name_or_id(i8* %94)
  %96 = load i8*, i8** @optarg, align 8
  store i8* %96, i8** %16, align 8
  br label %170

97:                                               ; preds = %69
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i32 @split_groups(%struct.TYPE_5__** %11, i8* %98)
  br label %170

100:                                              ; preds = %69
  store i32 1, i32* %33, align 4
  br label %170

101:                                              ; preds = %69
  %102 = load i8*, i8** @optarg, align 8
  %103 = call i64 @validate_mode(i8* %102)
  store i64 %103, i64* %39, align 8
  br label %170

104:                                              ; preds = %69
  %105 = load i8*, i8** @optarg, align 8
  store i8* %105, i8** %18, align 8
  br label %170

106:                                              ; preds = %69
  %107 = load i8*, i8** @optarg, align 8
  store i8* %107, i8** %20, align 8
  store i8* %107, i8** %19, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 47
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i8*, i8** %19, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %19, align 8
  br label %115

115:                                              ; preds = %112, %106
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 1), align 4
  %117 = load i8*, i8** %19, align 8
  %118 = call i32 @fstatat(i32 %116, i8* %117, %struct.stat* %26, i32 0)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @EX_OSFILE, align 4
  %122 = load i8*, i8** %20, align 8
  %123 = call i32 (i32, i8*, ...) @errx(i32 %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %120, %115
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @S_ISDIR(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @EX_OSFILE, align 4
  %131 = load i8*, i8** %20, align 8
  %132 = call i32 (i32, i8*, ...) @errx(i32 %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %129, %124
  br label %170

134:                                              ; preds = %69
  %135 = load i8*, i8** @optarg, align 8
  store i8* %135, i8** %21, align 8
  br label %170

136:                                              ; preds = %69
  %137 = load i8*, i8** @optarg, align 8
  store i8* %137, i8** %22, align 8
  br label %170

138:                                              ; preds = %69
  %139 = load i8*, i8** @optarg, align 8
  %140 = call i8* @pw_checkname(i8* %139, i32 0)
  store i8* %140, i8** %23, align 8
  br label %170

141:                                              ; preds = %69
  %142 = load i32, i32* %29, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @EX_USAGE, align 4
  %146 = call i32 (i32, i8*, ...) @errx(i32 %145, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i8*, i8** @optarg, align 8
  %149 = call i32 @pw_checkfd(i8* %148)
  store i32 %149, i32* %29, align 4
  store i32 1, i32* %38, align 4
  %150 = load i32, i32* %29, align 4
  %151 = icmp eq i32 %150, 45
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @EX_USAGE, align 4
  %154 = call i32 (i32, i8*, ...) @errx(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  br label %170

156:                                              ; preds = %69
  %157 = load i32, i32* %29, align 4
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @EX_USAGE, align 4
  %161 = call i32 (i32, i8*, ...) @errx(i32 %160, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i8*, i8** @optarg, align 8
  %164 = call i32 @pw_checkfd(i8* %163)
  store i32 %164, i32* %29, align 4
  br label %170

165:                                              ; preds = %69
  store i32 1, i32* %35, align 4
  br label %170

166:                                              ; preds = %69
  store i32 1, i32* %34, align 4
  br label %170

167:                                              ; preds = %69
  %168 = load i8*, i8** @optarg, align 8
  store i8* %168, i8** %24, align 8
  br label %170

169:                                              ; preds = %69
  store i32 1, i32* %36, align 4
  br label %170

170:                                              ; preds = %69, %169, %167, %166, %165, %162, %155, %138, %136, %134, %133, %104, %101, %100, %97, %93, %89, %85, %83, %80, %76, %74, %73, %71
  br label %63

171:                                              ; preds = %63
  %172 = call i64 (...) @geteuid()
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* %35, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @EX_NOPERM, align 4
  %179 = call i32 (i32, i8*, ...) @errx(i32 %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %174, %171
  %181 = load i32, i32* %32, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* @_PATH_DEVNULL, align 4
  %185 = load i32, i32* @stderr, align 4
  %186 = call i32 @freopen(i32 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %183, %180
  %188 = load i8*, i8** %13, align 8
  %189 = call %struct.userconf* @get_userconfig(i8* %188)
  store %struct.userconf* %189, %struct.userconf** %8, align 8
  %190 = load i64, i64* %27, align 8
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load i8*, i8** %17, align 8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* @EX_DATAERR, align 4
  %197 = call i32 (i32, i8*, ...) @errx(i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %192, %187
  %199 = load i8*, i8** %17, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i8*, i8** %17, align 8
  %203 = call i8* @pw_checkname(i8* %202, i32 0)
  %204 = call %struct.passwd* @GETPWNAM(i8* %203)
  br label %208

205:                                              ; preds = %198
  %206 = load i64, i64* %27, align 8
  %207 = call %struct.passwd* @GETPWUID(i64 %206)
  br label %208

208:                                              ; preds = %205, %201
  %209 = phi %struct.passwd* [ %204, %201 ], [ %207, %205 ]
  store %struct.passwd* %209, %struct.passwd** %9, align 8
  %210 = load %struct.passwd*, %struct.passwd** %9, align 8
  %211 = icmp eq %struct.passwd* %210, null
  br i1 %211, label %212, label %224

212:                                              ; preds = %208
  %213 = load i8*, i8** %17, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32, i32* @EX_NOUSER, align 4
  %217 = load i64, i64* %27, align 8
  %218 = inttoptr i64 %217 to i8*
  %219 = call i32 (i32, i8*, ...) @errx(i32 %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %215, %212
  %221 = load i32, i32* @EX_NOUSER, align 4
  %222 = load i8*, i8** %17, align 8
  %223 = call i32 (i32, i8*, ...) @errx(i32 %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %222)
  br label %224

224:                                              ; preds = %220, %208
  %225 = load i8*, i8** %17, align 8
  %226 = icmp eq i8* %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load %struct.passwd*, %struct.passwd** %9, align 8
  %229 = getelementptr inbounds %struct.passwd, %struct.passwd* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  store i8* %230, i8** %17, align 8
  br label %231

231:                                              ; preds = %227, %224
  %232 = load i32, i32* %36, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i8*, i8** %24, align 8
  %236 = icmp eq i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load %struct.userconf*, %struct.userconf** %8, align 8
  %239 = getelementptr inbounds %struct.userconf, %struct.userconf* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %24, align 8
  br label %241

241:                                              ; preds = %237, %234, %231
  %242 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @PWF, i32 0, i32 0), align 8
  %243 = load i64, i64* @PWF_REGULAR, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %282

245:                                              ; preds = %241
  %246 = load %struct.passwd*, %struct.passwd** %9, align 8
  %247 = getelementptr inbounds %struct.passwd, %struct.passwd* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @_PWF_SOURCE, align 4
  %250 = and i32 %248, %249
  %251 = load i32, i32* @_PWF_FILES, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %282

253:                                              ; preds = %245
  %254 = load %struct.passwd*, %struct.passwd** %9, align 8
  %255 = getelementptr inbounds %struct.passwd, %struct.passwd* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @_PWF_SOURCE, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* @_PWF_NIS, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %277

261:                                              ; preds = %253
  %262 = load i32, i32* %36, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %276, label %264

264:                                              ; preds = %261
  %265 = load i8*, i8** %24, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %276

267:                                              ; preds = %264
  %268 = load i8*, i8** %24, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 47
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load i32, i32* @EX_NOUSER, align 4
  %274 = load i8*, i8** %17, align 8
  %275 = call i32 (i32, i8*, ...) @errx(i32 %273, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %274)
  br label %276

276:                                              ; preds = %272, %267, %264, %261
  br label %281

277:                                              ; preds = %253
  %278 = load i32, i32* @EX_NOUSER, align 4
  %279 = load i8*, i8** %17, align 8
  %280 = call i32 (i32, i8*, ...) @errx(i32 %278, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %279)
  br label %281

281:                                              ; preds = %277, %276
  br label %282

282:                                              ; preds = %281, %245, %241
  %283 = load i8*, i8** %18, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %307

285:                                              ; preds = %282
  %286 = load %struct.passwd*, %struct.passwd** %9, align 8
  %287 = getelementptr inbounds %struct.passwd, %struct.passwd* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = call i64 @strcmp(i8* %288, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load i32, i32* @EX_DATAERR, align 4
  %293 = call i32 (i32, i8*, ...) @errx(i32 %292, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %294

294:                                              ; preds = %291, %285
  %295 = load %struct.passwd*, %struct.passwd** %9, align 8
  %296 = getelementptr inbounds %struct.passwd, %struct.passwd* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = load i8*, i8** %18, align 8
  %299 = call i64 @strcmp(i8* %297, i8* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %294
  %302 = load i8*, i8** %18, align 8
  %303 = call i8* @pw_checkname(i8* %302, i32 0)
  %304 = load %struct.passwd*, %struct.passwd** %9, align 8
  %305 = getelementptr inbounds %struct.passwd, %struct.passwd* %304, i32 0, i32 0
  store i8* %303, i8** %305, align 8
  store i32 1, i32* %37, align 4
  br label %306

306:                                              ; preds = %301, %294
  br label %307

307:                                              ; preds = %306, %282
  %308 = load i64, i64* %27, align 8
  %309 = icmp sge i64 %308, 0
  br i1 %309, label %310, label %350

310:                                              ; preds = %307
  %311 = load %struct.passwd*, %struct.passwd** %9, align 8
  %312 = getelementptr inbounds %struct.passwd, %struct.passwd* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %27, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %350

316:                                              ; preds = %310
  %317 = load i64, i64* %27, align 8
  %318 = load %struct.passwd*, %struct.passwd** %9, align 8
  %319 = getelementptr inbounds %struct.passwd, %struct.passwd* %318, i32 0, i32 2
  store i64 %317, i64* %319, align 8
  store i32 1, i32* %37, align 4
  %320 = load %struct.passwd*, %struct.passwd** %9, align 8
  %321 = getelementptr inbounds %struct.passwd, %struct.passwd* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %316
  %325 = load %struct.passwd*, %struct.passwd** %9, align 8
  %326 = getelementptr inbounds %struct.passwd, %struct.passwd* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = call i64 @strcmp(i8* %327, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %324
  %331 = load i32, i32* @EX_DATAERR, align 4
  %332 = call i32 (i32, i8*, ...) @errx(i32 %331, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %333

333:                                              ; preds = %330, %324, %316
  %334 = load %struct.passwd*, %struct.passwd** %9, align 8
  %335 = getelementptr inbounds %struct.passwd, %struct.passwd* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %333
  %339 = load %struct.passwd*, %struct.passwd** %9, align 8
  %340 = getelementptr inbounds %struct.passwd, %struct.passwd* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = call i64 @strcmp(i8* %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %338
  %345 = load %struct.passwd*, %struct.passwd** %9, align 8
  %346 = getelementptr inbounds %struct.passwd, %struct.passwd* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0), i8* %347)
  br label %349

349:                                              ; preds = %344, %338, %333
  br label %350

350:                                              ; preds = %349, %310, %307
  %351 = load i8*, i8** %16, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %383

353:                                              ; preds = %350
  %354 = load %struct.passwd*, %struct.passwd** %9, align 8
  %355 = getelementptr inbounds %struct.passwd, %struct.passwd* %354, i32 0, i32 2
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %383

358:                                              ; preds = %353
  %359 = load i8*, i8** %16, align 8
  %360 = call %struct.group* @GETGRNAM(i8* %359)
  store %struct.group* %360, %struct.group** %10, align 8
  %361 = load %struct.group*, %struct.group** %10, align 8
  %362 = icmp eq %struct.group* %361, null
  br i1 %362, label %363, label %368

363:                                              ; preds = %358
  %364 = load i8*, i8** %16, align 8
  %365 = load i32, i32* @GID_MAX, align 4
  %366 = call i64 @pw_checkid(i8* %364, i32 %365)
  %367 = call %struct.group* @GETGRGID(i64 %366)
  store %struct.group* %367, %struct.group** %10, align 8
  br label %368

368:                                              ; preds = %363, %358
  %369 = load %struct.group*, %struct.group** %10, align 8
  %370 = getelementptr inbounds %struct.group, %struct.group* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.passwd*, %struct.passwd** %9, align 8
  %373 = getelementptr inbounds %struct.passwd, %struct.passwd* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %371, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %368
  %377 = load %struct.group*, %struct.group** %10, align 8
  %378 = getelementptr inbounds %struct.group, %struct.group* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.passwd*, %struct.passwd** %9, align 8
  %381 = getelementptr inbounds %struct.passwd, %struct.passwd* %380, i32 0, i32 3
  store i64 %379, i64* %381, align 8
  store i32 1, i32* %37, align 4
  br label %382

382:                                              ; preds = %376, %368
  br label %383

383:                                              ; preds = %382, %353, %350
  %384 = load i8*, i8** %41, align 8
  %385 = icmp uge i8* %384, null
  br i1 %385, label %386, label %396

386:                                              ; preds = %383
  %387 = load %struct.passwd*, %struct.passwd** %9, align 8
  %388 = getelementptr inbounds %struct.passwd, %struct.passwd* %387, i32 0, i32 4
  %389 = load i8*, i8** %388, align 8
  %390 = load i8*, i8** %41, align 8
  %391 = icmp ne i8* %389, %390
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = load i8*, i8** %41, align 8
  %394 = load %struct.passwd*, %struct.passwd** %9, align 8
  %395 = getelementptr inbounds %struct.passwd, %struct.passwd* %394, i32 0, i32 4
  store i8* %393, i8** %395, align 8
  store i32 1, i32* %37, align 4
  br label %396

396:                                              ; preds = %392, %386, %383
  %397 = load i8*, i8** %40, align 8
  %398 = icmp uge i8* %397, null
  br i1 %398, label %399, label %409

399:                                              ; preds = %396
  %400 = load %struct.passwd*, %struct.passwd** %9, align 8
  %401 = getelementptr inbounds %struct.passwd, %struct.passwd* %400, i32 0, i32 5
  %402 = load i8*, i8** %401, align 8
  %403 = load i8*, i8** %40, align 8
  %404 = icmp ne i8* %402, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %399
  %406 = load i8*, i8** %40, align 8
  %407 = load %struct.passwd*, %struct.passwd** %9, align 8
  %408 = getelementptr inbounds %struct.passwd, %struct.passwd* %407, i32 0, i32 5
  store i8* %406, i8** %408, align 8
  store i32 1, i32* %37, align 4
  br label %409

409:                                              ; preds = %405, %399, %396
  %410 = load i8*, i8** %21, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %436

412:                                              ; preds = %409
  %413 = load %struct.userconf*, %struct.userconf** %8, align 8
  %414 = getelementptr inbounds %struct.userconf, %struct.userconf* %413, i32 0, i32 5
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.userconf*, %struct.userconf** %8, align 8
  %417 = getelementptr inbounds %struct.userconf, %struct.userconf* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 4
  %419 = load i8*, i8** %21, align 8
  %420 = call i8* @shell_path(i32 %415, i32 %418, i8* %419)
  store i8* %420, i8** %21, align 8
  %421 = load i8*, i8** %21, align 8
  %422 = icmp eq i8* %421, null
  br i1 %422, label %423, label %424

423:                                              ; preds = %412
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i8** %21, align 8
  br label %424

424:                                              ; preds = %423, %412
  %425 = load i8*, i8** %21, align 8
  %426 = load %struct.passwd*, %struct.passwd** %9, align 8
  %427 = getelementptr inbounds %struct.passwd, %struct.passwd* %426, i32 0, i32 6
  %428 = load i8*, i8** %427, align 8
  %429 = call i64 @strcmp(i8* %425, i8* %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %424
  %432 = load i8*, i8** %21, align 8
  %433 = load %struct.passwd*, %struct.passwd** %9, align 8
  %434 = getelementptr inbounds %struct.passwd, %struct.passwd* %433, i32 0, i32 6
  store i8* %432, i8** %434, align 8
  store i32 1, i32* %37, align 4
  br label %435

435:                                              ; preds = %431, %424
  br label %436

436:                                              ; preds = %435, %409
  %437 = load i8*, i8** %23, align 8
  %438 = icmp ne i8* %437, null
  br i1 %438, label %439, label %450

439:                                              ; preds = %436
  %440 = load %struct.passwd*, %struct.passwd** %9, align 8
  %441 = getelementptr inbounds %struct.passwd, %struct.passwd* %440, i32 0, i32 7
  %442 = load i8*, i8** %441, align 8
  %443 = load i8*, i8** %23, align 8
  %444 = call i64 @strcmp(i8* %442, i8* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %439
  %447 = load i8*, i8** %23, align 8
  %448 = load %struct.passwd*, %struct.passwd** %9, align 8
  %449 = getelementptr inbounds %struct.passwd, %struct.passwd* %448, i32 0, i32 7
  store i8* %447, i8** %449, align 8
  store i32 1, i32* %37, align 4
  br label %450

450:                                              ; preds = %446, %439, %436
  %451 = load i8*, i8** %15, align 8
  %452 = icmp ne i8* %451, null
  br i1 %452, label %453, label %491

453:                                              ; preds = %450
  %454 = load %struct.passwd*, %struct.passwd** %9, align 8
  %455 = getelementptr inbounds %struct.passwd, %struct.passwd* %454, i32 0, i32 8
  %456 = load i8*, i8** %455, align 8
  %457 = load i8*, i8** %15, align 8
  %458 = call i64 @strcmp(i8* %456, i8* %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %491

460:                                              ; preds = %453
  %461 = load i8*, i8** %15, align 8
  %462 = load %struct.passwd*, %struct.passwd** %9, align 8
  %463 = getelementptr inbounds %struct.passwd, %struct.passwd* %462, i32 0, i32 8
  store i8* %461, i8** %463, align 8
  store i32 1, i32* %37, align 4
  %464 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 1), align 4
  %465 = load %struct.passwd*, %struct.passwd** %9, align 8
  %466 = getelementptr inbounds %struct.passwd, %struct.passwd* %465, i32 0, i32 8
  %467 = load i8*, i8** %466, align 8
  %468 = call i32 @fstatat(i32 %464, i8* %467, %struct.stat* %26, i32 0)
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %470, label %479

470:                                              ; preds = %460
  %471 = load i32, i32* %33, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %470
  %474 = load %struct.passwd*, %struct.passwd** %9, align 8
  %475 = getelementptr inbounds %struct.passwd, %struct.passwd* %474, i32 0, i32 8
  %476 = load i8*, i8** %475, align 8
  %477 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* %476)
  br label %478

478:                                              ; preds = %473, %470
  br label %490

479:                                              ; preds = %460
  %480 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @S_ISDIR(i32 %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %489, label %484

484:                                              ; preds = %479
  %485 = load %struct.passwd*, %struct.passwd** %9, align 8
  %486 = getelementptr inbounds %struct.passwd, %struct.passwd* %485, i32 0, i32 8
  %487 = load i8*, i8** %486, align 8
  %488 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* %487)
  br label %489

489:                                              ; preds = %484, %479
  br label %490

490:                                              ; preds = %489, %478
  br label %491

491:                                              ; preds = %490, %453, %450
  %492 = load i8*, i8** %22, align 8
  %493 = icmp ne i8* %492, null
  br i1 %493, label %494, label %526

494:                                              ; preds = %491
  %495 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 0), align 4
  %496 = icmp eq i32 %495, -1
  br i1 %496, label %497, label %526

497:                                              ; preds = %494
  %498 = load %struct.passwd*, %struct.passwd** %9, align 8
  %499 = call i32* @login_getpwclass(%struct.passwd* %498)
  store i32* %499, i32** %25, align 8
  %500 = load i32*, i32** %25, align 8
  %501 = icmp eq i32* %500, null
  br i1 %501, label %506, label %502

502:                                              ; preds = %497
  %503 = load i32*, i32** %25, align 8
  %504 = call i32* @login_setcryptfmt(i32* %503, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32* null)
  %505 = icmp eq i32* %504, null
  br i1 %505, label %506, label %508

506:                                              ; preds = %502, %497
  %507 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  br label %508

508:                                              ; preds = %506, %502
  %509 = load i32*, i32** %25, align 8
  %510 = call i32 @login_close(i32* %509)
  %511 = load i8*, i8** %22, align 8
  %512 = load %struct.userconf*, %struct.userconf** %8, align 8
  %513 = getelementptr inbounds %struct.userconf, %struct.userconf* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 8
  %515 = call i32 @passwd_val(i8* %511, i32 %514)
  %516 = load %struct.userconf*, %struct.userconf** %8, align 8
  %517 = getelementptr inbounds %struct.userconf, %struct.userconf* %516, i32 0, i32 3
  store i32 %515, i32* %517, align 8
  %518 = load %struct.userconf*, %struct.userconf** %8, align 8
  %519 = load %struct.passwd*, %struct.passwd** %9, align 8
  %520 = getelementptr inbounds %struct.passwd, %struct.passwd* %519, i32 0, i32 0
  %521 = load i8*, i8** %520, align 8
  %522 = load i32, i32* %35, align 4
  %523 = call i32 @pw_password(%struct.userconf* %518, i8* %521, i32 %522)
  %524 = load %struct.passwd*, %struct.passwd** %9, align 8
  %525 = getelementptr inbounds %struct.passwd, %struct.passwd* %524, i32 0, i32 10
  store i32 %523, i32* %525, align 8
  store i32 1, i32* %37, align 4
  br label %526

526:                                              ; preds = %508, %494, %491
  %527 = load i8*, i8** %14, align 8
  %528 = icmp ne i8* %527, null
  br i1 %528, label %529, label %540

529:                                              ; preds = %526
  %530 = load %struct.passwd*, %struct.passwd** %9, align 8
  %531 = getelementptr inbounds %struct.passwd, %struct.passwd* %530, i32 0, i32 9
  %532 = load i8*, i8** %531, align 8
  %533 = load i8*, i8** %14, align 8
  %534 = call i64 @strcmp(i8* %532, i8* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %529
  %537 = load i8*, i8** %14, align 8
  %538 = load %struct.passwd*, %struct.passwd** %9, align 8
  %539 = getelementptr inbounds %struct.passwd, %struct.passwd* %538, i32 0, i32 9
  store i8* %537, i8** %539, align 8
  store i32 1, i32* %37, align 4
  br label %540

540:                                              ; preds = %536, %529, %526
  %541 = load i32, i32* %29, align 4
  %542 = icmp ne i32 %541, -1
  br i1 %542, label %543, label %548

543:                                              ; preds = %540
  %544 = load %struct.passwd*, %struct.passwd** %9, align 8
  %545 = load i32, i32* %29, align 4
  %546 = load i32, i32* %38, align 4
  %547 = call i32 @pw_set_passwd(%struct.passwd* %544, i32 %545, i32 %546, i32 1)
  store i32 %547, i32* %37, align 4
  br label %548

548:                                              ; preds = %543, %540
  %549 = load i32, i32* %35, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %555

551:                                              ; preds = %548
  %552 = load %struct.passwd*, %struct.passwd** %9, align 8
  %553 = load i32, i32* %34, align 4
  %554 = call i32 @print_user(%struct.passwd* %552, i32 %553, i32 0)
  store i32 %554, i32* %4, align 4
  br label %843

555:                                              ; preds = %548
  %556 = load i32, i32* %37, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %569

558:                                              ; preds = %555
  %559 = load i8*, i8** %17, align 8
  %560 = load %struct.passwd*, %struct.passwd** %9, align 8
  %561 = load i32, i32* %36, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %565

563:                                              ; preds = %558
  %564 = load i8*, i8** %24, align 8
  br label %566

565:                                              ; preds = %558
  br label %566

566:                                              ; preds = %565, %563
  %567 = phi i8* [ %564, %563 ], [ null, %565 ]
  %568 = call i32 @perform_chgpwent(i8* %559, %struct.passwd* %560, i8* %567)
  br label %569

569:                                              ; preds = %566, %555
  %570 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %571 = icmp ne %struct.TYPE_5__* %570, null
  br i1 %571, label %572, label %675

572:                                              ; preds = %569
  %573 = call i32 (...) @SETGRENT()
  br label %574

574:                                              ; preds = %638, %582, %572
  %575 = call %struct.group* (...) @GETGRENT()
  store %struct.group* %575, %struct.group** %10, align 8
  %576 = icmp ne %struct.group* %575, null
  br i1 %576, label %577, label %639

577:                                              ; preds = %574
  %578 = load %struct.group*, %struct.group** %10, align 8
  %579 = getelementptr inbounds %struct.group, %struct.group* %578, i32 0, i32 1
  %580 = load i8**, i8*** %579, align 8
  %581 = icmp eq i8** %580, null
  br i1 %581, label %582, label %583

582:                                              ; preds = %577
  br label %574

583:                                              ; preds = %577
  store i64 0, i64* %30, align 8
  br label %584

584:                                              ; preds = %635, %583
  %585 = load %struct.group*, %struct.group** %10, align 8
  %586 = getelementptr inbounds %struct.group, %struct.group* %585, i32 0, i32 1
  %587 = load i8**, i8*** %586, align 8
  %588 = load i64, i64* %30, align 8
  %589 = getelementptr inbounds i8*, i8** %587, i64 %588
  %590 = load i8*, i8** %589, align 8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %592, label %638

592:                                              ; preds = %584
  %593 = load %struct.group*, %struct.group** %10, align 8
  %594 = getelementptr inbounds %struct.group, %struct.group* %593, i32 0, i32 1
  %595 = load i8**, i8*** %594, align 8
  %596 = load i64, i64* %30, align 8
  %597 = getelementptr inbounds i8*, i8** %595, i64 %596
  %598 = load i8*, i8** %597, align 8
  %599 = load i8*, i8** %17, align 8
  %600 = call i64 @strcmp(i8* %598, i8* %599)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %592
  br label %635

603:                                              ; preds = %592
  %604 = load i64, i64* %30, align 8
  store i64 %604, i64* %31, align 8
  br label %605

605:                                              ; preds = %626, %603
  %606 = load %struct.group*, %struct.group** %10, align 8
  %607 = getelementptr inbounds %struct.group, %struct.group* %606, i32 0, i32 1
  %608 = load i8**, i8*** %607, align 8
  %609 = load i64, i64* %31, align 8
  %610 = getelementptr inbounds i8*, i8** %608, i64 %609
  %611 = load i8*, i8** %610, align 8
  %612 = icmp ne i8* %611, null
  br i1 %612, label %613, label %629

613:                                              ; preds = %605
  %614 = load %struct.group*, %struct.group** %10, align 8
  %615 = getelementptr inbounds %struct.group, %struct.group* %614, i32 0, i32 1
  %616 = load i8**, i8*** %615, align 8
  %617 = load i64, i64* %31, align 8
  %618 = add i64 %617, 1
  %619 = getelementptr inbounds i8*, i8** %616, i64 %618
  %620 = load i8*, i8** %619, align 8
  %621 = load %struct.group*, %struct.group** %10, align 8
  %622 = getelementptr inbounds %struct.group, %struct.group* %621, i32 0, i32 1
  %623 = load i8**, i8*** %622, align 8
  %624 = load i64, i64* %31, align 8
  %625 = getelementptr inbounds i8*, i8** %623, i64 %624
  store i8* %620, i8** %625, align 8
  br label %626

626:                                              ; preds = %613
  %627 = load i64, i64* %31, align 8
  %628 = add i64 %627, 1
  store i64 %628, i64* %31, align 8
  br label %605

629:                                              ; preds = %605
  %630 = load %struct.group*, %struct.group** %10, align 8
  %631 = getelementptr inbounds %struct.group, %struct.group* %630, i32 0, i32 2
  %632 = load i8*, i8** %631, align 8
  %633 = load %struct.group*, %struct.group** %10, align 8
  %634 = call i32 @chggrent(i8* %632, %struct.group* %633)
  br label %638

635:                                              ; preds = %602
  %636 = load i64, i64* %30, align 8
  %637 = add i64 %636, 1
  store i64 %637, i64* %30, align 8
  br label %584

638:                                              ; preds = %629, %584
  br label %574

639:                                              ; preds = %574
  %640 = call i32 (...) @ENDGRENT()
  store i64 0, i64* %30, align 8
  br label %641

641:                                              ; preds = %671, %639
  %642 = load i64, i64* %30, align 8
  %643 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %644 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %643, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = icmp ult i64 %642, %645
  br i1 %646, label %647, label %674

647:                                              ; preds = %641
  %648 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %649 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %648, i32 0, i32 1
  %650 = load i8**, i8*** %649, align 8
  %651 = load i64, i64* %30, align 8
  %652 = getelementptr inbounds i8*, i8** %650, i64 %651
  %653 = load i8*, i8** %652, align 8
  %654 = call %struct.group* @GETGRNAM(i8* %653)
  store %struct.group* %654, %struct.group** %10, align 8
  %655 = load %struct.group*, %struct.group** %10, align 8
  %656 = load %struct.passwd*, %struct.passwd** %9, align 8
  %657 = getelementptr inbounds %struct.passwd, %struct.passwd* %656, i32 0, i32 0
  %658 = load i8*, i8** %657, align 8
  %659 = call %struct.group* @gr_add(%struct.group* %655, i8* %658)
  store %struct.group* %659, %struct.group** %10, align 8
  %660 = load %struct.group*, %struct.group** %10, align 8
  %661 = icmp eq %struct.group* %660, null
  br i1 %661, label %662, label %663

662:                                              ; preds = %647
  br label %671

663:                                              ; preds = %647
  %664 = load %struct.group*, %struct.group** %10, align 8
  %665 = getelementptr inbounds %struct.group, %struct.group* %664, i32 0, i32 2
  %666 = load i8*, i8** %665, align 8
  %667 = load %struct.group*, %struct.group** %10, align 8
  %668 = call i32 @chggrent(i8* %666, %struct.group* %667)
  %669 = load %struct.group*, %struct.group** %10, align 8
  %670 = call i32 @free(%struct.group* %669)
  br label %671

671:                                              ; preds = %663, %662
  %672 = load i64, i64* %30, align 8
  %673 = add i64 %672, 1
  store i64 %673, i64* %30, align 8
  br label %641

674:                                              ; preds = %641
  br label %675

675:                                              ; preds = %674, %569
  %676 = load i8*, i8** %18, align 8
  %677 = icmp ne i8* %676, null
  br i1 %677, label %678, label %726

678:                                              ; preds = %675
  %679 = call i32 (...) @SETGRENT()
  br label %680

680:                                              ; preds = %724, %688, %678
  %681 = call %struct.group* (...) @GETGRENT()
  store %struct.group* %681, %struct.group** %10, align 8
  %682 = icmp ne %struct.group* %681, null
  br i1 %682, label %683, label %725

683:                                              ; preds = %680
  %684 = load %struct.group*, %struct.group** %10, align 8
  %685 = getelementptr inbounds %struct.group, %struct.group* %684, i32 0, i32 1
  %686 = load i8**, i8*** %685, align 8
  %687 = icmp eq i8** %686, null
  br i1 %687, label %688, label %689

688:                                              ; preds = %683
  br label %680

689:                                              ; preds = %683
  store i64 0, i64* %30, align 8
  br label %690

690:                                              ; preds = %721, %689
  %691 = load %struct.group*, %struct.group** %10, align 8
  %692 = getelementptr inbounds %struct.group, %struct.group* %691, i32 0, i32 1
  %693 = load i8**, i8*** %692, align 8
  %694 = load i64, i64* %30, align 8
  %695 = getelementptr inbounds i8*, i8** %693, i64 %694
  %696 = load i8*, i8** %695, align 8
  %697 = icmp ne i8* %696, null
  br i1 %697, label %698, label %724

698:                                              ; preds = %690
  %699 = load %struct.group*, %struct.group** %10, align 8
  %700 = getelementptr inbounds %struct.group, %struct.group* %699, i32 0, i32 1
  %701 = load i8**, i8*** %700, align 8
  %702 = load i64, i64* %30, align 8
  %703 = getelementptr inbounds i8*, i8** %701, i64 %702
  %704 = load i8*, i8** %703, align 8
  %705 = load i8*, i8** %17, align 8
  %706 = call i64 @strcmp(i8* %704, i8* %705)
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %709

708:                                              ; preds = %698
  br label %721

709:                                              ; preds = %698
  %710 = load i8*, i8** %18, align 8
  %711 = load %struct.group*, %struct.group** %10, align 8
  %712 = getelementptr inbounds %struct.group, %struct.group* %711, i32 0, i32 1
  %713 = load i8**, i8*** %712, align 8
  %714 = load i64, i64* %30, align 8
  %715 = getelementptr inbounds i8*, i8** %713, i64 %714
  store i8* %710, i8** %715, align 8
  %716 = load %struct.group*, %struct.group** %10, align 8
  %717 = getelementptr inbounds %struct.group, %struct.group* %716, i32 0, i32 2
  %718 = load i8*, i8** %717, align 8
  %719 = load %struct.group*, %struct.group** %10, align 8
  %720 = call i32 @chggrent(i8* %718, %struct.group* %719)
  br label %724

721:                                              ; preds = %708
  %722 = load i64, i64* %30, align 8
  %723 = add i64 %722, 1
  store i64 %723, i64* %30, align 8
  br label %690

724:                                              ; preds = %709, %690
  br label %680

725:                                              ; preds = %680
  br label %726

726:                                              ; preds = %725, %675
  %727 = load i8*, i8** %18, align 8
  %728 = icmp ne i8* %727, null
  br i1 %728, label %729, label %731

729:                                              ; preds = %726
  %730 = load i8*, i8** %18, align 8
  store i8* %730, i8** %17, align 8
  br label %731

731:                                              ; preds = %729, %726
  %732 = load i8*, i8** %17, align 8
  %733 = call %struct.passwd* @GETPWNAM(i8* %732)
  store %struct.passwd* %733, %struct.passwd** %9, align 8
  %734 = load %struct.passwd*, %struct.passwd** %9, align 8
  %735 = icmp eq %struct.passwd* %734, null
  br i1 %735, label %736, label %740

736:                                              ; preds = %731
  %737 = load i32, i32* @EX_NOUSER, align 4
  %738 = load i8*, i8** %17, align 8
  %739 = call i32 (i32, i8*, ...) @errx(i32 %737, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i8* %738)
  br label %740

740:                                              ; preds = %736, %731
  %741 = load %struct.passwd*, %struct.passwd** %9, align 8
  %742 = getelementptr inbounds %struct.passwd, %struct.passwd* %741, i32 0, i32 3
  %743 = load i64, i64* %742, align 8
  %744 = call %struct.group* @GETGRGID(i64 %743)
  store %struct.group* %744, %struct.group** %10, align 8
  %745 = load %struct.userconf*, %struct.userconf** %8, align 8
  %746 = load i32, i32* @M_UPDATE, align 4
  %747 = load i32, i32* @W_USER, align 4
  %748 = load %struct.passwd*, %struct.passwd** %9, align 8
  %749 = getelementptr inbounds %struct.passwd, %struct.passwd* %748, i32 0, i32 0
  %750 = load i8*, i8** %749, align 8
  %751 = load %struct.passwd*, %struct.passwd** %9, align 8
  %752 = getelementptr inbounds %struct.passwd, %struct.passwd* %751, i32 0, i32 2
  %753 = load i64, i64* %752, align 8
  %754 = inttoptr i64 %753 to i8*
  %755 = load %struct.group*, %struct.group** %10, align 8
  %756 = icmp ne %struct.group* %755, null
  br i1 %756, label %757, label %761

757:                                              ; preds = %740
  %758 = load %struct.group*, %struct.group** %10, align 8
  %759 = getelementptr inbounds %struct.group, %struct.group* %758, i32 0, i32 2
  %760 = load i8*, i8** %759, align 8
  br label %762

761:                                              ; preds = %740
  br label %762

762:                                              ; preds = %761, %757
  %763 = phi i8* [ %760, %757 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), %761 ]
  %764 = load %struct.group*, %struct.group** %10, align 8
  %765 = icmp ne %struct.group* %764, null
  br i1 %765, label %766, label %770

766:                                              ; preds = %762
  %767 = load %struct.group*, %struct.group** %10, align 8
  %768 = getelementptr inbounds %struct.group, %struct.group* %767, i32 0, i32 0
  %769 = load i64, i64* %768, align 8
  br label %771

770:                                              ; preds = %762
  br label %771

771:                                              ; preds = %770, %766
  %772 = phi i64 [ %769, %766 ], [ -1, %770 ]
  %773 = inttoptr i64 %772 to i8*
  %774 = load %struct.passwd*, %struct.passwd** %9, align 8
  %775 = getelementptr inbounds %struct.passwd, %struct.passwd* %774, i32 0, i32 9
  %776 = load i8*, i8** %775, align 8
  %777 = load %struct.passwd*, %struct.passwd** %9, align 8
  %778 = getelementptr inbounds %struct.passwd, %struct.passwd* %777, i32 0, i32 8
  %779 = load i8*, i8** %778, align 8
  %780 = load %struct.passwd*, %struct.passwd** %9, align 8
  %781 = getelementptr inbounds %struct.passwd, %struct.passwd* %780, i32 0, i32 6
  %782 = load i8*, i8** %781, align 8
  %783 = call i32 (%struct.userconf*, i32, i32, i8*, ...) @pw_log(%struct.userconf* %745, i32 %746, i32 %747, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* %750, i8* %754, i8* %763, i8* %773, i8* %776, i8* %779, i8* %782)
  %784 = call i64 (...) @PWALTDIR()
  %785 = load i64, i64* @PWF_ALT, align 8
  %786 = icmp ne i64 %784, %785
  br i1 %786, label %787, label %830

787:                                              ; preds = %771
  %788 = load i32, i32* %33, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %830

790:                                              ; preds = %787
  %791 = load %struct.passwd*, %struct.passwd** %9, align 8
  %792 = getelementptr inbounds %struct.passwd, %struct.passwd* %791, i32 0, i32 8
  %793 = load i8*, i8** %792, align 8
  %794 = icmp ne i8* %793, null
  br i1 %794, label %795, label %830

795:                                              ; preds = %790
  %796 = load %struct.passwd*, %struct.passwd** %9, align 8
  %797 = getelementptr inbounds %struct.passwd, %struct.passwd* %796, i32 0, i32 8
  %798 = load i8*, i8** %797, align 8
  %799 = load i8, i8* %798, align 1
  %800 = sext i8 %799 to i32
  %801 = icmp eq i32 %800, 47
  br i1 %801, label %802, label %830

802:                                              ; preds = %795
  %803 = load %struct.passwd*, %struct.passwd** %9, align 8
  %804 = getelementptr inbounds %struct.passwd, %struct.passwd* %803, i32 0, i32 8
  %805 = load i8*, i8** %804, align 8
  %806 = getelementptr inbounds i8, i8* %805, i64 1
  %807 = load i8, i8* %806, align 1
  %808 = sext i8 %807 to i32
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %830

810:                                              ; preds = %802
  %811 = load i8*, i8** %20, align 8
  %812 = icmp ne i8* %811, null
  br i1 %812, label %817, label %813

813:                                              ; preds = %810
  %814 = load %struct.userconf*, %struct.userconf** %8, align 8
  %815 = getelementptr inbounds %struct.userconf, %struct.userconf* %814, i32 0, i32 1
  %816 = load i8*, i8** %815, align 8
  store i8* %816, i8** %20, align 8
  br label %817

817:                                              ; preds = %813, %810
  %818 = load i64, i64* %39, align 8
  %819 = icmp eq i64 %818, 0
  br i1 %819, label %820, label %824

820:                                              ; preds = %817
  %821 = load %struct.userconf*, %struct.userconf** %8, align 8
  %822 = getelementptr inbounds %struct.userconf, %struct.userconf* %821, i32 0, i32 2
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %39, align 8
  br label %824

824:                                              ; preds = %820, %817
  %825 = load %struct.userconf*, %struct.userconf** %8, align 8
  %826 = load %struct.passwd*, %struct.passwd** %9, align 8
  %827 = load i8*, i8** %20, align 8
  %828 = load i64, i64* %39, align 8
  %829 = call i32 @create_and_populate_homedir(%struct.userconf* %825, %struct.passwd* %826, i8* %827, i64 %828, i32 1)
  br label %830

830:                                              ; preds = %824, %802, %795, %790, %787, %771
  %831 = load i32, i32* %36, align 4
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %833, label %841

833:                                              ; preds = %830
  %834 = call i64 (...) @nis_update()
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %836, label %841

836:                                              ; preds = %833
  %837 = load %struct.userconf*, %struct.userconf** %8, align 8
  %838 = load i32, i32* @M_UPDATE, align 4
  %839 = load i32, i32* @W_USER, align 4
  %840 = call i32 (%struct.userconf*, i32, i32, i8*, ...) @pw_log(%struct.userconf* %837, i32 %838, i32 %839, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  br label %841

841:                                              ; preds = %836, %833, %830
  %842 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %842, i32* %4, align 4
  br label %843

843:                                              ; preds = %841, %551
  %844 = load i32, i32* %4, align 4
  ret i32 %844
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @time(i32*) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @pw_checkid(i8*, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @pw_checkname(i8*, i32) #2

declare dso_local i8* @parse_date(i8*, i8*) #2

declare dso_local i32 @group_from_name_or_id(i8*) #2

declare dso_local i32 @split_groups(%struct.TYPE_5__**, i8*) #2

declare dso_local i64 @validate_mode(i8*) #2

declare dso_local i32 @fstatat(i32, i8*, %struct.stat*, i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @pw_checkfd(i8*) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @freopen(i32, i8*, i32) #2

declare dso_local %struct.userconf* @get_userconfig(i8*) #2

declare dso_local %struct.passwd* @GETPWNAM(i8*) #2

declare dso_local %struct.passwd* @GETPWUID(i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local %struct.group* @GETGRNAM(i8*) #2

declare dso_local %struct.group* @GETGRGID(i64) #2

declare dso_local i8* @shell_path(i32, i32, i8*) #2

declare dso_local i32* @login_getpwclass(%struct.passwd*) #2

declare dso_local i32* @login_setcryptfmt(i32*, i8*, i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @login_close(i32*) #2

declare dso_local i32 @passwd_val(i8*, i32) #2

declare dso_local i32 @pw_password(%struct.userconf*, i8*, i32) #2

declare dso_local i32 @pw_set_passwd(%struct.passwd*, i32, i32, i32) #2

declare dso_local i32 @print_user(%struct.passwd*, i32, i32) #2

declare dso_local i32 @perform_chgpwent(i8*, %struct.passwd*, i8*) #2

declare dso_local i32 @SETGRENT(...) #2

declare dso_local %struct.group* @GETGRENT(...) #2

declare dso_local i32 @chggrent(i8*, %struct.group*) #2

declare dso_local i32 @ENDGRENT(...) #2

declare dso_local %struct.group* @gr_add(%struct.group*, i8*) #2

declare dso_local i32 @free(%struct.group*) #2

declare dso_local i32 @pw_log(%struct.userconf*, i32, i32, i8*, ...) #2

declare dso_local i64 @PWALTDIR(...) #2

declare dso_local i32 @create_and_populate_homedir(%struct.userconf*, %struct.passwd*, i8*, i64, i32) #2

declare dso_local i64 @nis_update(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

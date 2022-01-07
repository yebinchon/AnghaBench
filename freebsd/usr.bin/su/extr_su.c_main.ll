; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/su/extr_su.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/su/extr_su.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i8*, i8*, i8* }
%struct.pam_conv = type { i32*, i32 }
%struct.TYPE_6__ = type { i8* }
%union.anon = type { i8** }
%struct.sigaction = type { i8*, i32, i32 }

@main.cleanenv = internal global i8* null, align 8
@openpam_ttyconv = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@UNSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"-flmsc:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"not running setuid\00", align 1
@MAXLOGNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"username too long\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@errno = common dso_local global i64 0, align 8
@PRIO_PROCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"who are you?\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"strdup failure\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@NO = common dso_local global i32 0, align 4
@pamh = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"pam_start: %s\00", align 1
@PAM_RUSER = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@PAM_TTY = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"BAD SU %s to %s on %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Sorry\00", align 1
@PAM_USER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"pam_get_item(PAM_USER): %s\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"unknown login: %s\00", align 1
@PAM_NEW_AUTHTOK_REQD = common dso_local global i32 0, align 4
@PAM_CHANGE_EXPIRED_AUTHTOK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"pam_chauthtok: %s\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"pam_acct_mgmt: %s\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"only root may use -c\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"login_getclass\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"unknown class: %s\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"permission denied (shell)\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1
@YES = common dso_local global i32 0, align 4
@LOGIN_SETGROUP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"setusercontext\00", align 1
@PAM_ESTABLISH_CRED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"pam_setcred: %s\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"failed to establish credentials.\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"pam_open_session: %s\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"failed to open session.\00", align 1
@SA_RESTART = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i8* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i8* null, align 8
@SIGTSTP = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@SIGTTOU = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@LOGIN_SETALL = common dso_local global i32 0, align 4
@LOGIN_SETENV = common dso_local global i32 0, align 4
@LOGIN_SETUMASK = common dso_local global i32 0, align 4
@LOGIN_SETLOGIN = common dso_local global i32 0, align 4
@LOGIN_SETPATH = common dso_local global i32 0, align 4
@LOGIN_SETMAC = common dso_local global i32 0, align 4
@LOGIN_SETPRIORITY = common dso_local global i32 0, align 4
@LOGIN_SETRESOURCES = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@environ = common dso_local global i8** null, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@environ_pam = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"no directory\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"-su\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"_su\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [11 x i8] c"%s to %s%s\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AUE_su = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.pam_conv, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %union.anon, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8**, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.sigaction, align 8
  %36 = alloca %struct.sigaction, align 8
  %37 = alloca %struct.sigaction, align 8
  %38 = alloca %struct.sigaction, align 8
  %39 = alloca i32, align 4
  %40 = alloca [2 x i32], align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.passwd* null, %struct.passwd** %6, align 8
  %41 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %7, i32 0, i32 0
  %42 = load i32, i32* @openpam_ttyconv, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 8
  %45 = getelementptr inbounds %struct.pam_conv, %struct.pam_conv* %7, i32 0, i32 1
  store i32 0, i32* %45, align 8
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %27, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %28, align 8
  store i8* null, i8** @main.cleanenv, align 8
  store i8* null, i8** %26, align 8
  store i8* null, i8** %31, align 8
  store i8* null, i8** %29, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %50 = load i32, i32* @UNSET, align 4
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %23, align 4
  br label %51

51:                                               ; preds = %69, %2
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @getopt(i32 %52, i8** %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %16, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i32, i32* %16, align 4
  %58 = trunc i32 %57 to i8
  %59 = sext i8 %58 to i32
  switch i32 %59, label %67 [
    i32 102, label %60
    i32 45, label %61
    i32 108, label %61
    i32 109, label %62
    i32 115, label %63
    i32 99, label %64
    i32 63, label %66
  ]

60:                                               ; preds = %56
  store i32 1, i32* %18, align 4
  br label %69

61:                                               ; preds = %56, %56
  store i32 0, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %69

62:                                               ; preds = %56
  store i32 1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %69

63:                                               ; preds = %56
  store i32 1, i32* %23, align 4
  br label %69

64:                                               ; preds = %56
  %65 = load i8*, i8** @optarg, align 8
  store i8* %65, i8** %26, align 8
  br label %69

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %56, %66
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %64, %63, %62, %61, %60
  br label %51

70:                                               ; preds = %51
  %71 = load i32, i32* @optind, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* @optind, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @optind, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %30, align 8
  br label %81

81:                                               ; preds = %74, %70
  %82 = load i8*, i8** %30, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (...) @usage()
  br label %86

86:                                               ; preds = %84, %81
  %87 = call i64 (...) @geteuid()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i8*, i8** %30, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = load i32, i32* @MAXLOGNAME, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %91
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 8, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8** @malloc(i32 %104)
  store i8** %105, i8*** %33, align 8
  %106 = load i8**, i8*** %33, align 8
  %107 = icmp eq i8** %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %99
  %111 = load i8**, i8*** %33, align 8
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  store i8* null, i8** %115, align 8
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %20, align 4
  br label %117

117:                                              ; preds = %132, %110
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* @optind, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** %33, align 8
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  store i8* %126, i8** %131, align 8
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %20, align 4
  br label %117

135:                                              ; preds = %117
  %136 = load i8**, i8*** %33, align 8
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = bitcast %union.anon* %10 to i8***
  store i8** %140, i8*** %141, align 8
  %142 = load i32, i32* @optind, align 4
  %143 = load i8**, i8*** %5, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  store i8** %145, i8*** %5, align 8
  store i64 0, i64* @errno, align 8
  %146 = load i32, i32* @PRIO_PROCESS, align 4
  %147 = call i32 @getpriority(i32 %146, i32 0)
  store i32 %147, i32* %19, align 4
  %148 = load i64, i64* @errno, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %135
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i32, i32* @PRIO_PROCESS, align 4
  %153 = call i32 @setpriority(i32 %152, i32 0, i32 -2)
  %154 = load i32, i32* @LOG_CONS, align 4
  %155 = load i32, i32* @LOG_AUTH, align 4
  %156 = call i32 @openlog(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %154, i32 %155)
  %157 = call i64 (...) @getuid()
  store i64 %157, i64* %11, align 8
  %158 = call i8* (...) @getlogin()
  store i8* %158, i8** %25, align 8
  %159 = load i8*, i8** %25, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i8*, i8** %25, align 8
  %163 = call %struct.passwd* @getpwnam(i8* %162)
  store %struct.passwd* %163, %struct.passwd** %6, align 8
  br label %164

164:                                              ; preds = %161, %151
  %165 = load %struct.passwd*, %struct.passwd** %6, align 8
  %166 = icmp eq %struct.passwd* %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load %struct.passwd*, %struct.passwd** %6, align 8
  %169 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %11, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167, %164
  %174 = load i64, i64* %11, align 8
  %175 = call %struct.passwd* @getpwuid(i64 %174)
  store %struct.passwd* %175, %struct.passwd** %6, align 8
  br label %176

176:                                              ; preds = %173, %167
  %177 = load %struct.passwd*, %struct.passwd** %6, align 8
  %178 = icmp eq %struct.passwd* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %176
  %182 = load %struct.passwd*, %struct.passwd** %6, align 8
  %183 = getelementptr inbounds %struct.passwd, %struct.passwd* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* @strdup(i8* %184)
  store i8* %185, i8** %25, align 8
  %186 = load i8*, i8** %25, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %181
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %190
  %194 = load %struct.passwd*, %struct.passwd** %6, align 8
  %195 = getelementptr inbounds %struct.passwd, %struct.passwd* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = load %struct.passwd*, %struct.passwd** %6, align 8
  %200 = getelementptr inbounds %struct.passwd, %struct.passwd* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load %struct.passwd*, %struct.passwd** %6, align 8
  %207 = getelementptr inbounds %struct.passwd, %struct.passwd* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = trunc i64 %47 to i32
  %210 = call i32 @strlcpy(i8* %49, i8* %208, i32 %209)
  store i8* %49, i8** %31, align 8
  br label %214

211:                                              ; preds = %198, %193
  %212 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %212, i8** %31, align 8
  %213 = load i32, i32* @NO, align 4
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %211, %205
  br label %215

215:                                              ; preds = %214, %190
  %216 = load i8*, i8** %30, align 8
  %217 = call i32 @pam_start(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %216, %struct.pam_conv* %7, i32* @pamh)
  store i32 %217, i32* %21, align 4
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* @PAM_SUCCESS, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load i32, i32* @LOG_ERR, align 4
  %223 = load i32, i32* @pamh, align 4
  %224 = load i32, i32* %21, align 4
  %225 = call i8* @pam_strerror(i32 %223, i32 %224)
  %226 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %225)
  %227 = load i32, i32* @pamh, align 4
  %228 = load i32, i32* %21, align 4
  %229 = call i8* @pam_strerror(i32 %227, i32 %228)
  %230 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %221, %215
  %232 = load i32, i32* @PAM_RUSER, align 4
  %233 = load i8*, i8** %25, align 8
  %234 = call i32 @PAM_SET_ITEM(i32 %232, i8* %233)
  %235 = load i32, i32* @STDERR_FILENO, align 4
  %236 = call i8* @ttyname(i32 %235)
  store i8* %236, i8** %32, align 8
  %237 = load i8*, i8** %32, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %231
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %32, align 8
  br label %240

240:                                              ; preds = %239, %231
  %241 = load i32, i32* @PAM_TTY, align 4
  %242 = load i8*, i8** %32, align 8
  %243 = call i32 @PAM_SET_ITEM(i32 %241, i8* %242)
  %244 = load i32, i32* @pamh, align 4
  %245 = call i32 @pam_authenticate(i32 %244, i32 0)
  store i32 %245, i32* %21, align 4
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* @PAM_SUCCESS, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %240
  %250 = load i32, i32* @LOG_AUTH, align 4
  %251 = load i32, i32* @LOG_WARNING, align 4
  %252 = or i32 %250, %251
  %253 = load i8*, i8** %25, align 8
  %254 = load i8*, i8** %30, align 8
  %255 = load i8*, i8** %32, align 8
  %256 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %253, i8* %254, i8* %255)
  %257 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %258

258:                                              ; preds = %249, %240
  %259 = load i32, i32* @pamh, align 4
  %260 = load i32, i32* @PAM_USER, align 4
  %261 = call i32 @pam_get_item(i32 %259, i32 %260, i8** %34)
  store i32 %261, i32* %21, align 4
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* @PAM_SUCCESS, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load i8*, i8** %34, align 8
  store i8* %266, i8** %30, align 8
  br label %273

267:                                              ; preds = %258
  %268 = load i32, i32* @LOG_ERR, align 4
  %269 = load i32, i32* @pamh, align 4
  %270 = load i32, i32* %21, align 4
  %271 = call i8* @pam_strerror(i32 %269, i32 %270)
  %272 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %268, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %271)
  br label %273

273:                                              ; preds = %267, %265
  %274 = load i8*, i8** %30, align 8
  %275 = call %struct.passwd* @getpwnam(i8* %274)
  store %struct.passwd* %275, %struct.passwd** %6, align 8
  %276 = load %struct.passwd*, %struct.passwd** %6, align 8
  %277 = icmp eq %struct.passwd* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = load i8*, i8** %30, align 8
  %280 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %279)
  br label %281

281:                                              ; preds = %278, %273
  %282 = load i32, i32* @pamh, align 4
  %283 = call i32 @pam_acct_mgmt(i32 %282, i32 0)
  store i32 %283, i32* %21, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* @PAM_NEW_AUTHTOK_REQD, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %302

287:                                              ; preds = %281
  %288 = load i32, i32* @pamh, align 4
  %289 = load i32, i32* @PAM_CHANGE_EXPIRED_AUTHTOK, align 4
  %290 = call i32 @pam_chauthtok(i32 %288, i32 %289)
  store i32 %290, i32* %21, align 4
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* @PAM_SUCCESS, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %287
  %295 = load i32, i32* @LOG_ERR, align 4
  %296 = load i32, i32* @pamh, align 4
  %297 = load i32, i32* %21, align 4
  %298 = call i8* @pam_strerror(i32 %296, i32 %297)
  %299 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %295, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %298)
  %300 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %301

301:                                              ; preds = %294, %287
  br label %302

302:                                              ; preds = %301, %281
  %303 = load i32, i32* %21, align 4
  %304 = load i32, i32* @PAM_SUCCESS, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %302
  %307 = load i32, i32* @LOG_ERR, align 4
  %308 = load i32, i32* @pamh, align 4
  %309 = load i32, i32* %21, align 4
  %310 = call i8* @pam_strerror(i32 %308, i32 %309)
  %311 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %307, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %310)
  %312 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %313

313:                                              ; preds = %306, %302
  %314 = load i8*, i8** %26, align 8
  %315 = icmp eq i8* %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = load %struct.passwd*, %struct.passwd** %6, align 8
  %318 = call %struct.TYPE_6__* @login_getpwclass(%struct.passwd* %317)
  store %struct.TYPE_6__* %318, %struct.TYPE_6__** %9, align 8
  br label %347

319:                                              ; preds = %313
  %320 = load i64, i64* %11, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %319
  %325 = load i8*, i8** %26, align 8
  %326 = call %struct.TYPE_6__* @login_getclass(i8* %325)
  store %struct.TYPE_6__* %326, %struct.TYPE_6__** %9, align 8
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %328 = icmp eq %struct.TYPE_6__* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %324
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = icmp eq i8* %334, null
  br i1 %335, label %343, label %336

336:                                              ; preds = %331
  %337 = load i8*, i8** %26, align 8
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = call i64 @strcmp(i8* %337, i8* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %336, %331
  %344 = load i8*, i8** %26, align 8
  %345 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %344)
  br label %346

346:                                              ; preds = %343, %336
  br label %347

347:                                              ; preds = %346, %316
  %348 = load i32, i32* %15, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %362

350:                                              ; preds = %347
  %351 = load i64, i64* %11, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %350
  %354 = load %struct.passwd*, %struct.passwd** %6, align 8
  %355 = getelementptr inbounds %struct.passwd, %struct.passwd* %354, i32 0, i32 2
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @chshell(i8* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %353
  %360 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  br label %361

361:                                              ; preds = %359, %353, %350
  br label %383

362:                                              ; preds = %347
  %363 = load %struct.passwd*, %struct.passwd** %6, align 8
  %364 = getelementptr inbounds %struct.passwd, %struct.passwd* %363, i32 0, i32 2
  %365 = load i8*, i8** %364, align 8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %379

367:                                              ; preds = %362
  %368 = load %struct.passwd*, %struct.passwd** %6, align 8
  %369 = getelementptr inbounds %struct.passwd, %struct.passwd* %368, i32 0, i32 2
  %370 = load i8*, i8** %369, align 8
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %367
  %375 = load %struct.passwd*, %struct.passwd** %6, align 8
  %376 = getelementptr inbounds %struct.passwd, %struct.passwd* %375, i32 0, i32 2
  %377 = load i8*, i8** %376, align 8
  store i8* %377, i8** %31, align 8
  %378 = load i32, i32* @UNSET, align 4
  store i32 %378, i32* %8, align 4
  br label %382

379:                                              ; preds = %367, %362
  %380 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %380, i8** %31, align 8
  %381 = load i32, i32* @NO, align 4
  store i32 %381, i32* %8, align 4
  br label %382

382:                                              ; preds = %379, %374
  br label %383

383:                                              ; preds = %382, %361
  %384 = load i32, i32* %8, align 4
  %385 = load i32, i32* @UNSET, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %415

387:                                              ; preds = %383
  %388 = load i8*, i8** %31, align 8
  %389 = call i8* @strrchr(i8* %388, i8 signext 47)
  store i8* %389, i8** %29, align 8
  %390 = load i8*, i8** %29, align 8
  %391 = icmp ne i8* %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %387
  %393 = load i8*, i8** %29, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %29, align 8
  br label %397

395:                                              ; preds = %387
  %396 = load i8*, i8** %31, align 8
  store i8* %396, i8** %29, align 8
  br label %397

397:                                              ; preds = %395, %392
  %398 = load i8*, i8** %29, align 8
  %399 = call i64 @strcmp(i8* %398, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %411

401:                                              ; preds = %397
  %402 = load i8*, i8** %29, align 8
  %403 = call i64 @strcmp(i8* %402, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %401
  %406 = load i32, i32* @NO, align 4
  br label %409

407:                                              ; preds = %401
  %408 = load i32, i32* @YES, align 4
  br label %409

409:                                              ; preds = %407, %405
  %410 = phi i32 [ %406, %405 ], [ %408, %407 ]
  br label %413

411:                                              ; preds = %397
  %412 = load i32, i32* @YES, align 4
  br label %413

413:                                              ; preds = %411, %409
  %414 = phi i32 [ %410, %409 ], [ %412, %411 ]
  store i32 %414, i32* %8, align 4
  br label %415

415:                                              ; preds = %413, %383
  %416 = load i32, i32* @PRIO_PROCESS, align 4
  %417 = load i32, i32* %19, align 4
  %418 = call i32 @setpriority(i32 %416, i32 0, i32 %417)
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %420 = load %struct.passwd*, %struct.passwd** %6, align 8
  %421 = load %struct.passwd*, %struct.passwd** %6, align 8
  %422 = getelementptr inbounds %struct.passwd, %struct.passwd* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i32, i32* @LOGIN_SETGROUP, align 4
  %425 = call i64 @setusercontext(%struct.TYPE_6__* %419, %struct.passwd* %420, i64 %423, i32 %424)
  %426 = icmp slt i64 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %415
  %428 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  br label %429

429:                                              ; preds = %427, %415
  %430 = load i32, i32* @pamh, align 4
  %431 = load i32, i32* @PAM_ESTABLISH_CRED, align 4
  %432 = call i32 @pam_setcred(i32 %430, i32 %431)
  store i32 %432, i32* %21, align 4
  %433 = load i32, i32* %21, align 4
  %434 = load i32, i32* @PAM_SUCCESS, align 4
  %435 = icmp ne i32 %433, %434
  br i1 %435, label %436, label %443

436:                                              ; preds = %429
  %437 = load i32, i32* @LOG_ERR, align 4
  %438 = load i32, i32* @pamh, align 4
  %439 = load i32, i32* %21, align 4
  %440 = call i8* @pam_strerror(i32 %438, i32 %439)
  %441 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %437, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8* %440)
  %442 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  br label %443

443:                                              ; preds = %436, %429
  %444 = load i32, i32* %17, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %460

446:                                              ; preds = %443
  %447 = load i32, i32* @pamh, align 4
  %448 = call i32 @pam_open_session(i32 %447, i32 0)
  store i32 %448, i32* %21, align 4
  %449 = load i32, i32* %21, align 4
  %450 = load i32, i32* @PAM_SUCCESS, align 4
  %451 = icmp ne i32 %449, %450
  br i1 %451, label %452, label %459

452:                                              ; preds = %446
  %453 = load i32, i32* @LOG_ERR, align 4
  %454 = load i32, i32* @pamh, align 4
  %455 = load i32, i32* %21, align 4
  %456 = call i8* @pam_strerror(i32 %454, i32 %455)
  %457 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %453, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %456)
  %458 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %459

459:                                              ; preds = %452, %446
  br label %460

460:                                              ; preds = %459, %443
  %461 = load i32, i32* @SA_RESTART, align 4
  %462 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %35, i32 0, i32 2
  store i32 %461, i32* %462, align 4
  %463 = load i8*, i8** @SIG_IGN, align 8
  %464 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %35, i32 0, i32 0
  store i8* %463, i8** %464, align 8
  %465 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %35, i32 0, i32 1
  %466 = call i32 @sigemptyset(i32* %465)
  %467 = load i32, i32* @SIGINT, align 4
  %468 = call i32 @sigaction(i32 %467, %struct.sigaction* %35, %struct.sigaction* %36)
  %469 = load i32, i32* @SIGQUIT, align 4
  %470 = call i32 @sigaction(i32 %469, %struct.sigaction* %35, %struct.sigaction* %37)
  %471 = load i32, i32* @SIGPIPE, align 4
  %472 = call i32 @sigaction(i32 %471, %struct.sigaction* %35, %struct.sigaction* %38)
  %473 = load i8*, i8** @SIG_DFL, align 8
  %474 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %35, i32 0, i32 0
  store i8* %473, i8** %474, align 8
  %475 = load i32, i32* @SIGTSTP, align 4
  %476 = call i32 @sigaction(i32 %475, %struct.sigaction* %35, %struct.sigaction* null)
  store i32 1, i32* %22, align 4
  %477 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 0
  %478 = call i32 @pipe(i32* %477)
  %479 = icmp eq i32 %478, -1
  br i1 %479, label %480, label %483

480:                                              ; preds = %460
  %481 = call i32 (...) @PAM_END()
  %482 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %483

483:                                              ; preds = %480, %460
  %484 = call i32 (...) @fork()
  store i32 %484, i32* %12, align 4
  %485 = load i32, i32* %12, align 4
  switch i32 %485, label %486 [
    i32 -1, label %563
    i32 0, label %566
  ]

486:                                              ; preds = %483
  %487 = load i8*, i8** @SIG_IGN, align 8
  %488 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %35, i32 0, i32 0
  store i8* %487, i8** %488, align 8
  %489 = load i32, i32* @SIGTTOU, align 4
  %490 = call i32 @sigaction(i32 %489, %struct.sigaction* %35, %struct.sigaction* null)
  %491 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 0
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @close(i32 %492)
  %494 = load i32, i32* %12, align 4
  %495 = load i32, i32* %12, align 4
  %496 = call i32 @setpgid(i32 %494, i32 %495)
  %497 = load i32, i32* @STDERR_FILENO, align 4
  %498 = call i32 @tcgetpgrp(i32 %497)
  %499 = call i32 (...) @getpgrp()
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %505

501:                                              ; preds = %486
  %502 = load i32, i32* @STDERR_FILENO, align 4
  %503 = load i32, i32* %12, align 4
  %504 = call i32 @tcsetpgrp(i32 %502, i32 %503)
  br label %505

505:                                              ; preds = %501, %486
  %506 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 1
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @close(i32 %507)
  %509 = load i32, i32* @SIGPIPE, align 4
  %510 = call i32 @sigaction(i32 %509, %struct.sigaction* %38, %struct.sigaction* null)
  br label %511

511:                                              ; preds = %545, %505
  %512 = load i32, i32* %12, align 4
  %513 = load i32, i32* @WUNTRACED, align 4
  %514 = call i32 @waitpid(i32 %512, i32* %22, i32 %513)
  store i32 %514, i32* %14, align 4
  %515 = icmp ne i32 %514, -1
  br i1 %515, label %516, label %550

516:                                              ; preds = %511
  %517 = load i32, i32* %22, align 4
  %518 = call i32 @WIFSTOPPED(i32 %517)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %549

520:                                              ; preds = %516
  %521 = load i32, i32* %12, align 4
  %522 = call i32 @getpgid(i32 %521)
  store i32 %522, i32* %13, align 4
  %523 = load i32, i32* @STDERR_FILENO, align 4
  %524 = call i32 @tcgetpgrp(i32 %523)
  %525 = load i32, i32* %13, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %531

527:                                              ; preds = %520
  %528 = load i32, i32* @STDERR_FILENO, align 4
  %529 = call i32 (...) @getpgrp()
  %530 = call i32 @tcsetpgrp(i32 %528, i32 %529)
  br label %531

531:                                              ; preds = %527, %520
  %532 = call i32 (...) @getpid()
  %533 = load i32, i32* @SIGSTOP, align 4
  %534 = call i32 @kill(i32 %532, i32 %533)
  %535 = load i32, i32* @STDERR_FILENO, align 4
  %536 = call i32 @tcgetpgrp(i32 %535)
  %537 = call i32 (...) @getpgrp()
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %545

539:                                              ; preds = %531
  %540 = load i32, i32* %12, align 4
  %541 = call i32 @getpgid(i32 %540)
  store i32 %541, i32* %13, align 4
  %542 = load i32, i32* @STDERR_FILENO, align 4
  %543 = load i32, i32* %13, align 4
  %544 = call i32 @tcsetpgrp(i32 %542, i32 %543)
  br label %545

545:                                              ; preds = %539, %531
  %546 = load i32, i32* %12, align 4
  %547 = load i32, i32* @SIGCONT, align 4
  %548 = call i32 @kill(i32 %546, i32 %547)
  store i32 1, i32* %22, align 4
  br label %511

549:                                              ; preds = %516
  br label %550

550:                                              ; preds = %549, %511
  %551 = load i32, i32* @STDERR_FILENO, align 4
  %552 = call i32 (...) @getpgrp()
  %553 = call i32 @tcsetpgrp(i32 %551, i32 %552)
  %554 = load i32, i32* %14, align 4
  %555 = icmp eq i32 %554, -1
  br i1 %555, label %556, label %558

556:                                              ; preds = %550
  %557 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  br label %558

558:                                              ; preds = %556, %550
  %559 = call i32 (...) @PAM_END()
  %560 = load i32, i32* %22, align 4
  %561 = call i32 @WEXITSTATUS(i32 %560)
  %562 = call i32 @exit(i32 %561) #4
  unreachable

563:                                              ; preds = %483
  %564 = call i32 (...) @PAM_END()
  %565 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %566

566:                                              ; preds = %483, %563
  %567 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 1
  %568 = load i32, i32* %567, align 4
  %569 = call i32 @close(i32 %568)
  %570 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 0
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @read(i32 %571, i32* %39, i32 1)
  %573 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 0
  %574 = load i32, i32* %573, align 4
  %575 = call i32 @close(i32 %574)
  %576 = load i32, i32* @SIGPIPE, align 4
  %577 = call i32 @sigaction(i32 %576, %struct.sigaction* %38, %struct.sigaction* null)
  %578 = load i32, i32* @SIGINT, align 4
  %579 = call i32 @sigaction(i32 %578, %struct.sigaction* %36, %struct.sigaction* null)
  %580 = load i32, i32* @SIGQUIT, align 4
  %581 = call i32 @sigaction(i32 %580, %struct.sigaction* %37, %struct.sigaction* null)
  %582 = load i32, i32* @LOGIN_SETALL, align 4
  %583 = load i32, i32* @LOGIN_SETENV, align 4
  %584 = load i32, i32* @LOGIN_SETUMASK, align 4
  %585 = or i32 %583, %584
  %586 = load i32, i32* @LOGIN_SETLOGIN, align 4
  %587 = or i32 %585, %586
  %588 = load i32, i32* @LOGIN_SETPATH, align 4
  %589 = or i32 %587, %588
  %590 = load i32, i32* @LOGIN_SETGROUP, align 4
  %591 = or i32 %589, %590
  %592 = load i32, i32* @LOGIN_SETMAC, align 4
  %593 = or i32 %591, %592
  %594 = xor i32 %593, -1
  %595 = and i32 %582, %594
  store i32 %595, i32* %24, align 4
  %596 = load i32, i32* %23, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %602

598:                                              ; preds = %566
  %599 = load i32, i32* @LOGIN_SETMAC, align 4
  %600 = load i32, i32* %24, align 4
  %601 = or i32 %600, %599
  store i32 %601, i32* %24, align 4
  br label %602

602:                                              ; preds = %598, %566
  %603 = load i32, i32* %15, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %611, label %605

605:                                              ; preds = %602
  %606 = load i32, i32* %17, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %623, label %608

608:                                              ; preds = %605
  %609 = load i8*, i8** %26, align 8
  %610 = icmp eq i8* %609, null
  br i1 %610, label %611, label %623

611:                                              ; preds = %608, %602
  %612 = load %struct.passwd*, %struct.passwd** %6, align 8
  %613 = getelementptr inbounds %struct.passwd, %struct.passwd* %612, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %616, label %623

616:                                              ; preds = %611
  %617 = load i32, i32* @LOGIN_SETPRIORITY, align 4
  %618 = load i32, i32* @LOGIN_SETRESOURCES, align 4
  %619 = or i32 %617, %618
  %620 = xor i32 %619, -1
  %621 = load i32, i32* %24, align 4
  %622 = and i32 %621, %620
  store i32 %622, i32* %24, align 4
  br label %623

623:                                              ; preds = %616, %611, %608, %605
  %624 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %625 = load %struct.passwd*, %struct.passwd** %6, align 8
  %626 = load %struct.passwd*, %struct.passwd** %6, align 8
  %627 = getelementptr inbounds %struct.passwd, %struct.passwd* %626, i32 0, i32 0
  %628 = load i64, i64* %627, align 8
  %629 = load i32, i32* %24, align 4
  %630 = call i64 @setusercontext(%struct.TYPE_6__* %624, %struct.passwd* %625, i64 %628, i32 %629)
  %631 = icmp slt i64 %630, 0
  br i1 %631, label %632, label %634

632:                                              ; preds = %623
  %633 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  br label %634

634:                                              ; preds = %632, %623
  %635 = load i32, i32* %15, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %707, label %637

637:                                              ; preds = %634
  %638 = load i32, i32* %17, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %642

640:                                              ; preds = %637
  %641 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  store i8* %641, i8** %29, align 8
  store i8** @main.cleanenv, i8*** @environ, align 8
  br label %642

642:                                              ; preds = %640, %637
  %643 = load i32, i32* %17, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %650, label %645

645:                                              ; preds = %642
  %646 = load %struct.passwd*, %struct.passwd** %6, align 8
  %647 = getelementptr inbounds %struct.passwd, %struct.passwd* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %650, label %655

650:                                              ; preds = %645, %642
  %651 = load %struct.passwd*, %struct.passwd** %6, align 8
  %652 = getelementptr inbounds %struct.passwd, %struct.passwd* %651, i32 0, i32 1
  %653 = load i8*, i8** %652, align 8
  %654 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* %653, i32 1)
  br label %655

655:                                              ; preds = %650, %645
  %656 = load %struct.passwd*, %struct.passwd** %6, align 8
  %657 = getelementptr inbounds %struct.passwd, %struct.passwd* %656, i32 0, i32 3
  %658 = load i8*, i8** %657, align 8
  %659 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* %658, i32 1)
  %660 = load i8*, i8** %31, align 8
  %661 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* %660, i32 1)
  %662 = load i32, i32* %17, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %706

664:                                              ; preds = %655
  %665 = load i32, i32* @pamh, align 4
  %666 = call i32 @pam_getenvlist(i32 %665)
  store i32 %666, i32* @environ_pam, align 4
  %667 = load i32, i32* @environ_pam, align 4
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %671

669:                                              ; preds = %664
  %670 = call i32 (...) @export_pam_environment()
  br label %671

671:                                              ; preds = %669, %664
  %672 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %673 = load %struct.passwd*, %struct.passwd** %6, align 8
  %674 = load %struct.passwd*, %struct.passwd** %6, align 8
  %675 = getelementptr inbounds %struct.passwd, %struct.passwd* %674, i32 0, i32 0
  %676 = load i64, i64* %675, align 8
  %677 = load i32, i32* @LOGIN_SETPATH, align 4
  %678 = load i32, i32* @LOGIN_SETUMASK, align 4
  %679 = or i32 %677, %678
  %680 = load i32, i32* @LOGIN_SETENV, align 4
  %681 = or i32 %679, %680
  %682 = call i64 @setusercontext(%struct.TYPE_6__* %672, %struct.passwd* %673, i64 %676, i32 %681)
  %683 = load i8*, i8** %29, align 8
  %684 = icmp ne i8* %683, null
  br i1 %684, label %685, label %688

685:                                              ; preds = %671
  %686 = load i8*, i8** %29, align 8
  %687 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* %686, i32 1)
  br label %688

688:                                              ; preds = %685, %671
  %689 = load i32, i32* @pamh, align 4
  %690 = call i8* @pam_getenv(i32 %689, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  store i8* %690, i8** %29, align 8
  %691 = load i8*, i8** %29, align 8
  %692 = icmp ne i8* %691, null
  br i1 %692, label %693, label %695

693:                                              ; preds = %688
  %694 = load i8*, i8** %29, align 8
  br label %699

695:                                              ; preds = %688
  %696 = load %struct.passwd*, %struct.passwd** %6, align 8
  %697 = getelementptr inbounds %struct.passwd, %struct.passwd* %696, i32 0, i32 3
  %698 = load i8*, i8** %697, align 8
  br label %699

699:                                              ; preds = %695, %693
  %700 = phi i8* [ %694, %693 ], [ %698, %695 ]
  %701 = call i32 @chdir(i8* %700)
  %702 = icmp slt i32 %701, 0
  br i1 %702, label %703, label %705

703:                                              ; preds = %699
  %704 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0))
  br label %705

705:                                              ; preds = %703, %699
  br label %706

706:                                              ; preds = %705, %655
  br label %707

707:                                              ; preds = %706, %634
  %708 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %709 = call i32 @login_close(%struct.TYPE_6__* %708)
  %710 = load i32, i32* %8, align 4
  %711 = load i32, i32* @YES, align 4
  %712 = icmp eq i32 %710, %711
  br i1 %712, label %713, label %728

713:                                              ; preds = %707
  %714 = load i32, i32* %18, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %720

716:                                              ; preds = %713
  %717 = bitcast %union.anon* %10 to i8***
  %718 = load i8**, i8*** %717, align 8
  %719 = getelementptr inbounds i8*, i8** %718, i32 -1
  store i8** %719, i8*** %717, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8** %718, align 8
  br label %720

720:                                              ; preds = %716, %713
  %721 = load i32, i32* %15, align 4
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %727

723:                                              ; preds = %720
  %724 = bitcast %union.anon* %10 to i8***
  %725 = load i8**, i8*** %724, align 8
  %726 = getelementptr inbounds i8*, i8** %725, i32 -1
  store i8** %726, i8*** %724, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8** %725, align 8
  br label %727

727:                                              ; preds = %723, %720
  br label %728

728:                                              ; preds = %727, %707
  %729 = load i32, i32* %17, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %732

731:                                              ; preds = %728
  br label %738

732:                                              ; preds = %728
  %733 = load i32, i32* %8, align 4
  %734 = load i32, i32* @YES, align 4
  %735 = icmp eq i32 %733, %734
  %736 = zext i1 %735 to i64
  %737 = select i1 %735, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  br label %738

738:                                              ; preds = %732, %731
  %739 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), %731 ], [ %737, %732 ]
  %740 = bitcast %union.anon* %10 to i8***
  %741 = load i8**, i8*** %740, align 8
  store i8* %739, i8** %741, align 8
  %742 = load i64, i64* %11, align 8
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %744, label %750

744:                                              ; preds = %738
  %745 = load i32, i32* @LOG_NOTICE, align 4
  %746 = load i8*, i8** %25, align 8
  %747 = load i8*, i8** %30, align 8
  %748 = call i8* (...) @ontty()
  %749 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %745, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8* %746, i8* %747, i8* %748)
  br label %750

750:                                              ; preds = %744, %738
  %751 = load i8*, i8** %31, align 8
  %752 = bitcast %union.anon* %10 to i8***
  %753 = load i8**, i8*** %752, align 8
  %754 = call i32 @execv(i8* %751, i8** %753)
  %755 = load i8*, i8** %31, align 8
  %756 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %755)
  br label %757

757:                                              ; preds = %750
  %758 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %758)
  %759 = load i32, i32* %3, align 4
  ret i32 %759
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8** @malloc(i32) #2

declare dso_local i32 @getpriority(i32, i32) #2

declare dso_local i32 @setpriority(i32, i32, i32) #2

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i8* @getlogin(...) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local %struct.passwd* @getpwuid(i64) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @pam_start(i8*, i8*, %struct.pam_conv*, i32*) #2

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #2

declare dso_local i8* @pam_strerror(i32, i32) #2

declare dso_local i32 @PAM_SET_ITEM(i32, i8*) #2

declare dso_local i8* @ttyname(i32) #2

declare dso_local i32 @pam_authenticate(i32, i32) #2

declare dso_local i32 @pam_get_item(i32, i32, i8**) #2

declare dso_local i32 @pam_acct_mgmt(i32, i32) #2

declare dso_local i32 @pam_chauthtok(i32, i32) #2

declare dso_local %struct.TYPE_6__* @login_getpwclass(%struct.passwd*) #2

declare dso_local %struct.TYPE_6__* @login_getclass(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @chshell(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @setusercontext(%struct.TYPE_6__*, %struct.passwd*, i64, i32) #2

declare dso_local i32 @pam_setcred(i32, i32) #2

declare dso_local i32 @pam_open_session(i32, i32) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

declare dso_local i32 @pipe(i32*) #2

declare dso_local i32 @PAM_END(...) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @setpgid(i32, i32) #2

declare dso_local i32 @tcgetpgrp(i32) #2

declare dso_local i32 @getpgrp(...) #2

declare dso_local i32 @tcsetpgrp(i32, i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @WIFSTOPPED(i32) #2

declare dso_local i32 @getpgid(i32) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i32 @getpid(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i32 @read(i32, i32*, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @pam_getenvlist(i32) #2

declare dso_local i32 @export_pam_environment(...) #2

declare dso_local i8* @pam_getenv(i32, i8*) #2

declare dso_local i32 @chdir(i8*) #2

declare dso_local i32 @login_close(%struct.TYPE_6__*) #2

declare dso_local i8* @ontty(...) #2

declare dso_local i32 @execv(i8*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

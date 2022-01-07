; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i8*, i64, i64, i32, i32* }
%struct.url_stat = type { i32, i64, i64 }
%struct.stat = type { i64, i32, i32, i64, i64, i32, i32 }
%struct.xferstat = type { i32 }
%struct.timeval = type { i64, i64 }

@v_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@fetchDebug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"empty URL\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: parse error\00", align 1
@SCHEME_FILE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"ftp.\00", align 1
@SCHEME_FTP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"www.\00", align 1
@SCHEME_HTTP = common dso_local global i8* null, align 8
@family = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@p_flag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@d_flag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@U_flag = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@T_secs = common dso_local global i32 0, align 4
@ftp_timeout = common dso_local global i32 0, align 4
@SCHEME_HTTPS = common dso_local global i8* null, align 8
@A_flag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@http_timeout = common dso_local global i32 0, align 4
@i_flag = common dso_local global i64 0, align 8
@i_filename = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"%s: stat()\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@fetchTimeout = common dso_local global i32 0, align 4
@s_flag = common dso_local global i64 0, align 8
@sigalrm = common dso_local global i32 0, align 4
@sigint = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fetchLastErrString = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%jd\0A\00", align 1
@o_stdout = common dso_local global i64 0, align 8
@r_flag = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@fetchLastErrCode = common dso_local global i64 0, align 8
@FETCH_OK = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"Not Modified\00", align 1
@S_size = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"%s: size unknown\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"%s: size mismatch: expected %jd, actual %jd\00", align 1
@l_flag = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%s: symlink()\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"%s: size of remote file is not known\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [31 x i8] c"local size / mtime: %jd / %ld\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"remote size / mtime: %jd / %ld\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@F_flag = common dso_local global i32 0, align 4
@R_flag = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [50 x i8] c"%s: local modification time does not match remote\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"%s: gap in resume mode\00", align 1
@.str.27 = private unnamed_addr constant [66 x i8] c"%s: local file (%jd bytes) is longer than remote file (%jd bytes)\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"%s: fopen()\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"%s: fstat()\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"%s: file has changed\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"%s: fseeko()\00", align 1
@m_flag = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [21 x i8] c"%.*s.fetch.XXXXXX.%s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"%s: mkstemps()\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@ALLPERMS = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"%s: open()\00", align 1
@siginfo = common dso_local global i32 0, align 4
@_IOFBF = common dso_local global i32 0, align 4
@B_size = common dso_local global i64 0, align 8
@SIGINFO = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@EINTR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i32 0, align 4
@n_flag = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"%s: utimes()\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"transfer timed out\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"transfer interrupted\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"%s appears to be truncated: %jd/%jd bytes\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"%s may be truncated\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"%s: rename()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.url*, align 8
  %6 = alloca %struct.url_stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.xferstat, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [8 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca [2 x %struct.timeval], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %20, align 4
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %23, align 1
  store i64 0, i64* %15, align 8
  %24 = load i32, i32* @v_level, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %28 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @v_level, align 4
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* @fetchDebug, align 4
  br label %33

33:                                               ; preds = %32, %29
  store %struct.url* null, %struct.url** %5, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %960

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = call %struct.url* @fetchParseURL(i8* %41)
  store %struct.url* %42, %struct.url** %5, align 8
  %43 = icmp eq %struct.url* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %960

47:                                               ; preds = %40
  %48 = load %struct.url*, %struct.url** %5, align 8
  %49 = getelementptr inbounds %struct.url, %struct.url* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %92, label %53

53:                                               ; preds = %47
  %54 = load %struct.url*, %struct.url** %5, align 8
  %55 = getelementptr inbounds %struct.url, %struct.url* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.url*, %struct.url** %5, align 8
  %61 = getelementptr inbounds %struct.url, %struct.url* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** @SCHEME_FILE, align 8
  %64 = call i32 @strcpy(i8* %62, i8* %63)
  br label %91

65:                                               ; preds = %53
  %66 = load %struct.url*, %struct.url** %5, align 8
  %67 = getelementptr inbounds %struct.url, %struct.url* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @strncasecmp(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.url*, %struct.url** %5, align 8
  %73 = getelementptr inbounds %struct.url, %struct.url* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @SCHEME_FTP, align 8
  %76 = call i32 @strcpy(i8* %74, i8* %75)
  br label %90

77:                                               ; preds = %65
  %78 = load %struct.url*, %struct.url** %5, align 8
  %79 = getelementptr inbounds %struct.url, %struct.url* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @strncasecmp(i32* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.url*, %struct.url** %5, align 8
  %85 = getelementptr inbounds %struct.url, %struct.url* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @SCHEME_HTTP, align 8
  %88 = call i32 @strcpy(i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %83, %77
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91, %47
  %93 = load i32, i32* @family, align 4
  switch i32 %93, label %100 [
    i32 129, label %94
    i32 128, label %97
  ]

94:                                               ; preds = %92
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %96 = call i32 @strcat(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %100

97:                                               ; preds = %92
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %99 = call i32 @strcat(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %92, %97, %94
  %101 = load %struct.url*, %struct.url** %5, align 8
  %102 = getelementptr inbounds %struct.url, %struct.url* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** @SCHEME_FTP, align 8
  %105 = call i64 @strcmp(i8* %103, i8* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %134

107:                                              ; preds = %100
  %108 = load i64, i64* @p_flag, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %112 = call i32 @strcat(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i64, i64* @d_flag, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %118 = call i32 @strcat(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64, i64* @U_flag, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %124 = call i32 @strcat(i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* @T_secs, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @T_secs, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @ftp_timeout, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %20, align 4
  br label %134

134:                                              ; preds = %132, %100
  %135 = load %struct.url*, %struct.url** %5, align 8
  %136 = getelementptr inbounds %struct.url, %struct.url* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** @SCHEME_HTTP, align 8
  %139 = call i64 @strcmp(i8* %137, i8* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %134
  %142 = load %struct.url*, %struct.url** %5, align 8
  %143 = getelementptr inbounds %struct.url, %struct.url* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** @SCHEME_HTTPS, align 8
  %146 = call i64 @strcmp(i8* %144, i8* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %141, %134
  %149 = load i64, i64* @d_flag, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %153 = call i32 @strcat(i8* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i64, i64* @A_flag, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %159 = call i32 @strcat(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* @T_secs, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* @T_secs, align 4
  br label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @http_timeout, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  store i32 %168, i32* %20, align 4
  %169 = load i64, i64* @i_flag, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = load i8*, i8** @i_filename, align 8
  %173 = call i32 @stat(i8* %172, %struct.stat* %7)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i8*, i8** @i_filename, align 8
  %177 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %176)
  br label %960

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.url*, %struct.url** %5, align 8
  %182 = getelementptr inbounds %struct.url, %struct.url* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  %183 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %184 = call i32 @strcat(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %185

185:                                              ; preds = %178, %167
  br label %186

186:                                              ; preds = %185, %141
  %187 = load i32, i32* %20, align 4
  store i32 %187, i32* @fetchTimeout, align 4
  %188 = load i64, i64* @s_flag, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %228

190:                                              ; preds = %186
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @alarm(i32 %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.url*, %struct.url** %5, align 8
  %198 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %199 = call i32 @fetchStat(%struct.url* %197, %struct.url_stat* %6, i8* %198)
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %20, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = call i32 @alarm(i32 0)
  br label %204

204:                                              ; preds = %202, %196
  %205 = load i32, i32* @sigalrm, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @sigint, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %204
  br label %810

211:                                              ; preds = %207
  %212 = load i32, i32* %19, align 4
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i8*, i8** @fetchLastErrString, align 8
  %216 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %215)
  br label %960

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %227

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %223, %221
  br label %948

228:                                              ; preds = %186
  %229 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  store i32 -1, i32* %229, align 8
  %230 = load i64, i64* @o_stdout, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %273, label %232

232:                                              ; preds = %228
  %233 = load i8*, i8** %4, align 8
  %234 = call i32 @stat(i8* %233, %struct.stat* %7)
  store i32 %234, i32* %19, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load i64, i64* @r_flag, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @S_ISREG(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = load %struct.url*, %struct.url** %5, align 8
  %250 = getelementptr inbounds %struct.url, %struct.url* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  br label %262

251:                                              ; preds = %240, %237, %232
  %252 = load i32, i32* %19, align 4
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @S_ISREG(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %254, %251
  %260 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  store i32 -1, i32* %260, align 8
  br label %261

261:                                              ; preds = %259, %254
  br label %262

262:                                              ; preds = %261, %245
  %263 = load i32, i32* %19, align 4
  %264 = icmp eq i32 %263, -1
  br i1 %264, label %265, label %272

265:                                              ; preds = %262
  %266 = load i64, i64* @errno, align 8
  %267 = load i64, i64* @ENOENT, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i8*, i8** %4, align 8
  %271 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %270)
  br label %960

272:                                              ; preds = %265, %262
  br label %273

273:                                              ; preds = %272, %228
  %274 = load i32, i32* %20, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %20, align 4
  %278 = call i32 @alarm(i32 %277)
  br label %279

279:                                              ; preds = %276, %273
  %280 = load %struct.url*, %struct.url** %5, align 8
  %281 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %282 = call i32* @fetchXGet(%struct.url* %280, %struct.url_stat* %6, i8* %281)
  store i32* %282, i32** %10, align 8
  %283 = load i32, i32* %20, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %279
  %286 = call i32 @alarm(i32 0)
  br label %287

287:                                              ; preds = %285, %279
  %288 = load i32, i32* @sigalrm, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* @sigint, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290, %287
  br label %810

294:                                              ; preds = %290
  %295 = load i32*, i32** %10, align 8
  %296 = icmp eq i32* %295, null
  br i1 %296, label %297, label %327

297:                                              ; preds = %294
  %298 = load i8*, i8** %3, align 8
  %299 = load i8*, i8** @fetchLastErrString, align 8
  %300 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %298, i8* %299)
  %301 = load i64, i64* @i_flag, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %297
  %304 = load %struct.url*, %struct.url** %5, align 8
  %305 = getelementptr inbounds %struct.url, %struct.url* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load i8*, i8** @SCHEME_HTTP, align 8
  %308 = call i64 @strcmp(i8* %306, i8* %307)
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %303
  %311 = load %struct.url*, %struct.url** %5, align 8
  %312 = getelementptr inbounds %struct.url, %struct.url* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load i8*, i8** @SCHEME_HTTPS, align 8
  %315 = call i64 @strcmp(i8* %313, i8* %314)
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %310, %303
  %318 = load i64, i64* @fetchLastErrCode, align 8
  %319 = load i64, i64* @FETCH_OK, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i8*, i8** @fetchLastErrString, align 8
  %323 = call i64 @strcmp(i8* %322, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  store i32 0, i32* %19, align 4
  br label %1010

326:                                              ; preds = %321, %317, %310, %297
  br label %960

327:                                              ; preds = %294
  %328 = load i32, i32* @sigint, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  br label %810

331:                                              ; preds = %327
  %332 = load i32, i32* @S_size, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %354

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  %339 = load i8*, i8** %3, align 8
  %340 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %339)
  br label %353

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @S_size, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %346, label %352

346:                                              ; preds = %341
  %347 = load i8*, i8** %3, align 8
  %348 = load i32, i32* @S_size, align 4
  %349 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i8* %347, i32 %348, i32 %350)
  br label %960

352:                                              ; preds = %341
  br label %353

353:                                              ; preds = %352, %338
  br label %354

354:                                              ; preds = %353, %331
  %355 = load i64, i64* @l_flag, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %377

357:                                              ; preds = %354
  %358 = load %struct.url*, %struct.url** %5, align 8
  %359 = getelementptr inbounds %struct.url, %struct.url* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = call i64 @strcmp(i8* %360, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %377

363:                                              ; preds = %357
  %364 = load i64, i64* @o_stdout, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %377, label %366

366:                                              ; preds = %363
  %367 = load %struct.url*, %struct.url** %5, align 8
  %368 = getelementptr inbounds %struct.url, %struct.url* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = load i8*, i8** %4, align 8
  %371 = call i32 @symlink(i32 %369, i8* %370)
  %372 = icmp eq i32 %371, -1
  br i1 %372, label %373, label %376

373:                                              ; preds = %366
  %374 = load i8*, i8** %4, align 8
  %375 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %374)
  br label %960

376:                                              ; preds = %366
  br label %948

377:                                              ; preds = %363, %357, %354
  %378 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp eq i32 %379, -1
  br i1 %380, label %381, label %390

381:                                              ; preds = %377
  %382 = load i64, i64* @o_stdout, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %390, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* @v_level, align 4
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i8*, i8** %3, align 8
  %389 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i8* %388)
  br label %390

390:                                              ; preds = %387, %384, %381, %377
  %391 = load i32, i32* @v_level, align 4
  %392 = icmp sgt i32 %391, 1
  br i1 %392, label %393, label %416

393:                                              ; preds = %390
  %394 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = icmp ne i32 %395, -1
  br i1 %396, label %397, label %404

397:                                              ; preds = %393
  %398 = load i32, i32* @stderr, align 4
  %399 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = call i32 @fprintf(i32 %398, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i32 %400, i64 %402)
  br label %404

404:                                              ; preds = %397, %393
  %405 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp ne i32 %406, -1
  br i1 %407, label %408, label %415

408:                                              ; preds = %404
  %409 = load i32, i32* @stderr, align 4
  %410 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = call i32 @fprintf(i32 %409, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 %411, i64 %413)
  br label %415

415:                                              ; preds = %408, %404
  br label %416

416:                                              ; preds = %415, %390
  %417 = load i64, i64* @o_stdout, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  %420 = load i32*, i32** @stdout, align 8
  store i32* %420, i32** %11, align 8
  br label %570

421:                                              ; preds = %416
  %422 = load i64, i64* @r_flag, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %547

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, -1
  br i1 %427, label %428, label %547

428:                                              ; preds = %424
  %429 = load i32, i32* @F_flag, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %450, label %431

431:                                              ; preds = %428
  %432 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %450

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %437, %439
  br i1 %440, label %441, label %450

441:                                              ; preds = %435
  %442 = load i32*, i32** %10, align 8
  %443 = call i32 @fclose(i32* %442)
  %444 = load i64, i64* @R_flag, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %441
  %447 = load i8*, i8** %4, align 8
  %448 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i8* %447)
  br label %1009

449:                                              ; preds = %441
  br label %530

450:                                              ; preds = %435, %431, %428
  %451 = load %struct.url*, %struct.url** %5, align 8
  %452 = getelementptr inbounds %struct.url, %struct.url* %451, i32 0, i32 2
  %453 = load i64, i64* %452, align 8
  %454 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %455 = load i32, i32* %454, align 8
  %456 = sext i32 %455 to i64
  %457 = icmp ugt i64 %453, %456
  br i1 %457, label %458, label %463

458:                                              ; preds = %450
  %459 = load i8*, i8** %3, align 8
  %460 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8* %459)
  %461 = load i32*, i32** %11, align 8
  %462 = call i32 @fclose(i32* %461)
  store i32* null, i32** %11, align 8
  br label %529

463:                                              ; preds = %450
  %464 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = icmp ne i32 %465, -1
  br i1 %466, label %467, label %528

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = icmp eq i32 %469, %471
  br i1 %472, label %473, label %474

473:                                              ; preds = %467
  br label %948

474:                                              ; preds = %467
  %475 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %476 = load i32, i32* %475, align 8
  %477 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = icmp sgt i32 %476, %478
  br i1 %479, label %480, label %487

480:                                              ; preds = %474
  %481 = load i8*, i8** %4, align 8
  %482 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.27, i64 0, i64 0), i8* %481, i32 %483, i32 %485)
  br label %960

487:                                              ; preds = %474
  %488 = load i8*, i8** %4, align 8
  %489 = call i32* @fopen(i8* %488, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  store i32* %489, i32** %11, align 8
  %490 = icmp eq i32* %489, null
  br i1 %490, label %491, label %494

491:                                              ; preds = %487
  %492 = load i8*, i8** %4, align 8
  %493 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* %492)
  br label %960

494:                                              ; preds = %487
  %495 = load i32*, i32** %11, align 8
  %496 = call i32 @fileno(i32* %495)
  %497 = call i32 @fstat(i32 %496, %struct.stat* %8)
  %498 = icmp eq i32 %497, -1
  br i1 %498, label %499, label %502

499:                                              ; preds = %494
  %500 = load i8*, i8** %4, align 8
  %501 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* %500)
  br label %960

502:                                              ; preds = %494
  %503 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  %504 = load i64, i64* %503, align 8
  %505 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %506 = load i64, i64* %505, align 8
  %507 = icmp ne i64 %504, %506
  br i1 %507, label %520, label %508

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  %510 = load i64, i64* %509, align 8
  %511 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 4
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %510, %512
  br i1 %513, label %520, label %514

514:                                              ; preds = %508
  %515 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  %517 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = icmp ne i32 %516, %518
  br i1 %519, label %520, label %527

520:                                              ; preds = %514, %508, %502
  %521 = load i8*, i8** %3, align 8
  %522 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i8* %521)
  %523 = load i32*, i32** %11, align 8
  %524 = call i32 @fclose(i32* %523)
  store i32* null, i32** %11, align 8
  %525 = bitcast %struct.stat* %7 to i8*
  %526 = bitcast %struct.stat* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %525, i8* align 8 %526, i64 40, i1 false)
  br label %527

527:                                              ; preds = %520, %514
  br label %528

528:                                              ; preds = %527, %463
  br label %529

529:                                              ; preds = %528, %458
  br label %530

530:                                              ; preds = %529, %449
  %531 = load i32*, i32** %11, align 8
  %532 = icmp ne i32* %531, null
  br i1 %532, label %533, label %546

533:                                              ; preds = %530
  %534 = load i32*, i32** %11, align 8
  %535 = load %struct.url*, %struct.url** %5, align 8
  %536 = getelementptr inbounds %struct.url, %struct.url* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = load i32, i32* @SEEK_SET, align 4
  %539 = call i64 @fseeko(i32* %534, i64 %537, i32 %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %546

541:                                              ; preds = %533
  %542 = load i8*, i8** %4, align 8
  %543 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* %542)
  %544 = load i32*, i32** %11, align 8
  %545 = call i32 @fclose(i32* %544)
  store i32* null, i32** %11, align 8
  br label %546

546:                                              ; preds = %541, %533, %530
  br label %569

547:                                              ; preds = %424, %421
  %548 = load i64, i64* @m_flag, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %568

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %552 = load i32, i32* %551, align 8
  %553 = icmp ne i32 %552, -1
  br i1 %553, label %554, label %568

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %556 = load i32, i32* %555, align 8
  %557 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = icmp eq i32 %556, %558
  br i1 %559, label %560, label %567

560:                                              ; preds = %554
  %561 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 1
  %564 = load i64, i64* %563, align 8
  %565 = icmp eq i64 %562, %564
  br i1 %565, label %566, label %567

566:                                              ; preds = %560
  br label %948

567:                                              ; preds = %560, %554
  br label %568

568:                                              ; preds = %567, %550, %547
  br label %569

569:                                              ; preds = %568, %546
  br label %570

570:                                              ; preds = %569, %419
  %571 = load i32*, i32** %11, align 8
  %572 = icmp eq i32* %571, null
  br i1 %572, label %573, label %663

573:                                              ; preds = %570
  %574 = load %struct.url*, %struct.url** %5, align 8
  %575 = getelementptr inbounds %struct.url, %struct.url* %574, i32 0, i32 2
  %576 = load i64, i64* %575, align 8
  %577 = icmp ugt i64 %576, 0
  br i1 %577, label %578, label %594

578:                                              ; preds = %573
  %579 = load %struct.url*, %struct.url** %5, align 8
  %580 = getelementptr inbounds %struct.url, %struct.url* %579, i32 0, i32 2
  store i64 0, i64* %580, align 8
  %581 = load %struct.url*, %struct.url** %5, align 8
  %582 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %583 = call i32* @fetchXGet(%struct.url* %581, %struct.url_stat* %6, i8* %582)
  store i32* %583, i32** %10, align 8
  %584 = icmp eq i32* %583, null
  br i1 %584, label %585, label %589

585:                                              ; preds = %578
  %586 = load i8*, i8** %3, align 8
  %587 = load i8*, i8** @fetchLastErrString, align 8
  %588 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %586, i8* %587)
  br label %960

589:                                              ; preds = %578
  %590 = load i32, i32* @sigint, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %593

592:                                              ; preds = %589
  br label %810

593:                                              ; preds = %589
  br label %594

594:                                              ; preds = %593, %573
  %595 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %596 = load i32, i32* %595, align 8
  %597 = icmp ne i32 %596, -1
  br i1 %597, label %598, label %650

598:                                              ; preds = %594
  %599 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %600 = load i32, i32* %599, align 4
  %601 = call i64 @S_ISREG(i32 %600)
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %650

603:                                              ; preds = %598
  %604 = load i8*, i8** %4, align 8
  %605 = call i8* @strrchr(i8* %604, i8 signext 47)
  store i8* %605, i8** %17, align 8
  %606 = icmp eq i8* %605, null
  br i1 %606, label %607, label %609

607:                                              ; preds = %603
  %608 = load i8*, i8** %4, align 8
  store i8* %608, i8** %17, align 8
  br label %612

609:                                              ; preds = %603
  %610 = load i8*, i8** %17, align 8
  %611 = getelementptr inbounds i8, i8* %610, i32 1
  store i8* %611, i8** %17, align 8
  br label %612

612:                                              ; preds = %609, %607
  %613 = load i8*, i8** %17, align 8
  %614 = load i8*, i8** %4, align 8
  %615 = ptrtoint i8* %613 to i64
  %616 = ptrtoint i8* %614 to i64
  %617 = sub i64 %615, %616
  %618 = trunc i64 %617 to i32
  %619 = load i8*, i8** %4, align 8
  %620 = load i8*, i8** %17, align 8
  %621 = call i32 @asprintf(i8** %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 %618, i8* %619, i8* %620)
  %622 = load i8*, i8** %18, align 8
  %623 = icmp ne i8* %622, null
  br i1 %623, label %624, label %649

624:                                              ; preds = %612
  %625 = load i8*, i8** %18, align 8
  %626 = load i8*, i8** %17, align 8
  %627 = call i64 @strlen(i8* %626)
  %628 = add nsw i64 %627, 1
  %629 = call i32 @mkstemps(i8* %625, i64 %628)
  %630 = icmp eq i32 %629, -1
  br i1 %630, label %631, label %634

631:                                              ; preds = %624
  %632 = load i8*, i8** %4, align 8
  %633 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* %632)
  br label %960

634:                                              ; preds = %624
  %635 = load i8*, i8** %18, align 8
  %636 = call i32* @fopen(i8* %635, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  store i32* %636, i32** %11, align 8
  %637 = load i8*, i8** %18, align 8
  %638 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 6
  %639 = load i32, i32* %638, align 4
  %640 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 5
  %641 = load i32, i32* %640, align 8
  %642 = call i32 @chown(i8* %637, i32 %639, i32 %641)
  %643 = load i8*, i8** %18, align 8
  %644 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* @ALLPERMS, align 4
  %647 = and i32 %645, %646
  %648 = call i32 @chmod(i8* %643, i32 %647)
  br label %649

649:                                              ; preds = %634, %612
  br label %650

650:                                              ; preds = %649, %598, %594
  %651 = load i32*, i32** %11, align 8
  %652 = icmp eq i32* %651, null
  br i1 %652, label %653, label %656

653:                                              ; preds = %650
  %654 = load i8*, i8** %4, align 8
  %655 = call i32* @fopen(i8* %654, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  store i32* %655, i32** %11, align 8
  br label %656

656:                                              ; preds = %653, %650
  %657 = load i32*, i32** %11, align 8
  %658 = icmp eq i32* %657, null
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = load i8*, i8** %4, align 8
  %661 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %660)
  br label %960

662:                                              ; preds = %656
  br label %663

663:                                              ; preds = %662, %570
  %664 = load %struct.url*, %struct.url** %5, align 8
  %665 = getelementptr inbounds %struct.url, %struct.url* %664, i32 0, i32 2
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %15, align 8
  %667 = load i8*, i8** %4, align 8
  %668 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %669 = load i32, i32* %668, align 8
  %670 = load i64, i64* %15, align 8
  %671 = call i32 @stat_start(%struct.xferstat* %9, i8* %667, i32 %669, i64 %670)
  store i32 0, i32* @sigint, align 4
  store i32 0, i32* @siginfo, align 4
  store i32 0, i32* @sigalrm, align 4
  %672 = load i32*, i32** %10, align 8
  %673 = load i32, i32* @_IOFBF, align 4
  %674 = load i64, i64* @B_size, align 8
  %675 = call i32 @setvbuf(i32* %672, i32* null, i32 %673, i64 %674)
  %676 = load i32, i32* @SIGINFO, align 4
  %677 = load i32, i32* @sig_handler, align 4
  %678 = call i32 @signal(i32 %676, i32 %677)
  br label %679

679:                                              ; preds = %790, %663
  %680 = load i32, i32* @sigint, align 4
  %681 = icmp ne i32 %680, 0
  %682 = xor i1 %681, true
  br i1 %682, label %683, label %791

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = icmp ne i32 %685, -1
  br i1 %686, label %687, label %708

687:                                              ; preds = %683
  %688 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = sext i32 %689 to i64
  %691 = load i64, i64* %15, align 8
  %692 = sub i64 %690, %691
  %693 = load i64, i64* @B_size, align 8
  %694 = icmp ult i64 %692, %693
  br i1 %694, label %695, label %708

695:                                              ; preds = %687
  %696 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = sext i32 %697 to i64
  %699 = load i64, i64* %15, align 8
  %700 = sub i64 %698, %699
  %701 = icmp uge i64 %700, 0
  br i1 %701, label %702, label %708

702:                                              ; preds = %695
  %703 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = sext i32 %704 to i64
  %706 = load i64, i64* %15, align 8
  %707 = sub i64 %705, %706
  store i64 %707, i64* %12, align 8
  br label %710

708:                                              ; preds = %695, %687, %683
  %709 = load i64, i64* @B_size, align 8
  store i64 %709, i64* %12, align 8
  br label %710

710:                                              ; preds = %708, %702
  %711 = load i32, i32* @siginfo, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %715

713:                                              ; preds = %710
  %714 = call i32 @stat_end(%struct.xferstat* %9)
  store i32 0, i32* @siginfo, align 4
  br label %715

715:                                              ; preds = %713, %710
  %716 = load i64, i64* %12, align 8
  %717 = icmp eq i64 %716, 0
  br i1 %717, label %718, label %719

718:                                              ; preds = %715
  br label %791

719:                                              ; preds = %715
  %720 = load i8*, i8** @buf, align 8
  %721 = load i64, i64* %12, align 8
  %722 = load i32*, i32** %10, align 8
  %723 = call i64 @fread(i8* %720, i32 1, i64 %721, i32* %722)
  store i64 %723, i64* %13, align 8
  %724 = load i64, i64* %12, align 8
  %725 = icmp ult i64 %723, %724
  br i1 %725, label %726, label %746

726:                                              ; preds = %719
  %727 = load i32*, i32** %10, align 8
  %728 = call i64 @ferror(i32* %727)
  %729 = icmp ne i64 %728, 0
  br i1 %729, label %730, label %740

730:                                              ; preds = %726
  %731 = load i64, i64* @errno, align 8
  %732 = load i64, i64* @EINTR, align 8
  %733 = icmp eq i64 %731, %732
  br i1 %733, label %734, label %740

734:                                              ; preds = %730
  %735 = load i32, i32* @sigint, align 4
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %740, label %737

737:                                              ; preds = %734
  %738 = load i32*, i32** %10, align 8
  %739 = call i32 @clearerr(i32* %738)
  br label %745

740:                                              ; preds = %734, %730, %726
  %741 = load i64, i64* %13, align 8
  %742 = icmp eq i64 %741, 0
  br i1 %742, label %743, label %744

743:                                              ; preds = %740
  br label %791

744:                                              ; preds = %740
  br label %745

745:                                              ; preds = %744, %737
  br label %746

746:                                              ; preds = %745, %719
  %747 = load i64, i64* %13, align 8
  %748 = load i64, i64* %15, align 8
  %749 = add i64 %748, %747
  store i64 %749, i64* %15, align 8
  %750 = call i32 @stat_update(%struct.xferstat* %9, i64 %749)
  %751 = load i8*, i8** @buf, align 8
  store i8* %751, i8** %21, align 8
  br label %752

752:                                              ; preds = %779, %746
  %753 = load i64, i64* %13, align 8
  %754 = icmp ugt i64 %753, 0
  br i1 %754, label %755, label %786

755:                                              ; preds = %752
  %756 = load i8*, i8** %21, align 8
  %757 = load i64, i64* %13, align 8
  %758 = load i32*, i32** %11, align 8
  %759 = call i64 @fwrite(i8* %756, i32 1, i64 %757, i32* %758)
  store i64 %759, i64* %14, align 8
  %760 = load i64, i64* %13, align 8
  %761 = icmp ult i64 %759, %760
  br i1 %761, label %762, label %778

762:                                              ; preds = %755
  %763 = load i32*, i32** %11, align 8
  %764 = call i64 @ferror(i32* %763)
  %765 = icmp ne i64 %764, 0
  br i1 %765, label %766, label %776

766:                                              ; preds = %762
  %767 = load i64, i64* @errno, align 8
  %768 = load i64, i64* @EINTR, align 8
  %769 = icmp eq i64 %767, %768
  br i1 %769, label %770, label %776

770:                                              ; preds = %766
  %771 = load i32, i32* @sigint, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %776, label %773

773:                                              ; preds = %770
  %774 = load i32*, i32** %11, align 8
  %775 = call i32 @clearerr(i32* %774)
  br label %777

776:                                              ; preds = %770, %766, %762
  br label %786

777:                                              ; preds = %773
  br label %778

778:                                              ; preds = %777, %755
  br label %779

779:                                              ; preds = %778
  %780 = load i64, i64* %14, align 8
  %781 = load i8*, i8** %21, align 8
  %782 = getelementptr inbounds i8, i8* %781, i64 %780
  store i8* %782, i8** %21, align 8
  %783 = load i64, i64* %14, align 8
  %784 = load i64, i64* %13, align 8
  %785 = sub i64 %784, %783
  store i64 %785, i64* %13, align 8
  br label %752

786:                                              ; preds = %776, %752
  %787 = load i64, i64* %13, align 8
  %788 = icmp ne i64 %787, 0
  br i1 %788, label %789, label %790

789:                                              ; preds = %786
  br label %791

790:                                              ; preds = %786
  br label %679

791:                                              ; preds = %789, %743, %718, %679
  %792 = load i32, i32* @sigalrm, align 4
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %805, label %794

794:                                              ; preds = %791
  %795 = load i32*, i32** %10, align 8
  %796 = call i64 @ferror(i32* %795)
  %797 = icmp ne i64 %796, 0
  br i1 %797, label %798, label %802

798:                                              ; preds = %794
  %799 = load i64, i64* @errno, align 8
  %800 = load i64, i64* @ETIMEDOUT, align 8
  %801 = icmp eq i64 %799, %800
  br label %802

802:                                              ; preds = %798, %794
  %803 = phi i1 [ false, %794 ], [ %801, %798 ]
  %804 = zext i1 %803 to i32
  store i32 %804, i32* @sigalrm, align 4
  br label %805

805:                                              ; preds = %802, %791
  %806 = load i32, i32* @SIGINFO, align 4
  %807 = load i32, i32* @SIG_DFL, align 4
  %808 = call i32 @signal(i32 %806, i32 %807)
  %809 = call i32 @stat_end(%struct.xferstat* %9)
  br label %810

810:                                              ; preds = %805, %592, %330, %293, %210
  %811 = load i32, i32* @n_flag, align 4
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %879, label %813

813:                                              ; preds = %810
  %814 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 1
  %815 = load i64, i64* %814, align 8
  %816 = icmp ne i64 %815, 0
  br i1 %816, label %817, label %879

817:                                              ; preds = %813
  %818 = load i64, i64* @o_stdout, align 8
  %819 = icmp ne i64 %818, 0
  br i1 %819, label %879, label %820

820:                                              ; preds = %817
  %821 = load i32*, i32** %11, align 8
  %822 = icmp ne i32* %821, null
  br i1 %822, label %823, label %879

823:                                              ; preds = %820
  %824 = load i8*, i8** %4, align 8
  %825 = call i32 @stat(i8* %824, %struct.stat* %7)
  %826 = icmp ne i32 %825, -1
  br i1 %826, label %827, label %879

827:                                              ; preds = %823
  %828 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %829 = load i32, i32* %828, align 4
  %830 = load i32, i32* @S_IFREG, align 4
  %831 = and i32 %829, %830
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %833, label %879

833:                                              ; preds = %827
  %834 = load i32*, i32** %11, align 8
  %835 = call i32 @fflush(i32* %834)
  %836 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 2
  %837 = load i64, i64* %836, align 8
  %838 = icmp ne i64 %837, 0
  br i1 %838, label %839, label %842

839:                                              ; preds = %833
  %840 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 2
  %841 = load i64, i64* %840, align 8
  br label %845

842:                                              ; preds = %833
  %843 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 1
  %844 = load i64, i64* %843, align 8
  br label %845

845:                                              ; preds = %842, %839
  %846 = phi i64 [ %841, %839 ], [ %844, %842 ]
  %847 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %22, i64 0, i64 0
  %848 = getelementptr inbounds %struct.timeval, %struct.timeval* %847, i32 0, i32 0
  store i64 %846, i64* %848, align 16
  %849 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 1
  %850 = load i64, i64* %849, align 8
  %851 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %22, i64 0, i64 1
  %852 = getelementptr inbounds %struct.timeval, %struct.timeval* %851, i32 0, i32 0
  store i64 %850, i64* %852, align 16
  %853 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %22, i64 0, i64 1
  %854 = getelementptr inbounds %struct.timeval, %struct.timeval* %853, i32 0, i32 1
  store i64 0, i64* %854, align 8
  %855 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %22, i64 0, i64 0
  %856 = getelementptr inbounds %struct.timeval, %struct.timeval* %855, i32 0, i32 1
  store i64 0, i64* %856, align 8
  %857 = load i8*, i8** %18, align 8
  %858 = icmp ne i8* %857, null
  br i1 %858, label %859, label %861

859:                                              ; preds = %845
  %860 = load i8*, i8** %18, align 8
  br label %863

861:                                              ; preds = %845
  %862 = load i8*, i8** %4, align 8
  br label %863

863:                                              ; preds = %861, %859
  %864 = phi i8* [ %860, %859 ], [ %862, %861 ]
  %865 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %22, i64 0, i64 0
  %866 = call i64 @utimes(i8* %864, %struct.timeval* %865)
  %867 = icmp ne i64 %866, 0
  br i1 %867, label %868, label %878

868:                                              ; preds = %863
  %869 = load i8*, i8** %18, align 8
  %870 = icmp ne i8* %869, null
  br i1 %870, label %871, label %873

871:                                              ; preds = %868
  %872 = load i8*, i8** %18, align 8
  br label %875

873:                                              ; preds = %868
  %874 = load i8*, i8** %4, align 8
  br label %875

875:                                              ; preds = %873, %871
  %876 = phi i8* [ %872, %871 ], [ %874, %873 ]
  %877 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* %876)
  br label %878

878:                                              ; preds = %875, %863
  br label %879

879:                                              ; preds = %878, %827, %823, %820, %817, %813, %810
  %880 = load i32, i32* @sigalrm, align 4
  %881 = icmp ne i32 %880, 0
  br i1 %881, label %882, label %884

882:                                              ; preds = %879
  %883 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  br label %884

884:                                              ; preds = %882, %879
  %885 = load i32, i32* @sigint, align 4
  %886 = icmp ne i32 %885, 0
  br i1 %886, label %887, label %889

887:                                              ; preds = %884
  %888 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0))
  br label %960

889:                                              ; preds = %884
  %890 = load i32*, i32** %10, align 8
  %891 = icmp eq i32* %890, null
  br i1 %891, label %892, label %893

892:                                              ; preds = %889
  br label %960

893:                                              ; preds = %889
  %894 = load i32, i32* @sigalrm, align 4
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %920, label %896

896:                                              ; preds = %893
  %897 = load i32*, i32** %10, align 8
  %898 = call i64 @ferror(i32* %897)
  %899 = icmp ne i64 %898, 0
  br i1 %899, label %900, label %903

900:                                              ; preds = %896
  %901 = load i8*, i8** %3, align 8
  %902 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %901)
  br label %903

903:                                              ; preds = %900, %896
  %904 = load i32*, i32** %11, align 8
  %905 = call i64 @ferror(i32* %904)
  %906 = icmp ne i64 %905, 0
  br i1 %906, label %907, label %910

907:                                              ; preds = %903
  %908 = load i8*, i8** %4, align 8
  %909 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %908)
  br label %910

910:                                              ; preds = %907, %903
  %911 = load i32*, i32** %10, align 8
  %912 = call i64 @ferror(i32* %911)
  %913 = icmp ne i64 %912, 0
  br i1 %913, label %918, label %914

914:                                              ; preds = %910
  %915 = load i32*, i32** %11, align 8
  %916 = call i64 @ferror(i32* %915)
  %917 = icmp ne i64 %916, 0
  br i1 %917, label %918, label %919

918:                                              ; preds = %914, %910
  br label %960

919:                                              ; preds = %914
  br label %920

920:                                              ; preds = %919, %893
  %921 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %922 = load i32, i32* %921, align 8
  %923 = icmp ne i32 %922, -1
  br i1 %923, label %924, label %937

924:                                              ; preds = %920
  %925 = load i64, i64* %15, align 8
  %926 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %927 = load i32, i32* %926, align 8
  %928 = sext i32 %927 to i64
  %929 = icmp ult i64 %925, %928
  br i1 %929, label %930, label %937

930:                                              ; preds = %924
  %931 = load i8*, i8** %4, align 8
  %932 = load i64, i64* %15, align 8
  %933 = trunc i64 %932 to i32
  %934 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %935 = load i32, i32* %934, align 8
  %936 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0), i8* %931, i32 %933, i32 %935)
  br label %1009

937:                                              ; preds = %924, %920
  %938 = load i32, i32* @sigalrm, align 4
  %939 = icmp ne i32 %938, 0
  br i1 %939, label %940, label %947

940:                                              ; preds = %937
  %941 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %6, i32 0, i32 0
  %942 = load i32, i32* %941, align 8
  %943 = icmp eq i32 %942, -1
  br i1 %943, label %944, label %947

944:                                              ; preds = %940
  %945 = load i8*, i8** %4, align 8
  %946 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i8* %945)
  br label %1009

947:                                              ; preds = %940, %937
  br label %948

948:                                              ; preds = %947, %566, %473, %376, %227
  store i32 0, i32* %19, align 4
  %949 = load i8*, i8** %18, align 8
  %950 = icmp ne i8* %949, null
  br i1 %950, label %951, label %959

951:                                              ; preds = %948
  %952 = load i8*, i8** %18, align 8
  %953 = load i8*, i8** %4, align 8
  %954 = call i32 @rename(i8* %952, i8* %953)
  %955 = icmp eq i32 %954, -1
  br i1 %955, label %956, label %959

956:                                              ; preds = %951
  %957 = load i8*, i8** %4, align 8
  %958 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8* %957)
  br label %1009

959:                                              ; preds = %951, %948
  br label %1010

960:                                              ; preds = %918, %892, %887, %659, %631, %585, %499, %491, %480, %373, %346, %326, %269, %214, %175, %44, %38
  %961 = load i32*, i32** %11, align 8
  %962 = icmp ne i32* %961, null
  br i1 %962, label %963, label %994

963:                                              ; preds = %960
  %964 = load i32*, i32** %11, align 8
  %965 = load i32*, i32** @stdout, align 8
  %966 = icmp ne i32* %964, %965
  br i1 %966, label %967, label %994

967:                                              ; preds = %963
  %968 = load i64, i64* @R_flag, align 8
  %969 = icmp ne i64 %968, 0
  br i1 %969, label %994, label %970

970:                                              ; preds = %967
  %971 = load i64, i64* @r_flag, align 8
  %972 = icmp ne i64 %971, 0
  br i1 %972, label %994, label %973

973:                                              ; preds = %970
  %974 = load i8*, i8** %4, align 8
  %975 = call i32 @stat(i8* %974, %struct.stat* %7)
  %976 = icmp ne i32 %975, -1
  br i1 %976, label %977, label %993

977:                                              ; preds = %973
  %978 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %979 = load i32, i32* %978, align 4
  %980 = load i32, i32* @S_IFREG, align 4
  %981 = and i32 %979, %980
  %982 = icmp ne i32 %981, 0
  br i1 %982, label %983, label %993

983:                                              ; preds = %977
  %984 = load i8*, i8** %18, align 8
  %985 = icmp ne i8* %984, null
  br i1 %985, label %986, label %988

986:                                              ; preds = %983
  %987 = load i8*, i8** %18, align 8
  br label %990

988:                                              ; preds = %983
  %989 = load i8*, i8** %4, align 8
  br label %990

990:                                              ; preds = %988, %986
  %991 = phi i8* [ %987, %986 ], [ %989, %988 ]
  %992 = call i32 @unlink(i8* %991)
  br label %993

993:                                              ; preds = %990, %977, %973
  br label %994

994:                                              ; preds = %993, %970, %967, %963, %960
  %995 = load i64, i64* @R_flag, align 8
  %996 = icmp ne i64 %995, 0
  br i1 %996, label %997, label %1008

997:                                              ; preds = %994
  %998 = load i8*, i8** %18, align 8
  %999 = icmp ne i8* %998, null
  br i1 %999, label %1000, label %1008

1000:                                             ; preds = %997
  %1001 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %1002 = load i32, i32* %1001, align 8
  %1003 = icmp eq i32 %1002, -1
  br i1 %1003, label %1004, label %1008

1004:                                             ; preds = %1000
  %1005 = load i8*, i8** %18, align 8
  %1006 = load i8*, i8** %4, align 8
  %1007 = call i32 @rename(i8* %1005, i8* %1006)
  br label %1008

1008:                                             ; preds = %1004, %1000, %997, %994
  br label %1009

1009:                                             ; preds = %1008, %956, %944, %930, %446
  store i32 -1, i32* %19, align 4
  br label %1010

1010:                                             ; preds = %1009, %959, %325
  %1011 = load i32*, i32** %10, align 8
  %1012 = icmp ne i32* %1011, null
  br i1 %1012, label %1013, label %1016

1013:                                             ; preds = %1010
  %1014 = load i32*, i32** %10, align 8
  %1015 = call i32 @fclose(i32* %1014)
  br label %1016

1016:                                             ; preds = %1013, %1010
  %1017 = load i32*, i32** %11, align 8
  %1018 = icmp ne i32* %1017, null
  br i1 %1018, label %1019, label %1026

1019:                                             ; preds = %1016
  %1020 = load i32*, i32** %11, align 8
  %1021 = load i32*, i32** @stdout, align 8
  %1022 = icmp ne i32* %1020, %1021
  br i1 %1022, label %1023, label %1026

1023:                                             ; preds = %1019
  %1024 = load i32*, i32** %11, align 8
  %1025 = call i32 @fclose(i32* %1024)
  br label %1026

1026:                                             ; preds = %1023, %1019, %1016
  %1027 = load %struct.url*, %struct.url** %5, align 8
  %1028 = icmp ne %struct.url* %1027, null
  br i1 %1028, label %1029, label %1032

1029:                                             ; preds = %1026
  %1030 = load %struct.url*, %struct.url** %5, align 8
  %1031 = call i32 @fetchFreeURL(%struct.url* %1030)
  br label %1032

1032:                                             ; preds = %1029, %1026
  %1033 = load i8*, i8** %18, align 8
  %1034 = icmp ne i8* %1033, null
  br i1 %1034, label %1035, label %1038

1035:                                             ; preds = %1032
  %1036 = load i8*, i8** %18, align 8
  %1037 = call i32 @free(i8* %1036)
  br label %1038

1038:                                             ; preds = %1035, %1032
  %1039 = load i32, i32* %19, align 4
  ret i32 %1039
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.url* @fetchParseURL(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @fetchStat(%struct.url*, %struct.url_stat*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32* @fetchXGet(%struct.url*, %struct.url_stat*, i8*) #1

declare dso_local i32 @symlink(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fseeko(i32*, i64, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, i8*) #1

declare dso_local i32 @mkstemps(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @chown(i8*, i32, i32) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @stat_start(%struct.xferstat*, i8*, i32, i64) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i64) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @stat_end(%struct.xferstat*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @stat_update(%struct.xferstat*, i64) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @utimes(i8*, %struct.timeval*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fetchFreeURL(%struct.url*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

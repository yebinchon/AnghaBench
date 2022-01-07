; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.sigaction = type { i64, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"146AaB:bc:dFf:Hh:i:lMmN:nPpo:qRrS:sT:tUvw:\00", align 1
@longopts = common dso_local global i32 0, align 4
@once_flag = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@A_flag = common dso_local global i32 0, align 4
@a_flag = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@B_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid buffer size (%s)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"warning: the -b option is deprecated\00", align 1
@b_flag = common dso_local global i32 0, align 4
@c_dirname = common dso_local global i8* null, align 8
@d_flag = common dso_local global i32 0, align 4
@F_flag = common dso_local global i32 0, align 4
@f_filename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"the -H option is now implicit, use -U to disable\00", align 1
@h_hostname = common dso_local global i8* null, align 8
@i_flag = common dso_local global i32 0, align 4
@i_filename = common dso_local global i8* null, align 8
@l_flag = common dso_local global i32 0, align 4
@o_flag = common dso_local global i32 0, align 4
@o_filename = common dso_local global i8* null, align 8
@r_flag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"the -m and -r flags are mutually exclusive\00", align 1
@m_flag = common dso_local global i32 0, align 4
@N_filename = common dso_local global i8* null, align 8
@n_flag = common dso_local global i32 0, align 4
@p_flag = common dso_local global i32 0, align 4
@v_level = common dso_local global i64 0, align 8
@R_flag = common dso_local global i32 0, align 4
@S_size = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"invalid size (%s)\00", align 1
@s_flag = common dso_local global i32 0, align 4
@T_secs = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid timeout (%s)\00", align 1
@t_flag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"warning: the -t option is deprecated\00", align 1
@U_flag = common dso_local global i32 0, align 4
@w_secs = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"invalid delay (%s)\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"FETCH_BIND_ADDRESS\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"FTP_PASSIVE_MODE\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"HTTP_REFERER\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"HTTP_USER_AGENT\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"NO_PROXY\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"SSL_CA_CERT_FILE\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"SSL_CA_CERT_PATH\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"SSL_CLIENT_CERT_FILE\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"SSL_CLIENT_KEY_FILE\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"SSL_CLIENT_CRL_FILE\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"SSL_NO_SSL3\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"SSL_NO_TLS1\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"SSL_NO_VERIFY_HOSTNAME\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"SSL_NO_VERIFY_PEER\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [4 x i8] c"@:/\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"invalid hostname\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"ftp://%s/%s/%s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MINBUFSIZE = common dso_local global i64 0, align 8
@buf = common dso_local global i32* null, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c"FTP_TIMEOUT\00", align 1
@ftp_timeout = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [43 x i8] c"FTP_TIMEOUT (%s) is not a positive integer\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"HTTP_TIMEOUT\00", align 1
@http_timeout = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [44 x i8] c"HTTP_TIMEOUT (%s) is not a positive integer\00", align 1
@sig_handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@fetchRestartCalls = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@o_stdout = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@o_directory = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@v_tty = common dso_local global i64 0, align 8
@v_progress = common dso_local global i32 0, align 4
@pgrp = common dso_local global i32 0, align 4
@query_auth = common dso_local global i32 0, align 4
@fetchAuthMethod = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"NETRC\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"setenv: cannot set NETRC=%s\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"fetch.out\00", align 1
@fetchLastErrCode = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@sigint = common dso_local global i64 0, align 8
@FETCH_UNAVAIL = common dso_local global i64 0, align 8
@FETCH_MOVED = common dso_local global i64 0, align 8
@FETCH_URL = common dso_local global i64 0, align 8
@FETCH_RESOLV = common dso_local global i64 0, align 8
@FETCH_UNKNOWN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [37 x i8] c"Waiting %ld seconds before retrying\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %15

15:                                               ; preds = %177, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = load i32, i32* @longopts, align 4
  %19 = call i32 @getopt_long(i32 %16, i8** %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18, i32* null)
  store i32 %19, i32* %12, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %178

21:                                               ; preds = %15
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %174 [
    i32 49, label %23
    i32 52, label %24
    i32 54, label %26
    i32 65, label %28
    i32 97, label %29
    i32 66, label %30
    i32 98, label %47
    i32 99, label %49
    i32 100, label %51
    i32 70, label %52
    i32 102, label %53
    i32 72, label %55
    i32 104, label %57
    i32 105, label %59
    i32 108, label %61
    i32 111, label %62
    i32 77, label %64
    i32 109, label %64
    i32 78, label %70
    i32 110, label %72
    i32 80, label %73
    i32 112, label %73
    i32 113, label %74
    i32 82, label %75
    i32 114, label %76
    i32 83, label %82
    i32 115, label %98
    i32 84, label %99
    i32 116, label %115
    i32 85, label %117
    i32 118, label %118
    i32 119, label %121
    i32 141, label %137
    i32 138, label %140
    i32 140, label %142
    i32 139, label %145
    i32 137, label %148
    i32 136, label %151
    i32 135, label %154
    i32 134, label %157
    i32 133, label %160
    i32 132, label %163
    i32 131, label %166
    i32 130, label %168
    i32 129, label %170
    i32 128, label %172
  ]

23:                                               ; preds = %21
  store i32 1, i32* @once_flag, align 4
  br label %177

24:                                               ; preds = %21
  %25 = load i32, i32* @PF_INET, align 4
  store i32 %25, i32* @family, align 4
  br label %177

26:                                               ; preds = %21
  %27 = load i32, i32* @PF_INET6, align 4
  store i32 %27, i32* @family, align 4
  br label %177

28:                                               ; preds = %21
  store i32 1, i32* @A_flag, align 4
  br label %177

29:                                               ; preds = %21
  store i32 1, i32* @a_flag, align 4
  br label %177

30:                                               ; preds = %21
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i8* @strtol(i8* %31, i8** %10, i32 10)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* @B_size, align 8
  %34 = load i8*, i8** @optarg, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %30
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %177

47:                                               ; preds = %21
  %48 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @b_flag, align 4
  br label %177

49:                                               ; preds = %21
  %50 = load i8*, i8** @optarg, align 8
  store i8* %50, i8** @c_dirname, align 8
  br label %177

51:                                               ; preds = %21
  store i32 1, i32* @d_flag, align 4
  br label %177

52:                                               ; preds = %21
  store i32 1, i32* @F_flag, align 4
  br label %177

53:                                               ; preds = %21
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** @f_filename, align 8
  br label %177

55:                                               ; preds = %21
  %56 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %177

57:                                               ; preds = %21
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** @h_hostname, align 8
  br label %177

59:                                               ; preds = %21
  store i32 1, i32* @i_flag, align 4
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** @i_filename, align 8
  br label %177

61:                                               ; preds = %21
  store i32 1, i32* @l_flag, align 4
  br label %177

62:                                               ; preds = %21
  store i32 1, i32* @o_flag, align 4
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** @o_filename, align 8
  br label %177

64:                                               ; preds = %21, %21
  %65 = load i32, i32* @r_flag, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  store i32 1, i32* @m_flag, align 4
  br label %177

70:                                               ; preds = %21
  %71 = load i8*, i8** @optarg, align 8
  store i8* %71, i8** @N_filename, align 8
  br label %177

72:                                               ; preds = %21
  store i32 1, i32* @n_flag, align 4
  br label %177

73:                                               ; preds = %21, %21
  store i32 1, i32* @p_flag, align 4
  br label %177

74:                                               ; preds = %21
  store i64 0, i64* @v_level, align 8
  br label %177

75:                                               ; preds = %21
  store i32 1, i32* @R_flag, align 4
  br label %177

76:                                               ; preds = %21
  %77 = load i32, i32* @m_flag, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  store i32 1, i32* @r_flag, align 4
  br label %177

82:                                               ; preds = %21
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i8* @strtol(i8* %83, i8** %10, i32 10)
  store i8* %84, i8** @S_size, align 8
  %85 = load i8*, i8** @optarg, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %82
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %89
  br label %177

98:                                               ; preds = %21
  store i32 1, i32* @s_flag, align 4
  br label %177

99:                                               ; preds = %21
  %100 = load i8*, i8** @optarg, align 8
  %101 = call i8* @strtol(i8* %100, i8** %10, i32 10)
  store i8* %101, i8** @T_secs, align 8
  %102 = load i8*, i8** @optarg, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load i8*, i8** %10, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %99
  %112 = load i8*, i8** @optarg, align 8
  %113 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %111, %106
  br label %177

115:                                              ; preds = %21
  store i32 1, i32* @t_flag, align 4
  %116 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %177

117:                                              ; preds = %21
  store i32 1, i32* @U_flag, align 4
  br label %177

118:                                              ; preds = %21
  %119 = load i64, i64* @v_level, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* @v_level, align 8
  br label %177

121:                                              ; preds = %21
  store i32 1, i32* @a_flag, align 4
  %122 = load i8*, i8** @optarg, align 8
  %123 = call i8* @strtol(i8* %122, i8** %10, i32 10)
  store i8* %123, i8** @w_secs, align 8
  %124 = load i8*, i8** @optarg, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128, %121
  %134 = load i8*, i8** @optarg, align 8
  %135 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %133, %128
  br label %177

137:                                              ; preds = %21
  %138 = load i8*, i8** @optarg, align 8
  %139 = call i32 @setenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %138, i32 1)
  br label %177

140:                                              ; preds = %21
  %141 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 1)
  br label %177

142:                                              ; preds = %21
  %143 = load i8*, i8** @optarg, align 8
  %144 = call i32 @setenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %143, i32 1)
  br label %177

145:                                              ; preds = %21
  %146 = load i8*, i8** @optarg, align 8
  %147 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %146, i32 1)
  br label %177

148:                                              ; preds = %21
  %149 = load i8*, i8** @optarg, align 8
  %150 = call i32 @setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %149, i32 1)
  br label %177

151:                                              ; preds = %21
  %152 = load i8*, i8** @optarg, align 8
  %153 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %152, i32 1)
  br label %177

154:                                              ; preds = %21
  %155 = load i8*, i8** @optarg, align 8
  %156 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %155, i32 1)
  br label %177

157:                                              ; preds = %21
  %158 = load i8*, i8** @optarg, align 8
  %159 = call i32 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %158, i32 1)
  br label %177

160:                                              ; preds = %21
  %161 = load i8*, i8** @optarg, align 8
  %162 = call i32 @setenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %161, i32 1)
  br label %177

163:                                              ; preds = %21
  %164 = load i8*, i8** @optarg, align 8
  %165 = call i32 @setenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %164, i32 1)
  br label %177

166:                                              ; preds = %21
  %167 = call i32 @setenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i32 1)
  br label %177

168:                                              ; preds = %21
  %169 = call i32 @setenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i32 1)
  br label %177

170:                                              ; preds = %21
  %171 = call i32 @setenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i32 1)
  br label %177

172:                                              ; preds = %21
  %173 = call i32 @setenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i32 1)
  br label %177

174:                                              ; preds = %21
  %175 = call i32 (...) @usage()
  %176 = call i32 @exit(i32 1) #3
  unreachable

177:                                              ; preds = %172, %170, %168, %166, %163, %160, %157, %154, %151, %148, %145, %142, %140, %137, %136, %118, %117, %115, %114, %98, %97, %81, %75, %74, %73, %72, %70, %69, %62, %61, %59, %57, %55, %53, %52, %51, %49, %47, %46, %29, %28, %26, %24, %23
  br label %15

178:                                              ; preds = %15
  %179 = load i64, i64* @optind, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = sub nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %4, align 4
  %184 = load i64, i64* @optind, align 8
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 %184
  store i8** %186, i8*** %5, align 8
  %187 = load i8*, i8** @h_hostname, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %195, label %189

189:                                              ; preds = %178
  %190 = load i8*, i8** @f_filename, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i8*, i8** @c_dirname, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %235

195:                                              ; preds = %192, %189, %178
  %196 = load i8*, i8** @h_hostname, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i8*, i8** @f_filename, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201, %198, %195
  %205 = call i32 (...) @usage()
  %206 = call i32 @exit(i32 1) #3
  unreachable

207:                                              ; preds = %201
  %208 = load i8*, i8** @h_hostname, align 8
  %209 = call i64 @strcspn(i8* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %210 = load i8*, i8** @h_hostname, align 8
  %211 = call i64 @strlen(i8* %210)
  %212 = icmp ne i64 %209, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %207
  %216 = load i8**, i8*** %5, align 8
  %217 = load i8*, i8** @h_hostname, align 8
  %218 = load i8*, i8** @c_dirname, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i8*, i8** @c_dirname, align 8
  br label %223

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %222, %220
  %224 = phi i8* [ %221, %220 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %222 ]
  %225 = load i8*, i8** @f_filename, align 8
  %226 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %217, i8* %224, i8* %225)
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %232

228:                                              ; preds = %223
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = call i8* @strerror(i32 %229)
  %231 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %230)
  br label %232

232:                                              ; preds = %228, %223
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %232, %192
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = call i32 (...) @usage()
  %240 = call i32 @exit(i32 1) #3
  unreachable

241:                                              ; preds = %235
  %242 = load i64, i64* @B_size, align 8
  %243 = load i64, i64* @MINBUFSIZE, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i64, i64* @MINBUFSIZE, align 8
  store i64 %246, i64* @B_size, align 8
  br label %247

247:                                              ; preds = %245, %241
  %248 = load i64, i64* @B_size, align 8
  %249 = call i32* @malloc(i64 %248)
  store i32* %249, i32** @buf, align 8
  %250 = icmp eq i32* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load i32, i32* @ENOMEM, align 4
  %253 = call i8* @strerror(i32 %252)
  %254 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %253)
  br label %255

255:                                              ; preds = %251, %247
  %256 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  store i8* %256, i8** %9, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %278

258:                                              ; preds = %255
  %259 = load i8*, i8** %9, align 8
  %260 = call i8* @strtol(i8* %259, i8** %10, i32 10)
  %261 = ptrtoint i8* %260 to i64
  store i64 %261, i64* @ftp_timeout, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %258
  %267 = load i8*, i8** %10, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %266
  %272 = load i64, i64* @ftp_timeout, align 8
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271, %266, %258
  %275 = load i8*, i8** %9, align 8
  %276 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i8* %275)
  store i64 0, i64* @ftp_timeout, align 8
  br label %277

277:                                              ; preds = %274, %271
  br label %278

278:                                              ; preds = %277, %255
  %279 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  store i8* %279, i8** %9, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %301

281:                                              ; preds = %278
  %282 = load i8*, i8** %9, align 8
  %283 = call i8* @strtol(i8* %282, i8** %10, i32 10)
  %284 = ptrtoint i8* %283 to i64
  store i64 %284, i64* @http_timeout, align 8
  %285 = load i8*, i8** %9, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %297, label %289

289:                                              ; preds = %281
  %290 = load i8*, i8** %10, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %289
  %295 = load i64, i64* @http_timeout, align 8
  %296 = icmp slt i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294, %289, %281
  %298 = load i8*, i8** %9, align 8
  %299 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i8* %298)
  store i64 0, i64* @http_timeout, align 8
  br label %300

300:                                              ; preds = %297, %294
  br label %301

301:                                              ; preds = %300, %278
  %302 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i64 0, i64* %302, align 8
  %303 = load i32, i32* @sig_handler, align 4
  %304 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 2
  store i32 %303, i32* %304, align 4
  %305 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  %306 = call i32 @sigemptyset(i32* %305)
  %307 = load i32, i32* @SIGALRM, align 4
  %308 = call i32 @sigaction(i32 %307, %struct.sigaction* %7, i32* null)
  %309 = load i64, i64* @SA_RESETHAND, align 8
  %310 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i64 %309, i64* %310, align 8
  %311 = load i32, i32* @SIGINT, align 4
  %312 = call i32 @sigaction(i32 %311, %struct.sigaction* %7, i32* null)
  store i64 0, i64* @fetchRestartCalls, align 8
  %313 = load i32, i32* @o_flag, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %349

315:                                              ; preds = %301
  %316 = load i8*, i8** @o_filename, align 8
  %317 = call i64 @strcmp(i8* %316, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  store i32 1, i32* @o_stdout, align 4
  br label %348

320:                                              ; preds = %315
  %321 = load i8*, i8** @o_filename, align 8
  %322 = call i32 @stat(i8* %321, %struct.stat* %6)
  %323 = icmp eq i32 %322, -1
  br i1 %323, label %324, label %339

324:                                              ; preds = %320
  %325 = load i64, i64* @errno, align 8
  %326 = load i64, i64* @ENOENT, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %324
  %329 = load i32, i32* %4, align 4
  %330 = icmp sgt i32 %329, 1
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i8*, i8** @o_filename, align 8
  %333 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i8* %332)
  br label %334

334:                                              ; preds = %331, %328
  br label %338

335:                                              ; preds = %324
  %336 = load i8*, i8** @o_filename, align 8
  %337 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %336)
  br label %338

338:                                              ; preds = %335, %334
  br label %347

339:                                              ; preds = %320
  %340 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @S_IFDIR, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %339
  store i32 1, i32* @o_directory, align 4
  br label %346

346:                                              ; preds = %345, %339
  br label %347

347:                                              ; preds = %346, %338
  br label %348

348:                                              ; preds = %347, %319
  br label %349

349:                                              ; preds = %348, %301
  %350 = load i32, i32* @STDERR_FILENO, align 4
  %351 = call i64 @isatty(i32 %350)
  store i64 %351, i64* @v_tty, align 8
  %352 = load i64, i64* @v_tty, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load i64, i64* @v_level, align 8
  %356 = icmp sgt i64 %355, 0
  br label %357

357:                                              ; preds = %354, %349
  %358 = phi i1 [ false, %349 ], [ %356, %354 ]
  %359 = zext i1 %358 to i32
  store i32 %359, i32* @v_progress, align 4
  %360 = load i32, i32* @v_progress, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = call i32 (...) @getpgrp()
  store i32 %363, i32* @pgrp, align 4
  br label %364

364:                                              ; preds = %362, %357
  store i32 0, i32* %14, align 4
  %365 = load i64, i64* @v_tty, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = load i32, i32* @query_auth, align 4
  store i32 %368, i32* @fetchAuthMethod, align 4
  br label %369

369:                                              ; preds = %367, %364
  %370 = load i8*, i8** @N_filename, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %380

372:                                              ; preds = %369
  %373 = load i8*, i8** @N_filename, align 8
  %374 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* %373, i32 1)
  %375 = icmp eq i32 %374, -1
  br i1 %375, label %376, label %379

376:                                              ; preds = %372
  %377 = load i8*, i8** @N_filename, align 8
  %378 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i8* %377)
  br label %379

379:                                              ; preds = %376, %372
  br label %380

380:                                              ; preds = %379, %369
  br label %381

381:                                              ; preds = %498, %495, %380
  %382 = load i32, i32* %4, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %503

384:                                              ; preds = %381
  %385 = load i8**, i8*** %5, align 8
  %386 = load i8*, i8** %385, align 8
  %387 = call i8* @strrchr(i8* %386, i8 signext 47)
  store i8* %387, i8** %8, align 8
  %388 = icmp eq i8* %387, null
  br i1 %388, label %389, label %392

389:                                              ; preds = %384
  %390 = load i8**, i8*** %5, align 8
  %391 = load i8*, i8** %390, align 8
  store i8* %391, i8** %8, align 8
  br label %395

392:                                              ; preds = %384
  %393 = load i8*, i8** %8, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %8, align 8
  br label %395

395:                                              ; preds = %392, %389
  %396 = load i8*, i8** %8, align 8
  %397 = load i8, i8* %396, align 1
  %398 = icmp ne i8 %397, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %395
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8** %8, align 8
  br label %400

400:                                              ; preds = %399, %395
  store i64 0, i64* @fetchLastErrCode, align 8
  %401 = load i32, i32* @o_flag, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %430

403:                                              ; preds = %400
  %404 = load i32, i32* @o_stdout, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = load i8**, i8*** %5, align 8
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 @fetch(i8* %408, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  store i32 %409, i32* %13, align 4
  br label %429

410:                                              ; preds = %403
  %411 = load i32, i32* @o_directory, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %423

413:                                              ; preds = %410
  %414 = load i8*, i8** @o_filename, align 8
  %415 = load i8*, i8** %8, align 8
  %416 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i8* %414, i8* %415)
  %417 = load i8**, i8*** %5, align 8
  %418 = load i8*, i8** %417, align 8
  %419 = load i8*, i8** %11, align 8
  %420 = call i32 @fetch(i8* %418, i8* %419)
  store i32 %420, i32* %13, align 4
  %421 = load i8*, i8** %11, align 8
  %422 = call i32 @free(i8* %421)
  br label %428

423:                                              ; preds = %410
  %424 = load i8**, i8*** %5, align 8
  %425 = load i8*, i8** %424, align 8
  %426 = load i8*, i8** @o_filename, align 8
  %427 = call i32 @fetch(i8* %425, i8* %426)
  store i32 %427, i32* %13, align 4
  br label %428

428:                                              ; preds = %423, %413
  br label %429

429:                                              ; preds = %428, %406
  br label %435

430:                                              ; preds = %400
  %431 = load i8**, i8*** %5, align 8
  %432 = load i8*, i8** %431, align 8
  %433 = load i8*, i8** %8, align 8
  %434 = call i32 @fetch(i8* %432, i8* %433)
  store i32 %434, i32* %13, align 4
  br label %435

435:                                              ; preds = %430, %429
  %436 = load i64, i64* @sigint, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %442

438:                                              ; preds = %435
  %439 = call i32 (...) @getpid()
  %440 = load i32, i32* @SIGINT, align 4
  %441 = call i32 @kill(i32 %439, i32 %440)
  br label %442

442:                                              ; preds = %438, %435
  %443 = load i32, i32* %13, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %442
  %446 = load i32, i32* @once_flag, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %450

448:                                              ; preds = %445
  %449 = call i32 @exit(i32 0) #3
  unreachable

450:                                              ; preds = %445, %442
  %451 = load i32, i32* %13, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %498

453:                                              ; preds = %450
  store i32 1, i32* %14, align 4
  %454 = load i64, i64* @fetchLastErrCode, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %497

456:                                              ; preds = %453
  %457 = load i64, i64* @fetchLastErrCode, align 8
  %458 = load i64, i64* @FETCH_UNAVAIL, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %460, label %497

460:                                              ; preds = %456
  %461 = load i64, i64* @fetchLastErrCode, align 8
  %462 = load i64, i64* @FETCH_MOVED, align 8
  %463 = icmp ne i64 %461, %462
  br i1 %463, label %464, label %497

464:                                              ; preds = %460
  %465 = load i64, i64* @fetchLastErrCode, align 8
  %466 = load i64, i64* @FETCH_URL, align 8
  %467 = icmp ne i64 %465, %466
  br i1 %467, label %468, label %497

468:                                              ; preds = %464
  %469 = load i64, i64* @fetchLastErrCode, align 8
  %470 = load i64, i64* @FETCH_RESOLV, align 8
  %471 = icmp ne i64 %469, %470
  br i1 %471, label %472, label %497

472:                                              ; preds = %468
  %473 = load i64, i64* @fetchLastErrCode, align 8
  %474 = load i64, i64* @FETCH_UNKNOWN, align 8
  %475 = icmp ne i64 %473, %474
  br i1 %475, label %476, label %497

476:                                              ; preds = %472
  %477 = load i8*, i8** @w_secs, align 8
  %478 = icmp ne i8* %477, null
  br i1 %478, label %479, label %486

479:                                              ; preds = %476
  %480 = load i64, i64* @v_level, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %479
  %483 = load i32, i32* @stderr, align 4
  %484 = load i8*, i8** @w_secs, align 8
  %485 = call i32 @fprintf(i32 %483, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0), i8* %484)
  br label %486

486:                                              ; preds = %482, %479, %476
  %487 = load i8*, i8** @w_secs, align 8
  %488 = icmp ne i8* %487, null
  br i1 %488, label %489, label %492

489:                                              ; preds = %486
  %490 = load i8*, i8** @w_secs, align 8
  %491 = call i32 @sleep(i8* %490)
  br label %492

492:                                              ; preds = %489, %486
  %493 = load i32, i32* @a_flag, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %492
  br label %381

496:                                              ; preds = %492
  br label %497

497:                                              ; preds = %496, %472, %468, %464, %460, %456, %453
  br label %498

498:                                              ; preds = %497, %450
  %499 = load i32, i32* %4, align 4
  %500 = add nsw i32 %499, -1
  store i32 %500, i32* %4, align 4
  %501 = load i8**, i8*** %5, align 8
  %502 = getelementptr inbounds i8*, i8** %501, i32 1
  store i8** %502, i8*** %5, align 8
  br label %381

503:                                              ; preds = %381
  %504 = load i32, i32* %14, align 4
  %505 = call i32 @exit(i32 %504) #3
  unreachable
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @getpgrp(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fetch(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @sleep(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

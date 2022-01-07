; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_pm_most.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_pm_most.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_9__* }

@tirpc_socket = common dso_local global i64 0, align 8
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"\09if (getsockname(0, (struct sockaddr *)&saddr, &asize) == 0) {\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\09\09socklen_t ssize = sizeof (int);\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09if (!ioctl(0, I_LOOK, mname) &&\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\09\09(!strcmp(mname, \22sockmod\22) ||\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c" !strcmp(mname, \22timod\22))) {\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\09\09char *netid;\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\09\09struct netconfig *nconf = NULL;\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\09\09SVCXPRT *%s;\0A\00", align 1
@TRANSP = common dso_local global i32 0, align 4
@timerflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"\09\09int pmclose;\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\09\09if (saddr.ss_family != AF_INET &&\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\09\09    saddr.ss_family != AF_INET6)\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09\09\09exit(1);\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\09\09if (getsockopt(0, SOL_SOCKET, SO_TYPE,\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\09\09\09\09(char *)&_rpcfdtype, &ssize) == -1)\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"\09\09_rpcpmstart = 1;\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"\0A\09\09if ((netid = getenv(\22NLSPROVIDER\22)) == NULL) {\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\09\09/* started from inetd */\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"\09\09\09pmclose = 1;\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\09\09} else {\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"\09\09\09if ((nconf = getnetconfigent(netid)) == NULL)\0A\00", align 1
@_errbuf = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"cannot get transport info\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\09\09\09\09\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"\0A\09\09\09pmclose = 1;\09/* XXX */\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"\0A\09\09\09pmclose = (t_getstate(0) != T_DATAXFER);\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\09\09}\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"\09\09if (strcmp(mname, \22sockmod\22) == 0) {\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"\09\09\09if (ioctl(0, I_POP, 0) || \00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"ioctl(0, I_PUSH, \22timod\22)) {\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"could not get the right module\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"\09\09\09\09exit(1);\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"\09\09\09}\0A\00", align 1
@tirpcflag = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [94 x i8] c"\09\09if ((%s = svc_tli_create(0, nconf, NULL, \09\09RPC_MAXDATASIZE, RPC_MAXDATASIZE)) \09\09== NULL) {\0A\00", align 1
@.str.34 = private unnamed_addr constant [68 x i8] c"\09\09if ((%s = svc_tli_create(0, nconf, NULL, 0, 0)) \09\09    == NULL) {\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"cannot create server handle\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"\09\09if (nconf)\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"\09\09\09freenetconfigent(nconf);\0A\00", align 1
@defined = common dso_local global %struct.TYPE_10__* null, align 8
@DEF_PROGRAM = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [28 x i8] c"\09\09if (!svc_reg(%s, %s, %s, \00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c", 0)) {\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"unable to register (%s, %s).\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"\09\09if (pmclose) {\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"\09\09\09(void) signal(SIGALRM, closedown);\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"\09\09\09(void) alarm(_RPCSVC_CLOSEDOWN/2);\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"\09\09svc_run();\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"\09\09exit(1);\0A\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"\09\09/* NOTREACHED */\0A\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"\09}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @write_pm_most to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_pm_most(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @tirpc_socket, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @fout, align 4
  %12 = call i32 (i32, i8*, ...) @f_print(i32 %11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @fout, align 4
  %14 = call i32 (i32, i8*, ...) @f_print(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @fout, align 4
  %17 = call i32 (i32, i8*, ...) @f_print(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @fout, align 4
  %19 = call i32 (i32, i8*, ...) @f_print(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @fout, align 4
  %21 = call i32 (i32, i8*, ...) @f_print(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %22

22:                                               ; preds = %15, %10
  %23 = load i32, i32* @fout, align 4
  %24 = call i32 (i32, i8*, ...) @f_print(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @fout, align 4
  %29 = call i32 (i32, i8*, ...) @f_print(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i32, i32* @fout, align 4
  %31 = load i32, i32* @TRANSP, align 4
  %32 = call i32 (i32, i8*, ...) @f_print(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i64, i64* @timerflag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @fout, align 4
  %38 = call i32 (i32, i8*, ...) @f_print(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @fout, align 4
  %41 = call i32 (i32, i8*, ...) @f_print(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %42 = load i64, i64* @tirpc_socket, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i32, i32* @fout, align 4
  %46 = call i32 (i32, i8*, ...) @f_print(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %47 = load i32, i32* @fout, align 4
  %48 = call i32 (i32, i8*, ...) @f_print(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %49 = load i32, i32* @fout, align 4
  %50 = call i32 (i32, i8*, ...) @f_print(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %51 = load i32, i32* @fout, align 4
  %52 = call i32 (i32, i8*, ...) @f_print(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  %53 = load i32, i32* @fout, align 4
  %54 = call i32 (i32, i8*, ...) @f_print(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %55 = load i32, i32* @fout, align 4
  %56 = call i32 (i32, i8*, ...) @f_print(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %57

57:                                               ; preds = %44, %39
  %58 = load i32, i32* @fout, align 4
  %59 = call i32 (i32, i8*, ...) @f_print(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @open_log_file(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %62 = load i32, i32* @fout, align 4
  %63 = call i32 (i32, i8*, ...) @f_print(i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0))
  %64 = load i64, i64* @timerflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load i32, i32* @fout, align 4
  %68 = call i32 (i32, i8*, ...) @f_print(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %69 = load i32, i32* @fout, align 4
  %70 = call i32 (i32, i8*, ...) @f_print(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %57
  %72 = load i32, i32* @fout, align 4
  %73 = call i32 (i32, i8*, ...) @f_print(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %74 = load i32, i32* @fout, align 4
  %75 = call i32 (i32, i8*, ...) @f_print(i32 %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %76 = load i32, i32* @_errbuf, align 4
  %77 = call i32 (i32, i8*, ...) @sprintf(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  %78 = call i32 @print_err_message(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %79 = load i64, i64* @timerflag, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load i64, i64* @tirpc_socket, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @fout, align 4
  %86 = call i32 (i32, i8*, ...) @f_print(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  br label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @fout, align 4
  %89 = call i32 (i32, i8*, ...) @f_print(i32 %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* @fout, align 4
  %93 = call i32 (i32, i8*, ...) @f_print(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %94 = load i64, i64* @tirpc_socket, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @fout, align 4
  %98 = call i32 (i32, i8*, ...) @f_print(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0))
  %99 = load i32, i32* @fout, align 4
  %100 = call i32 (i32, i8*, ...) @f_print(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  %101 = load i32, i32* @fout, align 4
  %102 = call i32 (i32, i8*, ...) @f_print(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0))
  %103 = load i32, i32* @_errbuf, align 4
  %104 = call i32 (i32, i8*, ...) @sprintf(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0))
  %105 = call i32 @print_err_message(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %106 = load i32, i32* @fout, align 4
  %107 = call i32 (i32, i8*, ...) @f_print(i32 %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %108 = load i32, i32* @fout, align 4
  %109 = call i32 (i32, i8*, ...) @f_print(i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  %110 = load i32, i32* @fout, align 4
  %111 = call i32 (i32, i8*, ...) @f_print(i32 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %112

112:                                              ; preds = %96, %91
  %113 = load i64, i64* @tirpcflag, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @fout, align 4
  %117 = load i32, i32* @TRANSP, align 4
  %118 = call i32 (i32, i8*, ...) @f_print(i32 %116, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.33, i64 0, i64 0), i32 %117)
  br label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @fout, align 4
  %121 = load i32, i32* @TRANSP, align 4
  %122 = call i32 (i32, i8*, ...) @f_print(i32 %120, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.34, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* @_errbuf, align 4
  %125 = call i32 (i32, i8*, ...) @sprintf(i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0))
  %126 = call i32 @print_err_message(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %127 = load i32, i32* @fout, align 4
  %128 = call i32 (i32, i8*, ...) @f_print(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %129 = load i32, i32* @fout, align 4
  %130 = call i32 (i32, i8*, ...) @f_print(i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %131 = load i32, i32* @fout, align 4
  %132 = call i32 (i32, i8*, ...) @f_print(i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  %133 = load i32, i32* @fout, align 4
  %134 = call i32 (i32, i8*, ...) @f_print(i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0))
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @defined, align 8
  store %struct.TYPE_10__* %135, %struct.TYPE_10__** %5, align 8
  br label %136

136:                                              ; preds = %196, %123
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = icmp ne %struct.TYPE_10__* %137, null
  br i1 %138, label %139, label %200

139:                                              ; preds = %136
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %6, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DEF_PROGRAM, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %196

150:                                              ; preds = %139
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %7, align 8
  br label %156

156:                                              ; preds = %191, %150
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %158 = icmp ne %struct.TYPE_9__* %157, null
  br i1 %158, label %159, label %195

159:                                              ; preds = %156
  %160 = load i32, i32* @fout, align 4
  %161 = load i32, i32* @TRANSP, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i32, i8*, ...) @f_print(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i32 %161, i8* %164, i8* %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @pvname(i8* %171, i32 %174)
  %176 = load i32, i32* @fout, align 4
  %177 = call i32 (i32, i8*, ...) @f_print(i32 %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  %178 = load i32, i32* @_errbuf, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 (i32, i8*, ...) @sprintf(i32 %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i64 0, i64 0), i8* %181, i8* %184)
  %186 = call i32 @print_err_message(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %187 = load i32, i32* @fout, align 4
  %188 = call i32 (i32, i8*, ...) @f_print(i32 %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %189 = load i32, i32* @fout, align 4
  %190 = call i32 (i32, i8*, ...) @f_print(i32 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %191

191:                                              ; preds = %159
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  store %struct.TYPE_9__* %194, %struct.TYPE_9__** %7, align 8
  br label %156

195:                                              ; preds = %156
  br label %196

196:                                              ; preds = %195, %149
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  store %struct.TYPE_10__* %199, %struct.TYPE_10__** %5, align 8
  br label %136

200:                                              ; preds = %136
  %201 = load i64, i64* @timerflag, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i32, i32* @fout, align 4
  %205 = call i32 (i32, i8*, ...) @f_print(i32 %204, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0))
  %206 = load i32, i32* @fout, align 4
  %207 = call i32 (i32, i8*, ...) @f_print(i32 %206, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0))
  %208 = load i32, i32* @fout, align 4
  %209 = call i32 (i32, i8*, ...) @f_print(i32 %208, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i64 0, i64 0))
  %210 = load i32, i32* @fout, align 4
  %211 = call i32 (i32, i8*, ...) @f_print(i32 %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %212

212:                                              ; preds = %203, %200
  %213 = load i32, i32* @fout, align 4
  %214 = call i32 (i32, i8*, ...) @f_print(i32 %213, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0))
  %215 = load i32, i32* @fout, align 4
  %216 = call i32 (i32, i8*, ...) @f_print(i32 %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %217 = load i32, i32* @fout, align 4
  %218 = call i32 (i32, i8*, ...) @f_print(i32 %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0))
  %219 = load i32, i32* @fout, align 4
  %220 = call i32 (i32, i8*, ...) @f_print(i32 %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0))
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @open_log_file(i8*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @print_err_message(i8*) #1

declare dso_local i32 @pvname(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

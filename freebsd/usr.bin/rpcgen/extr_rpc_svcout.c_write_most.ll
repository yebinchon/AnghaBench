; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_most.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_most.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inetdflag = common dso_local global i64 0, align 8
@pmflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s int _rpcpmstart;\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\09\09/* Started by a port monitor ? */\0A\00", align 1
@tirpcflag = common dso_local global i64 0, align 8
@tirpc_socket = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s int _rpcfdtype;\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\0A\09\09 /* Whether Stream or Datagram ? */\0A\00", align 1
@timerflag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"\09/* States a server can be in wrt request */\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"#define\09_IDLE 0\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"#define\09_SERVED 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"#define\09_SERVING 2\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"static int _rpcsvcstate = _IDLE;\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"\09 /* Set when a request is serviced */\0A\00", align 1
@mtflag = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"pthread_mutex_t _svcstate_lock;\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"\09\09\09/* Mutex lock for variable _rpcsvcstate */\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\0Aint\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"main()\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\09register SVCXPRT *%s;\0A\00", align 1
@TRANSP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"\09struct netconfig *nconf = NULL;\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"\09pid_t pid;\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"\09int i;\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"\09struct sockaddr_storage saddr;\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"\09socklen_t asize = sizeof (saddr);\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"\09char mname[FMNAMESZ + 1];\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"\09mutex_init(&_svcstate_lock, USYNC_THREAD, NULL);\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"\09else {\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@logflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_most(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @inetdflag, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* @pmflag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %17, i8** %7, align 8
  %18 = load i32, i32* @fout, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 (i32, i8*, ...) @f_print(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @fout, align 4
  %22 = call i32 (i32, i8*, ...) @f_print(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i64, i64* @tirpcflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i64, i64* @tirpc_socket, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25, %13
  %29 = load i32, i32* @fout, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (i32, i8*, ...) @f_print(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @fout, align 4
  %33 = call i32 (i32, i8*, ...) @f_print(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* @timerflag, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i32, i32* @fout, align 4
  %39 = call i32 (i32, i8*, ...) @f_print(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32, i32* @fout, align 4
  %41 = call i32 (i32, i8*, ...) @f_print(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %42 = load i32, i32* @fout, align 4
  %43 = call i32 (i32, i8*, ...) @f_print(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %44 = load i32, i32* @fout, align 4
  %45 = call i32 (i32, i8*, ...) @f_print(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %46 = load i32, i32* @fout, align 4
  %47 = call i32 (i32, i8*, ...) @f_print(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %48 = load i32, i32* @fout, align 4
  %49 = call i32 (i32, i8*, ...) @f_print(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %50 = load i32, i32* @mtflag, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load i32, i32* @fout, align 4
  %54 = call i32 (i32, i8*, ...) @f_print(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %55 = load i32, i32* @fout, align 4
  %56 = call i32 (i32, i8*, ...) @f_print(i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %37
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @write_svc_aux(i32 %59)
  br label %61

61:                                               ; preds = %58, %10
  %62 = call i32 @write_programs(i8* null)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %151

66:                                               ; preds = %61
  %67 = load i32, i32* @fout, align 4
  %68 = call i32 (i32, i8*, ...) @f_print(i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %69 = load i32, i32* @fout, align 4
  %70 = call i32 (i32, i8*, ...) @f_print(i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %71 = load i32, i32* @fout, align 4
  %72 = call i32 (i32, i8*, ...) @f_print(i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %73 = load i64, i64* @inetdflag, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @write_inetmost(i8* %76)
  br label %142

78:                                               ; preds = %66
  %79 = load i64, i64* @tirpcflag, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @fout, align 4
  %86 = load i32, i32* @TRANSP, align 4
  %87 = call i32 (i32, i8*, ...) @f_print(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @fout, align 4
  %89 = call i32 (i32, i8*, ...) @f_print(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* @fout, align 4
  %92 = call i32 (i32, i8*, ...) @f_print(i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %93 = load i32, i32* @fout, align 4
  %94 = call i32 (i32, i8*, ...) @f_print(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %95 = load i64, i64* @pmflag, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load i64, i64* @tirpc_socket, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @fout, align 4
  %102 = call i32 (i32, i8*, ...) @f_print(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %103 = load i32, i32* @fout, align 4
  %104 = call i32 (i32, i8*, ...) @f_print(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  br label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @fout, align 4
  %107 = call i32 (i32, i8*, ...) @f_print(i32 %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i32, i32* @mtflag, align 4
  %111 = load i32, i32* @timerflag, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @fout, align 4
  %116 = call i32 (i32, i8*, ...) @f_print(i32 %115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i64, i64* @pmflag, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @write_pm_most(i8* %121, i32 %122)
  %124 = load i32, i32* @fout, align 4
  %125 = call i32 (i32, i8*, ...) @f_print(i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @write_rpc_svc_fg(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %128 = load i32, i32* @fout, align 4
  %129 = call i32 (i32, i8*, ...) @f_print(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %133

130:                                              ; preds = %117
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @write_rpc_svc_fg(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %120
  br label %141

134:                                              ; preds = %78
  %135 = load i32, i32* @fout, align 4
  %136 = load i32, i32* @TRANSP, align 4
  %137 = call i32 (i32, i8*, ...) @f_print(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @fout, align 4
  %139 = call i32 (i32, i8*, ...) @f_print(i32 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %140 = call i32 @print_pmapunset(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  br label %141

141:                                              ; preds = %134, %133
  br label %142

142:                                              ; preds = %141, %75
  %143 = load i64, i64* @logflag, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i64, i64* @inetdflag, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i8*, i8** %4, align 8
  %150 = call i32 @open_log_file(i8* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  br label %151

151:                                              ; preds = %65, %148, %145, %142
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @write_svc_aux(i32) #1

declare dso_local i32 @write_programs(i8*) #1

declare dso_local i32 @write_inetmost(i8*) #1

declare dso_local i32 @write_pm_most(i8*, i32) #1

declare dso_local i32 @write_rpc_svc_fg(i8*, i8*) #1

declare dso_local i32 @print_pmapunset(i8*) #1

declare dso_local i32 @open_log_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

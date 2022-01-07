; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_rpc_svc_fg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_rpc_svc_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"#ifndef RPC_SVC_FG\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%sint size;\0A\00", align 1
@tirpcflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"%sstruct rlimit rl;\0A\00", align 1
@inetdflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"%sint pid, i;\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%spid = fork();\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%sif (pid < 0) {\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s\09perror(\22cannot fork\22);\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s\09exit(1);\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s}\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%sif (pid)\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%s\09exit(0);\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%srl.rlim_max = 0;\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%sif (getrlimit(RLIMIT_NOFILE, &rl) == -1) {\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%s\09perror(\22getrlimit\22);\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%sif ((size = rl.rlim_max) == 0)\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"%ssize = getdtablesize();\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%sfor (i = 0; i < size; i++)\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"%s\09(void) close(i);\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"%si = open(\22/dev/console\22, 2);\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"%s(void) dup2(i, 1);\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"%s(void) dup2(i, 2);\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"%ssetsid();\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"%si = open(\22/dev/tty\22, 2);\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"%sif (i >= 0) {\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"%s\09(void) ioctl(i, TIOCNOTTY, (char *)NULL);\0A\00", align 1
@logflag = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @write_rpc_svc_fg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rpc_svc_fg(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @fout, align 4
  %6 = call i32 (i32, i8*, ...) @f_print(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @fout, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i32, i8*, ...) @f_print(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = load i64, i64* @tirpcflag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @fout, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (i32, i8*, ...) @f_print(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i64, i64* @inetdflag, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @fout, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i32, i8*, ...) @f_print(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @fout, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i32, i8*, ...) @f_print(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @fout, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 (i32, i8*, ...) @f_print(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @fout, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i32, i8*, ...) @f_print(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @fout, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i32, i8*, ...) @f_print(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @fout, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i32, i8*, ...) @f_print(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @fout, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i32, i8*, ...) @f_print(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @fout, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i32, i8*, ...) @f_print(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %43)
  %45 = load i64, i64* @tirpcflag, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %23
  %48 = load i32, i32* @fout, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 (i32, i8*, ...) @f_print(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @fout, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 (i32, i8*, ...) @f_print(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @fout, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 (i32, i8*, ...) @f_print(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @fout, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i32, i8*, ...) @f_print(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @fout, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 (i32, i8*, ...) @f_print(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @fout, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 (i32, i8*, ...) @f_print(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @fout, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 (i32, i8*, ...) @f_print(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  br label %73

69:                                               ; preds = %23
  %70 = load i32, i32* @fout, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 (i32, i8*, ...) @f_print(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %47
  %74 = load i32, i32* @fout, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i32, i8*, ...) @f_print(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @fout, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 (i32, i8*, ...) @f_print(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @fout, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 (i32, i8*, ...) @f_print(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @fout, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 (i32, i8*, ...) @f_print(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @fout, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 (i32, i8*, ...) @f_print(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %87)
  %89 = load i64, i64* @tirpcflag, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %73
  %92 = load i32, i32* @fout, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i32, i8*, ...) @f_print(i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* %93)
  br label %111

95:                                               ; preds = %73
  %96 = load i32, i32* @fout, align 4
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 (i32, i8*, ...) @f_print(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @fout, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 (i32, i8*, ...) @f_print(i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @fout, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (i32, i8*, ...) @f_print(i32 %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @fout, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 (i32, i8*, ...) @f_print(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @fout, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 (i32, i8*, ...) @f_print(i32 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %95, %91
  %112 = load i64, i64* @logflag, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** %3, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @open_log_file(i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i32, i32* @fout, align 4
  %120 = call i32 (i32, i8*, ...) @f_print(i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %121 = load i64, i64* @logflag, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i8*, i8** %3, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @open_log_file(i8* %124, i8* %125)
  br label %127

127:                                              ; preds = %123, %118
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @open_log_file(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

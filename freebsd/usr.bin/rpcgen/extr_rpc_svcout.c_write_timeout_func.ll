; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_timeout_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_timeout_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timerflag = common dso_local global i32 0, align 4
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"static void\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"closedown(int sig)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"\09pthread_mutex_lock(&_svcstate_lock);\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\09if (_rpcsvcstate == _IDLE) {\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\09\09extern fd_set svc_fdset;\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09\09static int size;\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"\09\09int i, openfd;\0A\00", align 1
@tirpcflag = common dso_local global i64 0, align 8
@pmflag = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"\09\09struct t_info tinfo;\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"\09\09if (!t_getinfo(0, &tinfo) && (tinfo.servtype == T_CLTS))\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\0A\09\09if (_rpcfdtype == SOCK_DGRAM)\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09\09\09exit(0);\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"\09\09if (size == 0) {\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\09\09\09struct rlimit rl;\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"\09\09\09rl.rlim_max = 0;\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"\09\09\09if (getrlimit(RLIMIT_NOFILE, &rl) == -1)\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"\09\09\09\09return;\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"\09\09\09if ((size = rl.rlim_max) == 0) {\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"\09\09\09\09pthread_mutex_unlock(&_svcstate_lock);\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\09\09\09\09return;\0A\09\09\09}\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"\09\09\09size = getdtablesize();\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"\09\09}\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"\09\09for (i = 0, openfd = 0; i < size && openfd < 2; i++)\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\09\09\09if (FD_ISSET(i, &svc_fdset))\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"\09\09\09\09openfd++;\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"\09\09if (openfd <= 1)\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"\09if (_rpcsvcstate == _SERVED)\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"\09\09_rpcsvcstate = _IDLE;\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"\09pthread_mutex_unlock(&_svcstate_lock);\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"\09(void) signal(SIGALRM, closedown);\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"\09(void) alarm(_RPCSVC_CLOSEDOWN/2);\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_timeout_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_timeout_func() #0 {
  %1 = load i32, i32* @timerflag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %100

4:                                                ; preds = %0
  %5 = load i32, i32* @fout, align 4
  %6 = call i32 @f_print(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @fout, align 4
  %8 = call i32 @f_print(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @fout, align 4
  %10 = call i32 @f_print(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @fout, align 4
  %12 = call i32 @f_print(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i64, i64* @mtflag, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @fout, align 4
  %17 = call i32 @f_print(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @fout, align 4
  %20 = call i32 @f_print(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32, i32* @fout, align 4
  %22 = call i32 @f_print(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32, i32* @fout, align 4
  %24 = call i32 @f_print(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32, i32* @fout, align 4
  %26 = call i32 @f_print(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %27 = load i64, i64* @tirpcflag, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i64, i64* @pmflag, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @fout, align 4
  %34 = call i32 @f_print(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %35 = load i32, i32* @fout, align 4
  %36 = call i32 @f_print(i32 %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  br label %40

37:                                               ; preds = %29, %18
  %38 = load i32, i32* @fout, align 4
  %39 = call i32 @f_print(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @fout, align 4
  %42 = call i32 @f_print(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %43 = load i32, i32* @fout, align 4
  %44 = call i32 @f_print(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %45 = load i64, i64* @tirpcflag, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load i32, i32* @fout, align 4
  %49 = call i32 @f_print(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %50 = load i32, i32* @fout, align 4
  %51 = call i32 @f_print(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %52 = load i32, i32* @fout, align 4
  %53 = call i32 @f_print(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  %54 = load i32, i32* @fout, align 4
  %55 = call i32 @f_print(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %56 = load i32, i32* @fout, align 4
  %57 = call i32 @f_print(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  %58 = load i64, i64* @mtflag, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @fout, align 4
  %62 = call i32 @f_print(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32, i32* @fout, align 4
  %65 = call i32 @f_print(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %69

66:                                               ; preds = %40
  %67 = load i32, i32* @fout, align 4
  %68 = call i32 @f_print(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @fout, align 4
  %71 = call i32 @f_print(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %72 = load i32, i32* @fout, align 4
  %73 = call i32 @f_print(i32 %72, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0))
  %74 = load i32, i32* @fout, align 4
  %75 = call i32 @f_print(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  %76 = load i32, i32* @fout, align 4
  %77 = call i32 @f_print(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %78 = load i32, i32* @fout, align 4
  %79 = call i32 @f_print(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  %80 = load i32, i32* @fout, align 4
  %81 = call i32 @f_print(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %82 = load i32, i32* @fout, align 4
  %83 = call i32 @f_print(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %84 = load i32, i32* @fout, align 4
  %85 = call i32 @f_print(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0))
  %86 = load i32, i32* @fout, align 4
  %87 = call i32 @f_print(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  %88 = load i64, i64* @mtflag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %69
  %91 = load i32, i32* @fout, align 4
  %92 = call i32 @f_print(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %69
  %94 = load i32, i32* @fout, align 4
  %95 = call i32 @f_print(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0))
  %96 = load i32, i32* @fout, align 4
  %97 = call i32 @f_print(i32 %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0))
  %98 = load i32, i32* @fout, align 4
  %99 = call i32 @f_print(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  br label %100

100:                                              ; preds = %93, %3
  ret void
}

declare dso_local i32 @f_print(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

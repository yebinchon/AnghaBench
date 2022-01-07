; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_inetmost.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_inetmost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\09register SVCXPRT *%s;\0A\00", align 1
@TRANSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\09int sock;\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09int proto;\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\09struct sockaddr_in saddr;\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\09socklen_t asize = sizeof (saddr);\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"\09if (getsockname(0, (struct sockaddr *)&saddr, &asize) == 0) {\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\09\09socklen_t ssize = sizeof (int);\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\09\09if (saddr.sin_family != AF_INET)\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\09\09\09exit(1);\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\09\09if (getsockopt(0, SOL_SOCKET, SO_TYPE,\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\09\09\09\09(char *)&_rpcfdtype, &ssize) == -1)\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09\09sock = 0;\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"\09\09_rpcpmstart = 1;\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\09\09proto = 0;\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"\09} else {\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"\09\09sock = RPC_ANYSOCK;\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @write_inetmost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_inetmost(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @fout, align 4
  %4 = load i32, i32* @TRANSP, align 4
  %5 = call i32 (i32, i8*, ...) @f_print(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @fout, align 4
  %7 = call i32 (i32, i8*, ...) @f_print(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @fout, align 4
  %9 = call i32 (i32, i8*, ...) @f_print(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @fout, align 4
  %11 = call i32 (i32, i8*, ...) @f_print(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @fout, align 4
  %13 = call i32 (i32, i8*, ...) @f_print(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @fout, align 4
  %15 = call i32 (i32, i8*, ...) @f_print(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @fout, align 4
  %17 = call i32 (i32, i8*, ...) @f_print(i32 %16, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %18 = load i32, i32* @fout, align 4
  %19 = call i32 (i32, i8*, ...) @f_print(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %20 = load i32, i32* @fout, align 4
  %21 = call i32 (i32, i8*, ...) @f_print(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %22 = load i32, i32* @fout, align 4
  %23 = call i32 (i32, i8*, ...) @f_print(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %24 = load i32, i32* @fout, align 4
  %25 = call i32 (i32, i8*, ...) @f_print(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %26 = load i32, i32* @fout, align 4
  %27 = call i32 (i32, i8*, ...) @f_print(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %28 = load i32, i32* @fout, align 4
  %29 = call i32 (i32, i8*, ...) @f_print(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %30 = load i32, i32* @fout, align 4
  %31 = call i32 (i32, i8*, ...) @f_print(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %32 = load i32, i32* @fout, align 4
  %33 = call i32 (i32, i8*, ...) @f_print(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %34 = load i32, i32* @fout, align 4
  %35 = call i32 (i32, i8*, ...) @f_print(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @open_log_file(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %38 = load i32, i32* @fout, align 4
  %39 = call i32 (i32, i8*, ...) @f_print(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @write_rpc_svc_fg(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %42 = load i32, i32* @fout, align 4
  %43 = call i32 (i32, i8*, ...) @f_print(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %44 = call i32 @print_pmapunset(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %45 = load i32, i32* @fout, align 4
  %46 = call i32 (i32, i8*, ...) @f_print(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @open_log_file(i8*, i8*) #1

declare dso_local i32 @write_rpc_svc_fg(i8*, i8*) #1

declare dso_local i32 @print_pmapunset(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

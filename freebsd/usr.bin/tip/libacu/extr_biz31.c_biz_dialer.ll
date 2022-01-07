; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz31.c_biz_dialer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_biz31.c_biz_dialer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD = common dso_local global i32 0, align 4
@HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"biz\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"out of sync\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bizcomp out of sync\0A\00", align 1
@uucplock = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"\0Astarting call...\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"#\0Dk$\0D$\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"$>$.$ #\0D\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"$\0D$\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"$>$.$ #\0De$ \00", align 1
@DISCONNECT_CMD = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"\0D$\0A$\0D$\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"$>$.$ #\0Dr$ \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\0D$\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ringing...\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" NO CONNECTION\0D\0A\07\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"CONNECTION\0D\0A\07\00", align 1
@timeout = common dso_local global i64 0, align 8
@DIALTIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @biz_dialer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biz_dialer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @FD, align 4
  %7 = call i32 @bizsync(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @HOST, align 4
  %11 = call i32 @value(i32 %10)
  %12 = call i32 @logent(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @uucplock, align 4
  %15 = call i32 @delock(i32 %14)
  %16 = call i32 @exit(i32 0) #3
  unreachable

17:                                               ; preds = %2
  %18 = load i32, i32* @VERBOSE, align 4
  %19 = call i32 @value(i32 %18)
  %20 = call i64 @boolean(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = call i32 @echo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @echo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @echo(i8* %27)
  %29 = call i32 @echo(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %30 = call i32 @echo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %31 = load i8*, i8** @DISCONNECT_CMD, align 8
  %32 = call i32 @echo(i8* %31)
  %33 = call i32 @echo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %34 = call i32 @echo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @echo(i8* %35)
  %37 = call i32 @echo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %38 = load i32, i32* @VERBOSE, align 4
  %39 = call i32 @value(i32 %38)
  %40 = call i64 @boolean(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %24
  %45 = call i32 @detect(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 @flush(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %52

50:                                               ; preds = %44
  %51 = call i32 @flush(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i64, i64* @timeout, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (...) @biz31_disconnect()
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @bizsync(i32) #1

declare dso_local i32 @logent(i32, i8*, i8*, i8*) #1

declare dso_local i32 @value(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @delock(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @echo(i8*) #1

declare dso_local i32 @detect(i8*) #1

declare dso_local i32 @flush(i8*) #1

declare dso_local i32 @biz31_disconnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

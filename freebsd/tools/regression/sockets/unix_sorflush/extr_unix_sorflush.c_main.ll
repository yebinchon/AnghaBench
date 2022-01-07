; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_sorflush/extr_unix_sorflush.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_sorflush/extr_unix_sorflush.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ok 1 - unix_sorflush\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @PF_LOCAL, align 4
  %6 = load i32, i32* @SOCK_STREAM, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %8 = call i64 @socketpair(i32 %5, i32 %6, i32 0, i32* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @err(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = call i64 (...) @fork()
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i64, i64* %2, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @receive_and_exit(i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = call i32 @sleep(i32 1)
  %27 = call i64 (...) @fork()
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* %2, align 8
  %33 = load i32, i32* @SIGKILL, align 4
  %34 = call i64 @kill(i64 %32, i32 %33)
  %35 = call i32 @exit(i32 -1) #3
  unreachable

36:                                               ; preds = %25
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @shutdown_and_exit(i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = call i32 @sleep(i32 1)
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* @SIGKILL, align 4
  %47 = call i64 @kill(i64 %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @err(i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = call i32 @sleep(i32 1)
  %53 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @receive_and_exit(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @kill(i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @shutdown_and_exit(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

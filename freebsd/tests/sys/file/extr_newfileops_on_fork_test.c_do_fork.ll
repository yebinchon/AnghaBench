; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/file/extr_newfileops_on_fork_test.c_do_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/file/extr_newfileops_on_fork_test.c_do_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@listen_fd = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"file descriptor still open in child\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"unexpected error\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ftruncate succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fork() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @fork()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @waitpid(i32 %11, i32* null, i32 0)
  %13 = call i32 @exit(i32 0) #3
  unreachable

14:                                               ; preds = %7
  %15 = load i64, i64* @listen_fd, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i64 @ftruncate(i64 %16, i32 0)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EBADF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @exit(i32 0) #3
  unreachable

25:                                               ; preds = %19
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINVAL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %33

31:                                               ; preds = %25
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33
  br label %37

35:                                               ; preds = %14
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ftruncate(i64, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

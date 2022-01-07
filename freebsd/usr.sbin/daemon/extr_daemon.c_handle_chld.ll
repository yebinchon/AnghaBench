; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_handle_chld.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_handle_chld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WNOHANG = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@child_gone = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_chld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_chld(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* @WNOHANG, align 4
  %7 = call i32 @waitpid(i32 -1, i32* null, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @pid, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 1, i32* @child_gone, align 4
  br label %23

12:                                               ; preds = %5
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EINTR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %23

21:                                               ; preds = %15, %12
  br label %22

22:                                               ; preds = %21
  br label %5

23:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

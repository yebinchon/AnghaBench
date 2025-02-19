; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lockf/extr_lockf.c_wait_for_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lockf/extr_lockf.c_wait_for_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_EXLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EX_CANTCREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wait_for_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_lock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @O_RDONLY, align 4
  %6 = load i32, i32* @O_EXLOCK, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @open(i8* %4, i32 %7, i32 438)
  store i32 %8, i32* %3, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @ENOENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EINTR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @EX_CANTCREAT, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @err(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @close(i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

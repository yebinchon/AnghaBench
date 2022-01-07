; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_v831_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/libacu/extr_v831.c_v831_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@FD = common dso_local global i64 0, align 8
@TIOCNXCL = common dso_local global i32 0, align 4
@AC = common dso_local global i32 0, align 4
@TIOCCDTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v831_abort() #0 {
  %1 = call i32 @sleep(i32 2)
  %2 = load i64, i64* @child, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i64, i64* @child, align 8
  %6 = load i32, i32* @SIGKILL, align 4
  %7 = call i32 @kill(i64 %5, i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @FD, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i64, i64* @FD, align 8
  %13 = load i32, i32* @TIOCNXCL, align 4
  %14 = call i32 @ioctl(i64 %12, i32 %13, i32* null)
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* @AC, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 @close(i64 %17)
  %19 = load i64, i64* @FD, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @FD, align 8
  %23 = load i32, i32* @TIOCCDTR, align 4
  %24 = call i32 @ioctl(i64 %22, i32 %23, i32* null)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i64, i64* @FD, align 8
  %27 = call i32 @close(i64 %26)
  ret void
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @ioctl(i64, i32, i32*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

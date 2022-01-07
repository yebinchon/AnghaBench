; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bc/extr_tty.c_gettty.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bc/extr_tty.c_gettty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettty(%struct.termios* %0) #0 {
  %2 = alloca %struct.termios*, align 8
  %3 = alloca i32, align 4
  store %struct.termios* %0, %struct.termios** %2, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load %struct.termios*, %struct.termios** %2, align 8
  %6 = call i32 @tcgetattr(i32 0, %struct.termios* %5)
  store i32 %6, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @EINTR, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i1 [ false, %4 ], [ %11, %8 ]
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %4

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

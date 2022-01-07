; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }
%struct.cv = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTRECURSED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_wait(%struct.tty* %0, %struct.cv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.cv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.cv* %1, %struct.cv** %5, align 8
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = load i32, i32* @MA_NOTRECURSED, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @tty_lock_assert(%struct.tty* %11, i32 %14)
  %16 = load %struct.tty*, %struct.tty** %4, align 8
  %17 = call i64 @tty_gone(%struct.tty* %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.cv*, %struct.cv** %5, align 8
  %23 = load %struct.tty*, %struct.tty** %4, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cv_wait_sig(%struct.cv* %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.tty*, %struct.tty** %4, align 8
  %28 = call i64 @tty_gone(%struct.tty* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.tty*, %struct.tty** %4, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @ERESTART, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @tty_gone(%struct.tty*) #1

declare dso_local i32 @cv_wait_sig(%struct.cv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

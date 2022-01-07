; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_timedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32 }
%struct.cv = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTRECURSED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_timedwait(%struct.tty* %0, %struct.cv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.cv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.cv* %1, %struct.cv** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tty*, %struct.tty** %5, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.tty*, %struct.tty** %5, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = load i32, i32* @MA_NOTRECURSED, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @tty_lock_assert(%struct.tty* %13, i32 %16)
  %18 = load %struct.tty*, %struct.tty** %5, align 8
  %19 = call i64 @tty_gone(%struct.tty* %18)
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  %24 = load %struct.cv*, %struct.cv** %6, align 8
  %25 = load %struct.tty*, %struct.tty** %5, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cv_timedwait_sig(%struct.cv* %24, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.tty*, %struct.tty** %5, align 8
  %31 = call i64 @tty_gone(%struct.tty* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %4, align 4
  br label %45

35:                                               ; preds = %3
  %36 = load %struct.tty*, %struct.tty** %5, align 8
  %37 = getelementptr inbounds %struct.tty, %struct.tty* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ERESTART, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41, %33
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @tty_gone(%struct.tty*) #1

declare dso_local i32 @cv_timedwait_sig(%struct.cv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

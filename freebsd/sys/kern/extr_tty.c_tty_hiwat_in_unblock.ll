; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_hiwat_in_unblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_hiwat_in_unblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64* }

@TF_HIWAT_IN = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_hiwat_in_unblock(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = getelementptr inbounds %struct.tty, %struct.tty* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @TF_HIWAT_IN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %1
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IXOFF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %9
  %18 = load %struct.tty*, %struct.tty** %2, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @VSTART, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @_POSIX_VDISABLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 2
  %30 = load %struct.tty*, %struct.tty** %2, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @VSTART, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = call i64 @ttyoutq_write_nofrag(i32* %29, i64* %35, i32 1)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load i32, i32* @TF_HIWAT_IN, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.tty*, %struct.tty** %2, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %27
  br label %53

46:                                               ; preds = %17, %9, %1
  %47 = load i32, i32* @TF_HIWAT_IN, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.tty*, %struct.tty** %2, align 8
  %50 = getelementptr inbounds %struct.tty, %struct.tty* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %45
  %54 = load %struct.tty*, %struct.tty** %2, align 8
  %55 = call i32 @tty_gone(%struct.tty* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load %struct.tty*, %struct.tty** %2, align 8
  %59 = call i32 @ttydevsw_inwakeup(%struct.tty* %58)
  br label %60

60:                                               ; preds = %57, %53
  ret void
}

declare dso_local i64 @ttyoutq_write_nofrag(i32*, i64*, i32) #1

declare dso_local i32 @tty_gone(%struct.tty*) #1

declare dso_local i32 @ttydevsw_inwakeup(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

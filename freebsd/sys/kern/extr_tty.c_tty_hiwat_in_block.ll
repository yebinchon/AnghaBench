; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_hiwat_in_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_hiwat_in_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64* }

@TF_HIWAT_IN = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_hiwat_in_block(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = getelementptr inbounds %struct.tty, %struct.tty* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @TF_HIWAT_IN, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IXOFF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %9
  %18 = load %struct.tty*, %struct.tty** %2, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @VSTOP, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @_POSIX_VDISABLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %17
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 2
  %30 = load %struct.tty*, %struct.tty** %2, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @VSTOP, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = call i64 @ttyoutq_write_nofrag(i32* %29, i64* %35, i32 1)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @TF_HIWAT_IN, align 4
  %40 = load %struct.tty*, %struct.tty** %2, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %27
  br label %51

45:                                               ; preds = %17, %9, %1
  %46 = load i32, i32* @TF_HIWAT_IN, align 4
  %47 = load %struct.tty*, %struct.tty** %2, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %44
  ret void
}

declare dso_local i64 @ttyoutq_write_nofrag(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

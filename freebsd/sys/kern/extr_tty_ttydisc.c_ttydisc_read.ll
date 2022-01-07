; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.uio = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@VTIME = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttydisc_read(%struct.tty* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tty*, %struct.tty** %5, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @tty_lock_assert(%struct.tty* %9, i32 %10)
  %12 = load %struct.uio*, %struct.uio** %6, align 8
  %13 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  %18 = load i32, i32* @l, align 4
  %19 = load i32, i32* @ICANON, align 4
  %20 = call i64 @CMP_FLAG(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.tty*, %struct.tty** %5, align 8
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ttydisc_read_canonical(%struct.tty* %23, %struct.uio* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %65

27:                                               ; preds = %17
  %28 = load %struct.tty*, %struct.tty** %5, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @VTIME, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.tty*, %struct.tty** %5, align 8
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ttydisc_read_raw_no_timer(%struct.tty* %37, %struct.uio* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.tty*, %struct.tty** %5, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @VMIN, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.tty*, %struct.tty** %5, align 8
  %52 = load %struct.uio*, %struct.uio** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ttydisc_read_raw_read_timer(%struct.tty* %51, %struct.uio* %52, i32 %53, i64 %56)
  store i32 %57, i32* %8, align 4
  br label %63

58:                                               ; preds = %41
  %59 = load %struct.tty*, %struct.tty** %5, align 8
  %60 = load %struct.uio*, %struct.uio** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @ttydisc_read_raw_interbyte_timer(%struct.tty* %59, %struct.uio* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %50
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %22
  %66 = load %struct.tty*, %struct.tty** %5, align 8
  %67 = getelementptr inbounds %struct.tty, %struct.tty* %66, i32 0, i32 1
  %68 = call i64 @ttyinq_bytesleft(i32* %67)
  %69 = load %struct.tty*, %struct.tty** %5, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load %struct.tty*, %struct.tty** %5, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 1
  %76 = call i64 @ttyinq_bytescanonicalized(i32* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %65
  %79 = load %struct.tty*, %struct.tty** %5, align 8
  %80 = call i32 @tty_hiwat_in_unblock(%struct.tty* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i64 @CMP_FLAG(i32, i32) #1

declare dso_local i32 @ttydisc_read_canonical(%struct.tty*, %struct.uio*, i32) #1

declare dso_local i32 @ttydisc_read_raw_no_timer(%struct.tty*, %struct.uio*, i32) #1

declare dso_local i32 @ttydisc_read_raw_read_timer(%struct.tty*, %struct.uio*, i32, i64) #1

declare dso_local i32 @ttydisc_read_raw_interbyte_timer(%struct.tty*, %struct.uio*, i32) #1

declare dso_local i64 @ttyinq_bytesleft(i32*) #1

declare dso_local i64 @ttyinq_bytescanonicalized(i32*) #1

declare dso_local i32 @tty_hiwat_in_unblock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

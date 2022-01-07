; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_read_raw_no_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_read_raw_no_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.uio = type { i64 }

@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@curthread = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@TF_ZOMBIE = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.uio*, i32)* @ttydisc_read_raw_no_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydisc_read_raw_no_timer(%struct.tty* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tty*, %struct.tty** %5, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @VMIN, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.tty*, %struct.tty** %5, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @VTIME, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  br label %31

31:                                               ; preds = %92, %3
  %32 = load %struct.tty*, %struct.tty** %5, align 8
  %33 = load i32, i32* @curthread, align 4
  %34 = load i32, i32* @SIGTTIN, align 4
  %35 = call i32 @tty_wait_background(%struct.tty* %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %93

40:                                               ; preds = %31
  %41 = load %struct.tty*, %struct.tty** %5, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 2
  %43 = load %struct.tty*, %struct.tty** %5, align 8
  %44 = load %struct.uio*, %struct.uio** %6, align 8
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ttyinq_read_uio(i32* %42, %struct.tty* %43, %struct.uio* %44, i64 %47, i32 0)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %93

53:                                               ; preds = %40
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.uio*, %struct.uio** %6, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = load i64, i64* %8, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %53
  store i32 0, i32* %4, align 4
  br label %93

67:                                               ; preds = %58
  %68 = load %struct.tty*, %struct.tty** %5, align 8
  %69 = getelementptr inbounds %struct.tty, %struct.tty* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TF_ZOMBIE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %93

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @IO_NDELAY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %81, i32* %4, align 4
  br label %93

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.tty*, %struct.tty** %5, align 8
  %85 = load %struct.tty*, %struct.tty** %5, align 8
  %86 = getelementptr inbounds %struct.tty, %struct.tty* %85, i32 0, i32 1
  %87 = call i32 @tty_wait(%struct.tty* %84, i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %83
  br label %31

93:                                               ; preds = %90, %80, %74, %66, %51, %38
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tty_wait_background(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttyinq_read_uio(i32*, %struct.tty*, %struct.uio*, i64, i32) #1

declare dso_local i32 @tty_wait(%struct.tty*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

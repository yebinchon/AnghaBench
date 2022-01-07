; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tty* }
%struct.tty = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uio = type { i32 }

@TOSTOP = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@TF_BUSY_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @ttydev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydev_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cdev*, %struct.cdev** %5, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.tty*, %struct.tty** %11, align 8
  store %struct.tty* %12, %struct.tty** %8, align 8
  %13 = load %struct.tty*, %struct.tty** %8, align 8
  %14 = call i32 @ttydev_enter(%struct.tty* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load %struct.tty*, %struct.tty** %8, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TOSTOP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.tty*, %struct.tty** %8, align 8
  %29 = load i32, i32* @curthread, align 4
  %30 = load i32, i32* @SIGTTOU, align 4
  %31 = call i32 @tty_wait_background(%struct.tty* %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %90

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IO_NDELAY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.tty*, %struct.tty** %8, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TF_BUSY_OUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.tty*, %struct.tty** %8, align 8
  %50 = load %struct.uio*, %struct.uio** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ttydisc_write(%struct.tty* %49, %struct.uio* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %89

53:                                               ; preds = %41, %36
  br label %54

54:                                               ; preds = %69, %53
  %55 = load %struct.tty*, %struct.tty** %8, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TF_BUSY_OUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.tty*, %struct.tty** %8, align 8
  %63 = load %struct.tty*, %struct.tty** %8, align 8
  %64 = getelementptr inbounds %struct.tty, %struct.tty* %63, i32 0, i32 1
  %65 = call i32 @tty_wait(%struct.tty* %62, i32* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %90

69:                                               ; preds = %61
  br label %54

70:                                               ; preds = %54
  %71 = load i32, i32* @TF_BUSY_OUT, align 4
  %72 = load %struct.tty*, %struct.tty** %8, align 8
  %73 = getelementptr inbounds %struct.tty, %struct.tty* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.tty*, %struct.tty** %8, align 8
  %77 = load %struct.uio*, %struct.uio** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ttydisc_write(%struct.tty* %76, %struct.uio* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @TF_BUSY_OUT, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.tty*, %struct.tty** %8, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.tty*, %struct.tty** %8, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 1
  %88 = call i32 @cv_signal(i32* %87)
  br label %89

89:                                               ; preds = %70, %48
  br label %90

90:                                               ; preds = %89, %68, %34
  %91 = load %struct.tty*, %struct.tty** %8, align 8
  %92 = call i32 @tty_unlock(%struct.tty* %91)
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ttydev_enter(%struct.tty*) #1

declare dso_local i32 @tty_wait_background(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydisc_write(%struct.tty*, %struct.uio*, i32) #1

declare dso_local i32 @tty_wait(%struct.tty*, i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

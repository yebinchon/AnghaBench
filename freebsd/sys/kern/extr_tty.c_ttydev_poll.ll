; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tty* }
%struct.tty = type { i32, i32, i32 }
%struct.thread = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@TF_ZOMBIE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @ttydev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydev_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.tty*, %struct.tty** %12, align 8
  store %struct.tty* %13, %struct.tty** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.tty*, %struct.tty** %8, align 8
  %15 = call i32 @ttydev_enter(%struct.tty* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @POLLRDNORM, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @POLLHUP, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %110

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @POLLIN, align 4
  %29 = load i32, i32* @POLLRDNORM, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.tty*, %struct.tty** %8, align 8
  %35 = call i64 @ttydisc_read_poll(%struct.tty* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @POLLIN, align 4
  %40 = load i32, i32* @POLLRDNORM, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %37, %33
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.tty*, %struct.tty** %8, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TF_ZOMBIE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @POLLHUP, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %78

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @POLLOUT, align 4
  %60 = load i32, i32* @POLLWRNORM, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.tty*, %struct.tty** %8, align 8
  %66 = call i64 @ttydisc_write_poll(%struct.tty* %65)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @POLLOUT, align 4
  %71 = load i32, i32* @POLLWRNORM, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %68, %64
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %53
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @POLLIN, align 4
  %84 = load i32, i32* @POLLRDNORM, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.thread*, %struct.thread** %7, align 8
  %90 = load %struct.tty*, %struct.tty** %8, align 8
  %91 = getelementptr inbounds %struct.tty, %struct.tty* %90, i32 0, i32 2
  %92 = call i32 @selrecord(%struct.thread* %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @POLLOUT, align 4
  %96 = load i32, i32* @POLLWRNORM, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.thread*, %struct.thread** %7, align 8
  %102 = load %struct.tty*, %struct.tty** %8, align 8
  %103 = getelementptr inbounds %struct.tty, %struct.tty* %102, i32 0, i32 1
  %104 = call i32 @selrecord(%struct.thread* %101, i32* %103)
  br label %105

105:                                              ; preds = %100, %93
  br label %106

106:                                              ; preds = %105, %78
  %107 = load %struct.tty*, %struct.tty** %8, align 8
  %108 = call i32 @tty_unlock(%struct.tty* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %18
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ttydev_enter(%struct.tty*) #1

declare dso_local i64 @ttydisc_read_poll(%struct.tty*) #1

declare dso_local i64 @ttydisc_write_poll(%struct.tty*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_dev_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_dev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @vkbd_dev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vkbd_dev_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %4, align 4
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = call i32 @VKBD_LOCK(%struct.TYPE_5__* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @POLLIN, align 4
  %26 = load i32, i32* @POLLRDNORM, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @STATUS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @POLLIN, align 4
  %40 = load i32, i32* @POLLRDNORM, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %50

45:                                               ; preds = %30
  %46 = load %struct.thread*, %struct.thread** %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = call i32 @selrecord(%struct.thread* %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %37
  br label %51

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @POLLOUT, align 4
  %54 = load i32, i32* @POLLWRNORM, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @nitems(i32 %64)
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @POLLOUT, align 4
  %70 = load i32, i32* @POLLWRNORM, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %80

75:                                               ; preds = %58
  %76 = load %struct.thread*, %struct.thread** %7, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = call i32 @selrecord(%struct.thread* %76, i32* %78)
  br label %80

80:                                               ; preds = %75, %67
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = call i32 @VKBD_UNLOCK(%struct.TYPE_5__* %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @VKBD_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i64 @nitems(i32) #1

declare dso_local i32 @VKBD_UNLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

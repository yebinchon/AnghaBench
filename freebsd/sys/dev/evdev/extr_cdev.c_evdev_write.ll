; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.evdev_dev* }
%struct.evdev_dev = type { i32 }
%struct.uio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.evdev_client = type { i64 }
%struct.input_event = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"write %zd bytes by thread %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"write size not multiple of input_event size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @evdev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evdev_dev*, align 8
  %9 = alloca %struct.evdev_client*, align 8
  %10 = alloca %struct.input_event, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.evdev_dev*, %struct.evdev_dev** %13, align 8
  store %struct.evdev_dev* %14, %struct.evdev_dev** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = bitcast %struct.evdev_client** %9 to i8**
  %16 = call i32 @devfs_get_cdevpriv(i8** %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.evdev_client*, %struct.evdev_client** %9, align 8
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.uio*, %struct.uio** %6, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.evdev_client*, i8*, ...) @debugf(%struct.evdev_client* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30)
  %32 = load %struct.evdev_client*, %struct.evdev_client** %9, align 8
  %33 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load %struct.evdev_dev*, %struct.evdev_dev** %8, align 8
  %38 = icmp eq %struct.evdev_dev* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %21
  %40 = load i32, i32* @ENODEV, align 4
  store i32 %40, i32* %4, align 4
  br label %80

41:                                               ; preds = %36
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = urem i64 %45, 12
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.evdev_client*, %struct.evdev_client** %9, align 8
  %50 = call i32 (%struct.evdev_client*, i8*, ...) @debugf(%struct.evdev_client* %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %80

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %77, %52
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i1 [ false, %53 ], [ %60, %58 ]
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = call i32 @uiomove(%struct.input_event* %10, i32 12, %struct.uio* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.evdev_dev*, %struct.evdev_dev** %8, align 8
  %70 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @evdev_inject_event(%struct.evdev_dev* %69, i32 %71, i32 %73, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %68, %63
  br label %53

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %48, %39, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @debugf(%struct.evdev_client*, i8*, ...) #1

declare dso_local i32 @uiomove(%struct.input_event*, i32, %struct.uio*) #1

declare dso_local i32 @evdev_inject_event(%struct.evdev_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

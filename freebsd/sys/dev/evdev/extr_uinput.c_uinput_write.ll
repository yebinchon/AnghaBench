; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uinput_cdev_state = type { i64, i32 }
%struct.uinput_user_dev = type { i32, i32, i32 }
%struct.input_event = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"write %zd bytes by thread %d\00", align 1
@UINPUT_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"write size not multiple of struct uinput_user_dev size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"write size not multiple of struct input_event size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @uinput_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uinput_cdev_state*, align 8
  %9 = alloca %struct.uinput_user_dev, align 4
  %10 = alloca %struct.input_event, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = bitcast %struct.uinput_cdev_state** %8 to i8**
  %13 = call i32 @devfs_get_cdevpriv(i8** %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %97

18:                                               ; preds = %3
  %19 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %20 = load %struct.uio*, %struct.uio** %6, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.uinput_cdev_state*, i8*, ...) @debugf(%struct.uinput_cdev_state* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %30 = call i32 @UINPUT_LOCK(%struct.uinput_cdev_state* %29)
  %31 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %32 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UINPUT_RUNNING, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %18
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 12
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %44 = call i32 (%struct.uinput_cdev_state*, i8*, ...) @debugf(%struct.uinput_cdev_state* %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %11, align 4
  br label %55

46:                                               ; preds = %36
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = call i32 @uiomove(%struct.uinput_user_dev* %9, i32 12, %struct.uio* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %53 = call i32 @uinput_setup_provider(%struct.uinput_cdev_state* %52, %struct.uinput_user_dev* %9)
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %42
  br label %93

56:                                               ; preds = %18
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = urem i64 %60, 12
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %65 = call i32 (%struct.uinput_cdev_state*, i8*, ...) @debugf(%struct.uinput_cdev_state* %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.uio*, %struct.uio** %6, align 8
  %73 = getelementptr inbounds %struct.uio, %struct.uio* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br label %76

76:                                               ; preds = %71, %68
  %77 = phi i1 [ false, %68 ], [ %75, %71 ]
  br i1 %77, label %78, label %92

78:                                               ; preds = %76
  %79 = bitcast %struct.input_event* %10 to %struct.uinput_user_dev*
  %80 = load %struct.uio*, %struct.uio** %6, align 8
  %81 = call i32 @uiomove(%struct.uinput_user_dev* %79, i32 12, %struct.uio* %80)
  %82 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %83 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.input_event, %struct.input_event* %10, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @evdev_push_event(i32 %84, i32 %86, i32 %88, i32 %90)
  store i32 %91, i32* %11, align 4
  br label %68

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92, %55
  %94 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %95 = call i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %16
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @debugf(%struct.uinput_cdev_state*, i8*, ...) #1

declare dso_local i32 @UINPUT_LOCK(%struct.uinput_cdev_state*) #1

declare dso_local i32 @uiomove(%struct.uinput_user_dev*, i32, %struct.uio*) #1

declare dso_local i32 @uinput_setup_provider(%struct.uinput_cdev_state*, %struct.uinput_user_dev*) #1

declare dso_local i32 @evdev_push_event(i32, i32, i32, i32) #1

declare dso_local i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

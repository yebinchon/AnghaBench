; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uinput_cdev_state = type { i64, i32, i64, %struct.input_event*, i32 }
%struct.input_event = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"read %zd bytes by thread %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UINPUT_RUNNING = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"uiread\00", align 1
@UINPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @uinput_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uinput_cdev_state*, align 8
  %9 = alloca %struct.input_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.uinput_cdev_state** %8 to i8**
  %13 = call i32 @devfs_get_cdevpriv(i8** %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %123

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
  %28 = call i32 @debugf(%struct.uinput_cdev_state* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load %struct.uio*, %struct.uio** %6, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.uio*, %struct.uio** %6, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %123

41:                                               ; preds = %33, %18
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %49 = call i32 @UINPUT_LOCK(%struct.uinput_cdev_state* %48)
  %50 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %51 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UINPUT_RUNNING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %55, %41
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %62 = call i64 @UINPUT_EMPTYQ(%struct.uinput_cdev_state* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @O_NONBLOCK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %70, i32* %11, align 4
  br label %83

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %76 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  %77 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %78 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %79 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %78, i32 0, i32 4
  %80 = load i32, i32* @PCATCH, align 4
  %81 = call i32 @sx_sleep(%struct.uinput_cdev_state* %77, i32* %79, i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %74, %71
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %60, %57
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %90 = call i64 @UINPUT_EMPTYQ(%struct.uinput_cdev_state* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %93, 0
  br label %95

95:                                               ; preds = %92, %88, %85
  %96 = phi i1 [ false, %88 ], [ false, %85 ], [ %94, %92 ]
  br i1 %96, label %97, label %119

97:                                               ; preds = %95
  %98 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %99 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %98, i32 0, i32 3
  %100 = load %struct.input_event*, %struct.input_event** %99, align 8
  %101 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %102 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.input_event, %struct.input_event* %100, i64 %103
  store %struct.input_event* %104, %struct.input_event** %9, align 8
  %105 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %106 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  %109 = load i32, i32* @UINPUT_BUFFER_SIZE, align 4
  %110 = sext i32 %109 to i64
  %111 = urem i64 %108, %110
  %112 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %113 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %10, align 4
  %116 = load %struct.input_event*, %struct.input_event** %9, align 8
  %117 = load %struct.uio*, %struct.uio** %6, align 8
  %118 = call i32 @uiomove(%struct.input_event* %116, i32 4, %struct.uio* %117)
  store i32 %118, i32* %11, align 4
  br label %85

119:                                              ; preds = %95
  %120 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %8, align 8
  %121 = call i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state* %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %39, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @debugf(%struct.uinput_cdev_state*, i8*, i32, i32) #1

declare dso_local i32 @UINPUT_LOCK(%struct.uinput_cdev_state*) #1

declare dso_local i64 @UINPUT_EMPTYQ(%struct.uinput_cdev_state*) #1

declare dso_local i32 @sx_sleep(%struct.uinput_cdev_state*, i32*, i32, i8*, i32) #1

declare dso_local i32 @uiomove(%struct.input_event*, i32, %struct.uio*) #1

declare dso_local i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

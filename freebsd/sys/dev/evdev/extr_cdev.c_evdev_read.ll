; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.evdev_client = type { i32, i64, i32, i32*, i32, i64 }
%struct.input_event = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"read %zd bytes by thread %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"evread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @evdev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evdev_client*, align 8
  %9 = alloca %struct.input_event, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = bitcast %struct.evdev_client** %8 to i8**
  %13 = call i32 @devfs_get_cdevpriv(i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %125

18:                                               ; preds = %3
  %19 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %20 = load %struct.uio*, %struct.uio** %6, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @debugf(%struct.evdev_client* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %30 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @ENODEV, align 4
  store i32 %34, i32* %4, align 4
  br label %125

35:                                               ; preds = %18
  %36 = load %struct.uio*, %struct.uio** %6, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.uio*, %struct.uio** %6, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %4, align 4
  br label %125

48:                                               ; preds = %40, %35
  %49 = load %struct.uio*, %struct.uio** %6, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %56 = call i32 @EVDEV_CLIENT_LOCKQ(%struct.evdev_client* %55)
  %57 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %58 = call i64 @EVDEV_CLIENT_EMPTYQ(%struct.evdev_client* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @O_NONBLOCK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %66, i32* %10, align 4
  br label %79

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %72 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %74 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %75 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %74, i32 0, i32 4
  %76 = load i32, i32* @PCATCH, align 4
  %77 = call i32 @mtx_sleep(%struct.evdev_client* %73, i32* %75, i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %86 = call i64 @EVDEV_CLIENT_EMPTYQ(%struct.evdev_client* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %11, align 4
  %90 = icmp sgt i32 %89, 0
  br label %91

91:                                               ; preds = %88, %84, %81
  %92 = phi i1 [ false, %84 ], [ false, %81 ], [ %90, %88 ]
  br i1 %92, label %93, label %121

93:                                               ; preds = %91
  %94 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %95 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %98 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @memcpy(%struct.input_event* %9, i32* %100, i32 4)
  %102 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %103 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  %106 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %107 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = urem i64 %105, %109
  %111 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %112 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %11, align 4
  %115 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %116 = call i32 @EVDEV_CLIENT_UNLOCKQ(%struct.evdev_client* %115)
  %117 = load %struct.uio*, %struct.uio** %6, align 8
  %118 = call i32 @uiomove(%struct.input_event* %9, i32 4, %struct.uio* %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %120 = call i32 @EVDEV_CLIENT_LOCKQ(%struct.evdev_client* %119)
  br label %81

121:                                              ; preds = %91
  %122 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  %123 = call i32 @EVDEV_CLIENT_UNLOCKQ(%struct.evdev_client* %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %46, %33, %16
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @debugf(%struct.evdev_client*, i8*, i32, i32) #1

declare dso_local i32 @EVDEV_CLIENT_LOCKQ(%struct.evdev_client*) #1

declare dso_local i64 @EVDEV_CLIENT_EMPTYQ(%struct.evdev_client*) #1

declare dso_local i32 @mtx_sleep(%struct.evdev_client*, i32*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.input_event*, i32*, i32) #1

declare dso_local i32 @EVDEV_CLIENT_UNLOCKQ(%struct.evdev_client*) #1

declare dso_local i32 @uiomove(%struct.input_event*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

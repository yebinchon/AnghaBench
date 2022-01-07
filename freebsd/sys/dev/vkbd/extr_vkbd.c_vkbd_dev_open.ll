; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_dev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_15__ = type { i32 (i32, i32*, i32)*, i32 (i32, %struct.TYPE_14__**, i32*, i32)*, i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.cdev* }

@KEYBOARD_NAME = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @vkbd_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vkbd_dev_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %15 = load %struct.cdev*, %struct.cdev** %6, align 8
  %16 = call i32 @dev2unit(%struct.cdev* %15)
  store i32 %16, i32* %10, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  %17 = load %struct.cdev*, %struct.cdev** %6, align 8
  %18 = getelementptr inbounds %struct.cdev, %struct.cdev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %14, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %22 = icmp eq %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %4
  %24 = load i32, i32* @KEYBOARD_NAME, align 4
  %25 = call %struct.TYPE_15__* @kbd_get_switch(i32 %24)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %12, align 8
  %26 = icmp eq %struct.TYPE_15__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 %32(i32 %33, i32* null, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32 (i32, %struct.TYPE_14__**, i32*, i32)*, i32 (i32, %struct.TYPE_14__**, i32*, i32)** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 %39(i32 %40, %struct.TYPE_14__** %13, i32* null, i32 0)
  store i32 %41, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %29
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %93

45:                                               ; preds = %36
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %14, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %54 = call i32 %52(%struct.TYPE_14__* %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  %59 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %61 = call i32 %59(%struct.TYPE_14__* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %93

63:                                               ; preds = %45
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cdev*, %struct.cdev** %6, align 8
  %68 = getelementptr inbounds %struct.cdev, %struct.cdev* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = call i32 @VKBD_LOCK(%struct.TYPE_13__* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OPEN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = call i32 @VKBD_UNLOCK(%struct.TYPE_13__* %79)
  %81 = load i32, i32* @EBUSY, align 4
  store i32 %81, i32* %5, align 4
  br label %93

82:                                               ; preds = %69
  %83 = load i32, i32* @OPEN, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.cdev*, %struct.cdev** %6, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store %struct.cdev* %88, %struct.cdev** %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %92 = call i32 @VKBD_UNLOCK(%struct.TYPE_13__* %91)
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %82, %78, %56, %43, %27
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local %struct.TYPE_15__* @kbd_get_switch(i32) #1

declare dso_local i32 @VKBD_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @VKBD_UNLOCK(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

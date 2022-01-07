; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_open_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_open_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { %struct.cdev* }
%struct.cdev = type { %struct.cdevsw* }
%struct.cdevsw = type { i32 (%struct.cdev*, i32, i32, i32, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, %struct.cdev* }
%struct.vattr = type { i32 }

@XBB_TYPE_DISK = common dso_local global i32 0, align 4
@xbb_dispatch_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to retrieve device switch\00", align 1
@NOCRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"error getting vnode attributes for device %s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"no d_ioctl for device %s!\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"error calling ioctl DIOCGSECTORSIZE for device %s\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"error calling ioctl DIOCGMEDIASIZE for device %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xbb_softc*)* @xbb_open_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_open_dev(%struct.xbb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca %struct.vattr, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.cdevsw*, align 8
  %7 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %3, align 8
  %8 = load i32, i32* @XBB_TYPE_DISK, align 4
  %9 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @xbb_dispatch_dev, align 4
  %12 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.cdev*, %struct.cdev** %17, align 8
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %20 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store %struct.cdev* %18, %struct.cdev** %22, align 8
  %23 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.cdev*, %struct.cdev** %26, align 8
  %28 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32* @dev_refthread(%struct.cdev* %27, i32* %31)
  %33 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* %32, i32** %36, align 8
  %37 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %1
  %46 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %47 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* @NOCRED, align 4
  %50 = call i32 @VOP_GETATTR(%struct.TYPE_6__* %48, %struct.vattr* %4, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %55 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %59 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @xenbus_dev_fatal(i32 %56, i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %135

63:                                               ; preds = %45
  %64 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %65 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %64, i32 0, i32 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.cdev*, %struct.cdev** %67, align 8
  store %struct.cdev* %68, %struct.cdev** %5, align 8
  %69 = load %struct.cdev*, %struct.cdev** %5, align 8
  %70 = getelementptr inbounds %struct.cdev, %struct.cdev* %69, i32 0, i32 0
  %71 = load %struct.cdevsw*, %struct.cdevsw** %70, align 8
  store %struct.cdevsw* %71, %struct.cdevsw** %6, align 8
  %72 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %73 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %72, i32 0, i32 0
  %74 = load i32 (%struct.cdev*, i32, i32, i32, i32)*, i32 (%struct.cdev*, i32, i32, i32, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.cdev*, i32, i32, i32, i32)* %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %63
  %77 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %78 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ENODEV, align 4
  %81 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %82 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @xenbus_dev_fatal(i32 %79, i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  store i32 %85, i32* %2, align 4
  br label %135

86:                                               ; preds = %63
  %87 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %88 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %87, i32 0, i32 0
  %89 = load i32 (%struct.cdev*, i32, i32, i32, i32)*, i32 (%struct.cdev*, i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.cdev*, %struct.cdev** %5, align 8
  %91 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %92 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %93 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %92, i32 0, i32 3
  %94 = ptrtoint i32* %93 to i32
  %95 = load i32, i32* @FREAD, align 4
  %96 = load i32, i32* @curthread, align 4
  %97 = call i32 %89(%struct.cdev* %90, i32 %91, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %86
  %101 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %102 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %106 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @xenbus_dev_fatal(i32 %103, i32 %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %135

110:                                              ; preds = %86
  %111 = load %struct.cdevsw*, %struct.cdevsw** %6, align 8
  %112 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %111, i32 0, i32 0
  %113 = load i32 (%struct.cdev*, i32, i32, i32, i32)*, i32 (%struct.cdev*, i32, i32, i32, i32)** %112, align 8
  %114 = load %struct.cdev*, %struct.cdev** %5, align 8
  %115 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %116 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %117 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %116, i32 0, i32 2
  %118 = ptrtoint i32* %117 to i32
  %119 = load i32, i32* @FREAD, align 4
  %120 = load i32, i32* @curthread, align 4
  %121 = call i32 %113(%struct.cdev* %114, i32 %115, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %110
  %125 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %126 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %130 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @xenbus_dev_fatal(i32 %127, i32 %128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %124, %100, %76, %53
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VOP_GETATTR(%struct.TYPE_6__*, %struct.vattr*, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

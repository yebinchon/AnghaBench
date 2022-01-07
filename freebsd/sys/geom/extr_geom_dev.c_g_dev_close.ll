; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.g_consumer* }
%struct.g_consumer = type { %struct.g_dev_softc*, %struct.TYPE_2__* }
%struct.g_dev_softc = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@G_T_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"g_dev_close(%s, %d, %d, %p)\00", align 1
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SC_A_OPEN = common dso_local global i32 0, align 4
@SC_A_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"g_dev_close\00", align 1
@hz = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @g_dev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_dev_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.g_consumer*, align 8
  %11 = alloca %struct.g_dev_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.g_consumer*, %struct.g_consumer** %17, align 8
  store %struct.g_consumer* %18, %struct.g_consumer** %10, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %20 = icmp eq %struct.g_consumer* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %5, align 4
  br label %120

23:                                               ; preds = %4
  %24 = load i32, i32* @G_T_ACCESS, align 4
  %25 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %26 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.thread*, %struct.thread** %9, align 8
  %33 = call i32 @g_trace(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, %struct.thread* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FREAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 -1, i32 0
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FWRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 -1, i32 0
  store i32 %45, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %23
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %5, align 4
  br label %120

54:                                               ; preds = %23
  %55 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %56 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %55, i32 0, i32 0
  %57 = load %struct.g_dev_softc*, %struct.g_dev_softc** %56, align 8
  store %struct.g_dev_softc* %57, %struct.g_dev_softc** %11, align 8
  %58 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %59 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %58, i32 0, i32 2
  %60 = call i32 @mtx_lock(i32* %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %68 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %72 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %54
  %76 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %77 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %76, i32 0, i32 1
  %78 = load i32, i32* @SC_A_OPEN, align 4
  %79 = call i32 @atomic_clear_int(i32* %77, i32 %78)
  br label %85

80:                                               ; preds = %54
  %81 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %82 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %81, i32 0, i32 1
  %83 = load i32, i32* @SC_A_OPEN, align 4
  %84 = call i32 @atomic_set_int(i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %100, %85
  %87 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %88 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %93 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SC_A_ACTIVE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %91, %86
  %99 = phi i1 [ false, %86 ], [ %97, %91 ]
  br i1 %99, label %100, label %108

100:                                              ; preds = %98
  %101 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %102 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %101, i32 0, i32 1
  %103 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %104 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %103, i32 0, i32 2
  %105 = load i32, i32* @hz, align 4
  %106 = sdiv i32 %105, 10
  %107 = call i32 @msleep(i32* %102, i32* %104, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %86

108:                                              ; preds = %98
  %109 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %110 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %109, i32 0, i32 2
  %111 = call i32 @mtx_unlock(i32* %110)
  %112 = call i32 (...) @g_topology_lock()
  %113 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @g_access(%struct.g_consumer* %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = call i32 (...) @g_topology_unlock()
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %108, %52, %21
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @g_trace(i32, i8*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

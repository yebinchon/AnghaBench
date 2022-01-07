; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.g_consumer* }
%struct.g_consumer = type { %struct.g_dev_softc*, %struct.TYPE_2__* }
%struct.g_dev_softc = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@G_T_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"g_dev_open(%s, %d, %d, %p)\00", align 1
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SC_A_ACTIVE = common dso_local global i32 0, align 4
@SC_A_OPEN = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @g_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_dev_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
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
  br label %130

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
  %33 = call i32 @g_trace(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, %struct.thread* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FREAD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FWRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
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
  br label %130

54:                                               ; preds = %23
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.thread*, %struct.thread** %9, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @securelevel_ge(i32 %60, i32 2)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %130

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = call i32 (...) @g_topology_lock()
  %69 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @g_access(%struct.g_consumer* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = call i32 (...) @g_topology_unlock()
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %128

77:                                               ; preds = %67
  %78 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %79 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %78, i32 0, i32 0
  %80 = load %struct.g_dev_softc*, %struct.g_dev_softc** %79, align 8
  store %struct.g_dev_softc* %80, %struct.g_dev_softc** %11, align 8
  %81 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %82 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %81, i32 0, i32 2
  %83 = call i32 @mtx_lock(i32* %82)
  %84 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %85 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %90 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SC_A_ACTIVE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %97 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %96, i32 0, i32 1
  %98 = call i32 @wakeup(i32* %97)
  br label %99

99:                                               ; preds = %95, %88, %77
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %107 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %111 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %99
  %115 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %116 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %115, i32 0, i32 1
  %117 = load i32, i32* @SC_A_OPEN, align 4
  %118 = call i32 @atomic_clear_int(i32* %116, i32 %117)
  br label %124

119:                                              ; preds = %99
  %120 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %121 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %120, i32 0, i32 1
  %122 = load i32, i32* @SC_A_OPEN, align 4
  %123 = call i32 @atomic_set_int(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.g_dev_softc*, %struct.g_dev_softc** %11, align 8
  %126 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %125, i32 0, i32 2
  %127 = call i32 @mtx_unlock(i32* %126)
  br label %128

128:                                              ; preds = %124, %67
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %64, %52, %21
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @g_trace(i32, i8*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @securelevel_ge(i32, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

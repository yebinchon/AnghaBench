; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_detach_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_detach_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to delete unit %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twe_detach_drive(%struct.twe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %8 = call i32 @TWE_CONFIG_ASSERT_LOCKED(%struct.twe_softc* %7)
  %9 = call i32 @mtx_lock(i32* @Giant)
  %10 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %11 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %14 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_delete_child(i32 %12, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = call i32 @mtx_unlock(i32* @Giant)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @twe_printf(%struct.twe_softc* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %32 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = call i32 @bzero(%struct.TYPE_2__* %36, i32 4)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @TWE_CONFIG_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

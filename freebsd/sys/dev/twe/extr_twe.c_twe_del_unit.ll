; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_del_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_del_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@TWE_MAX_UNITS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*, i32)* @twe_del_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_del_unit(%struct.twe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %8 = call i32 @TWE_CONFIG_ASSERT_LOCKED(%struct.twe_softc* %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TWE_MAX_UNITS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %11
  %18 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %19 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %17
  %30 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @twe_detach_drive(%struct.twe_softc* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %27, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @TWE_CONFIG_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local i32 @twe_detach_drive(%struct.twe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

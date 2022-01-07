; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mlphy.c_mlphy_find_other.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mlphy.c_mlphy_find_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mlphy_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mii_softc* (%struct.mlphy_softc*)* @mlphy_find_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mii_softc* @mlphy_find_other(%struct.mlphy_softc* %0) #0 {
  %2 = alloca %struct.mii_softc*, align 8
  %3 = alloca %struct.mlphy_softc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlphy_softc* %0, %struct.mlphy_softc** %3, align 8
  store %struct.mii_softc* null, %struct.mii_softc** %5, align 8
  %8 = load %struct.mlphy_softc*, %struct.mlphy_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mlphy_softc, %struct.mlphy_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @device_get_children(i32 %11, i64** %4, i32* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.mii_softc* null, %struct.mii_softc** %2, align 8
  br label %46

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i64*, i64** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlphy_softc*, %struct.mlphy_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mlphy_softc, %struct.mlphy_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load i64*, i64** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.mii_softc* @device_get_softc(i64 %35)
  store %struct.mii_softc* %36, %struct.mii_softc** %5, align 8
  br label %41

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %16

41:                                               ; preds = %30, %16
  %42 = load i64*, i64** %4, align 8
  %43 = load i32, i32* @M_TEMP, align 4
  %44 = call i32 @free(i64* %42, i32 %43)
  %45 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  store %struct.mii_softc* %45, %struct.mii_softc** %2, align 8
  br label %46

46:                                               ; preds = %41, %14
  %47 = load %struct.mii_softc*, %struct.mii_softc** %2, align 8
  ret %struct.mii_softc* %47
}

declare dso_local i64 @device_get_children(i32, i64**, i32*) #1

declare dso_local %struct.mii_softc* @device_get_softc(i64) #1

declare dso_local i32 @free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

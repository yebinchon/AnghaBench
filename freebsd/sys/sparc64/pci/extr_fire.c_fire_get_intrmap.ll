; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_get_intrmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_get_intrmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i32 }

@FO_MAX_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of range INO %d requested\0A\00", align 1
@FO_PCI_INT_MAP_BASE = common dso_local global i64 0, align 8
@FO_PCI_INT_CLR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fire_softc*, i32, i64*, i64*)* @fire_get_intrmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_get_intrmap(%struct.fire_softc* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fire_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.fire_softc* %0, %struct.fire_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @FO_MAX_INO, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.fire_softc*, %struct.fire_softc** %6, align 8
  %15 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %5, align 4
  br label %40

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 3
  store i32 %21, i32* %7, align 4
  %22 = load i64*, i64** %8, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* @FO_PCI_INT_MAP_BASE, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i64*, i64** %8, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i64*, i64** %9, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i64, i64* @FO_PCI_INT_CLR_BASE, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i64*, i64** %9, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %30
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %13
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

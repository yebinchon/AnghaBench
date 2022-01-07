; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_find_hwspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_find_hwspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_softc = type { i32, i32 }
%struct.bhnd_core_info = type { i32 }
%struct.bhndb_hw = type { i32* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_softc*, %struct.bhnd_core_info*, i32, %struct.bhndb_hw**)* @bhndb_find_hwspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_find_hwspec(%struct.bhndb_softc* %0, %struct.bhnd_core_info* %1, i32 %2, %struct.bhndb_hw** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhndb_softc*, align 8
  %7 = alloca %struct.bhnd_core_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bhndb_hw**, align 8
  %10 = alloca %struct.bhndb_hw*, align 8
  %11 = alloca %struct.bhndb_hw*, align 8
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %6, align 8
  store %struct.bhnd_core_info* %1, %struct.bhnd_core_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bhndb_hw** %3, %struct.bhndb_hw*** %9, align 8
  %12 = load %struct.bhndb_softc*, %struct.bhndb_softc** %6, align 8
  %13 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bhndb_softc*, %struct.bhndb_softc** %6, align 8
  %16 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.bhndb_hw* @BHNDB_BUS_GET_HARDWARE_TABLE(i32 %14, i32 %17)
  store %struct.bhndb_hw* %18, %struct.bhndb_hw** %11, align 8
  %19 = load %struct.bhndb_hw*, %struct.bhndb_hw** %11, align 8
  store %struct.bhndb_hw* %19, %struct.bhndb_hw** %10, align 8
  br label %20

20:                                               ; preds = %36, %4
  %21 = load %struct.bhndb_hw*, %struct.bhndb_hw** %10, align 8
  %22 = getelementptr inbounds %struct.bhndb_hw, %struct.bhndb_hw* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.bhndb_softc*, %struct.bhndb_softc** %6, align 8
  %27 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.bhndb_hw*, %struct.bhndb_hw** %10, align 8
  %30 = call i32 @bhndb_hw_matches(%struct.bhndb_softc* %26, %struct.bhnd_core_info* %27, i32 %28, %struct.bhndb_hw* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.bhndb_hw*, %struct.bhndb_hw** %10, align 8
  %35 = load %struct.bhndb_hw**, %struct.bhndb_hw*** %9, align 8
  store %struct.bhndb_hw* %34, %struct.bhndb_hw** %35, align 8
  store i32 0, i32* %5, align 4
  br label %41

36:                                               ; preds = %32
  %37 = load %struct.bhndb_hw*, %struct.bhndb_hw** %10, align 8
  %38 = getelementptr inbounds %struct.bhndb_hw, %struct.bhndb_hw* %37, i32 1
  store %struct.bhndb_hw* %38, %struct.bhndb_hw** %10, align 8
  br label %20

39:                                               ; preds = %20
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.bhndb_hw* @BHNDB_BUS_GET_HARDWARE_TABLE(i32, i32) #1

declare dso_local i32 @bhndb_hw_matches(%struct.bhndb_softc*, %struct.bhnd_core_info*, i32, %struct.bhndb_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_hw_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_hw_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_softc = type { i32, i32 }
%struct.bhnd_core_info = type { i32 }
%struct.bhndb_hw = type { i64, %struct.bhnd_core_match* }
%struct.bhnd_core_match = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhndb_softc*, %struct.bhnd_core_info*, i64, %struct.bhndb_hw*)* @bhndb_hw_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_hw_matches(%struct.bhndb_softc* %0, %struct.bhnd_core_info* %1, i64 %2, %struct.bhndb_hw* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhndb_softc*, align 8
  %7 = alloca %struct.bhnd_core_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bhndb_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bhnd_core_match*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bhnd_core_info*, align 8
  store %struct.bhndb_softc* %0, %struct.bhndb_softc** %6, align 8
  store %struct.bhnd_core_info* %1, %struct.bhnd_core_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.bhndb_hw* %3, %struct.bhndb_hw** %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %60, %4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.bhndb_hw*, %struct.bhndb_hw** %9, align 8
  %18 = getelementptr inbounds %struct.bhndb_hw, %struct.bhndb_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %15
  %22 = load %struct.bhndb_hw*, %struct.bhndb_hw** %9, align 8
  %23 = getelementptr inbounds %struct.bhndb_hw, %struct.bhndb_hw* %22, i32 0, i32 1
  %24 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.bhnd_core_match, %struct.bhnd_core_match* %24, i64 %25
  store %struct.bhnd_core_match* %26, %struct.bhnd_core_match** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %52, %21
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %7, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %32, i64 %33
  store %struct.bhnd_core_info* %34, %struct.bhnd_core_info** %14, align 8
  %35 = load %struct.bhndb_softc*, %struct.bhndb_softc** %6, align 8
  %36 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bhndb_softc*, %struct.bhndb_softc** %6, align 8
  %39 = getelementptr inbounds %struct.bhndb_softc, %struct.bhndb_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %14, align 8
  %42 = call i64 @BHNDB_IS_CORE_DISABLED(i32 %37, i32 %40, %struct.bhnd_core_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %52

45:                                               ; preds = %31
  %46 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %14, align 8
  %47 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %11, align 8
  %48 = call i32 @bhnd_core_matches(%struct.bhnd_core_info* %46, %struct.bhnd_core_match* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  br label %55

52:                                               ; preds = %50, %44
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %27

55:                                               ; preds = %51, %27
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %64

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %15

63:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @BHNDB_IS_CORE_DISABLED(i32, i32, %struct.bhnd_core_info*) #1

declare dso_local i32 @bhnd_core_matches(%struct.bhnd_core_info*, %struct.bhnd_core_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

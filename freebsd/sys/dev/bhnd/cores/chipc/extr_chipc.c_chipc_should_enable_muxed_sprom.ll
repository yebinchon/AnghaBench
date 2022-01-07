; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_should_enable_muxed_sprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_should_enable_muxed_sprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i64 }

@MUX_SPROM = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_softc*)* @chipc_should_enable_muxed_sprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_should_enable_muxed_sprom(%struct.chipc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chipc_softc*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %3, align 8
  %11 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %12 = load i32, i32* @MUX_SPROM, align 4
  %13 = call i32 @CHIPC_QUIRK(%struct.chipc_softc* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %81

16:                                               ; preds = %1
  %17 = call i32 @mtx_lock(i32* @Giant)
  %18 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @device_get_parent(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @bhnd_bus_find_hostb_device(i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @device_get_children(i64 %24, i64** %4, i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @mtx_unlock(i32* @Giant)
  store i32 0, i32* %2, align 4
  br label %81

29:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %72, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = load i64*, i64** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42, %34
  br label %72

53:                                               ; preds = %42
  %54 = load i64*, i64** %4, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @device_is_attached(i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %72

62:                                               ; preds = %53
  %63 = load i64*, i64** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @device_is_suspended(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %75

72:                                               ; preds = %70, %61, %52
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %30

75:                                               ; preds = %71, %30
  %76 = load i64*, i64** %4, align 8
  %77 = load i32, i32* @M_TEMP, align 4
  %78 = call i32 @free(i64* %76, i32 %77)
  %79 = call i32 @mtx_unlock(i32* @Giant)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %27, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @CHIPC_QUIRK(%struct.chipc_softc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i64 @bhnd_bus_find_hostb_device(i64) #1

declare dso_local i32 @device_get_children(i64, i64**, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_is_attached(i64) #1

declare dso_local i64 @device_is_suspended(i64) #1

declare dso_local i32 @free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

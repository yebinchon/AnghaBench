; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_validate_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_validate_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.ahc_initiator_tinfo = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ahc_syncrate = type { i32 }

@AHC_ULTRA2 = common dso_local global i32 0, align 4
@MAX_OFFSET_ULTRA2 = common dso_local global i64 0, align 8
@MAX_OFFSET_16BIT = common dso_local global i64 0, align 8
@MAX_OFFSET_8BIT = common dso_local global i64 0, align 8
@ROLE_TARGET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_validate_offset(%struct.ahc_softc* %0, %struct.ahc_initiator_tinfo* %1, %struct.ahc_syncrate* %2, i64* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ahc_softc*, align 8
  %8 = alloca %struct.ahc_initiator_tinfo*, align 8
  %9 = alloca %struct.ahc_syncrate*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %7, align 8
  store %struct.ahc_initiator_tinfo* %1, %struct.ahc_initiator_tinfo** %8, align 8
  store %struct.ahc_syncrate* %2, %struct.ahc_syncrate** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %15 = icmp eq %struct.ahc_syncrate* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %35

17:                                               ; preds = %6
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AHC_ULTRA2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @MAX_OFFSET_ULTRA2, align 8
  store i64 %25, i64* %13, align 8
  br label %34

26:                                               ; preds = %17
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @MAX_OFFSET_16BIT, align 8
  store i64 %30, i64* %13, align 8
  br label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @MAX_OFFSET_8BIT, align 8
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %24
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @MIN(i64 %37, i64 %38)
  %40 = load i64*, i64** %10, align 8
  store i64 %39, i64* %40, align 8
  %41 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %42 = icmp ne %struct.ahc_initiator_tinfo* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %35
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @ROLE_TARGET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %51 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @MIN(i64 %49, i64 %53)
  %55 = load i64*, i64** %10, align 8
  store i64 %54, i64* %55, align 8
  br label %65

56:                                               ; preds = %43
  %57 = load i64*, i64** %10, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %8, align 8
  %60 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @MIN(i64 %58, i64 %62)
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %47
  br label %66

66:                                               ; preds = %65, %35
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

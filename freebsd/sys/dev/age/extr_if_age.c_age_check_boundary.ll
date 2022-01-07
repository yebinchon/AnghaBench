; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_check_boundary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_check_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@AGE_TX_RING_SZ = common dso_local global i64 0, align 8
@AGE_RX_RING_SZ = common dso_local global i64 0, align 8
@AGE_RR_RING_SZ = common dso_local global i64 0, align 8
@AGE_CMB_BLOCK_SZ = common dso_local global i64 0, align 8
@AGE_SMB_BLOCK_SZ = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.age_softc*)* @age_check_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_check_boundary(%struct.age_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.age_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.age_softc* %0, %struct.age_softc** %3, align 8
  %9 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %10 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AGE_TX_RING_SZ, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %16 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AGE_RX_RING_SZ, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %4, align 8
  %21 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %22 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AGE_RR_RING_SZ, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %5, align 8
  %27 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %28 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AGE_CMB_BLOCK_SZ, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %7, align 8
  %33 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %34 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AGE_SMB_BLOCK_SZ, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @AGE_ADDR_HI(i64 %39)
  %41 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %42 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @AGE_ADDR_HI(i64 %44)
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %83, label %47

47:                                               ; preds = %1
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @AGE_ADDR_HI(i64 %48)
  %50 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %51 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @AGE_ADDR_HI(i64 %53)
  %55 = icmp ne i64 %49, %54
  br i1 %55, label %83, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @AGE_ADDR_HI(i64 %57)
  %59 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %60 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @AGE_ADDR_HI(i64 %62)
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %56
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @AGE_ADDR_HI(i64 %66)
  %68 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %69 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @AGE_ADDR_HI(i64 %71)
  %73 = icmp ne i64 %67, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @AGE_ADDR_HI(i64 %75)
  %77 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %78 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @AGE_ADDR_HI(i64 %80)
  %82 = icmp ne i64 %76, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %74, %65, %56, %47, %1
  %84 = load i32, i32* @EFBIG, align 4
  store i32 %84, i32* %2, align 4
  br label %112

85:                                               ; preds = %74
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @AGE_ADDR_HI(i64 %86)
  %88 = load i64, i64* %4, align 8
  %89 = call i64 @AGE_ADDR_HI(i64 %88)
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %109, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @AGE_ADDR_HI(i64 %92)
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @AGE_ADDR_HI(i64 %94)
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %6, align 8
  %99 = call i64 @AGE_ADDR_HI(i64 %98)
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @AGE_ADDR_HI(i64 %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %6, align 8
  %105 = call i64 @AGE_ADDR_HI(i64 %104)
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @AGE_ADDR_HI(i64 %106)
  %108 = icmp ne i64 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103, %97, %91, %85
  %110 = load i32, i32* @EFBIG, align 4
  store i32 %110, i32* %2, align 4
  br label %112

111:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %109, %83
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @AGE_ADDR_HI(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

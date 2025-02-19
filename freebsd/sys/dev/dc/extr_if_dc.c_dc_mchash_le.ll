; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_mchash_le.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_mchash_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DC_128BIT_HASH = common dso_local global i32 0, align 4
@DC_BITS_128 = common dso_local global i32 0, align 4
@DC_64BIT_HASH = common dso_local global i32 0, align 4
@DC_BITS_64 = common dso_local global i32 0, align 4
@DC_BITS_512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*, i32*)* @dc_mchash_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_mchash_le(%struct.dc_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %9 = call i32 @ether_crc32_le(i32* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DC_128BIT_HASH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DC_BITS_128, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %17, %20
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DC_64BIT_HASH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DC_BITS_64, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %30, %33
  store i32 %34, i32* %3, align 4
  br label %66

35:                                               ; preds = %22
  %36 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %37 = call i64 @DC_IS_XIRCOM(%struct.dc_softc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 384
  %42 = icmp eq i32 %41, 384
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 15
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 112
  %48 = mul nsw i32 %47, 3
  %49 = add nsw i32 %45, %48
  %50 = add nsw i32 %49, 224
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 31
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 1
  %56 = and i32 %55, 240
  %57 = mul nsw i32 %56, 3
  %58 = add nsw i32 %53, %57
  %59 = add nsw i32 %58, 192
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %35
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @DC_BITS_512, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %61, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %51, %43, %29, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ether_crc32_le(i32*, i32) #1

declare dso_local i64 @DC_IS_XIRCOM(%struct.dc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

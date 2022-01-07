; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_calib.c_r88e_iq_calib_write_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_calib.c_r88e_iq_calib_write_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_OFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@R92C_OFDM0_RXIQEXTANTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32*, i32*)* @r88e_iq_calib_write_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r88e_iq_calib_write_results(%struct.rtwn_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  br label %130

22:                                               ; preds = %16
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %24 = call i32 @R92C_OFDM0_TXIQIMBALANCE(i32 0)
  %25 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 22
  %28 = and i32 %27, 1023
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 512
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, -1024
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %22
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %39, %40
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 1023
  store i32 %43, i32* %7, align 4
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %45 = call i32 @R92C_OFDM0_TXIQIMBALANCE(i32 0)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %44, i32 %45, i32 1023, i32 %46)
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %49 = load i32, i32* @R92C_OFDM0_ECCATHRESHOLD, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %50, %51
  %53 = and i32 %52, 128
  %54 = shl i32 %53, 24
  %55 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %48, i32 %49, i32 -2147483648, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = and i64 %60, 512
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %38
  %64 = load i64, i64* %10, align 8
  %65 = or i64 %64, 4294966272
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %63, %38
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %67, %69
  %71 = ashr i64 %70, 8
  store i64 %71, i64* %11, align 8
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %73 = call i32 @R92C_OFDM0_TXAFE(i32 0)
  %74 = load i64, i64* %11, align 8
  %75 = and i64 %74, 960
  %76 = shl i64 %75, 22
  %77 = trunc i64 %76 to i32
  %78 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %72, i32 %73, i32 -268435456, i32 %77)
  %79 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %80 = call i32 @R92C_OFDM0_TXIQIMBALANCE(i32 0)
  %81 = load i64, i64* %11, align 8
  %82 = and i64 %81, 63
  %83 = shl i64 %82, 16
  %84 = trunc i64 %83 to i32
  %85 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %79, i32 %80, i32 4128768, i32 %84)
  %86 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %87 = load i32, i32* @R92C_OFDM0_ECCATHRESHOLD, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %88, %90
  %92 = and i64 %91, 128
  %93 = shl i64 %92, 22
  %94 = trunc i64 %93 to i32
  %95 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %86, i32 %87, i32 536870912, i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 255
  br i1 %99, label %105, label %100

100:                                              ; preds = %66
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 255
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %66
  br label %130

106:                                              ; preds = %100
  %107 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %108 = call i32 @R92C_OFDM0_RXIQIMBALANCE(i32 0)
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 1023
  %113 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %107, i32 %108, i32 1023, i32 %112)
  %114 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %115 = call i32 @R92C_OFDM0_RXIQIMBALANCE(i32 0)
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 63
  %120 = shl i32 %119, 10
  %121 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %114, i32 %115, i32 64512, i32 %120)
  %122 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %123 = load i32, i32* @R92C_OFDM0_RXIQEXTANTA, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 960
  %128 = shl i32 %127, 22
  %129 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %122, i32 %123, i32 -268435456, i32 %128)
  br label %130

130:                                              ; preds = %106, %105, %21
  ret void
}

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R92C_OFDM0_TXIQIMBALANCE(i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R92C_OFDM0_TXAFE(i32) #1

declare dso_local i32 @R92C_OFDM0_RXIQIMBALANCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

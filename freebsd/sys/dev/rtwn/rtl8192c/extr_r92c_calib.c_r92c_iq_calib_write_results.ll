; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_calib.c_r92c_iq_calib_write_results.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_calib.c_r92c_iq_calib_write_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_OFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@R92C_OFDM0_RXIQEXTANTA = common dso_local global i32 0, align 4
@R92C_OFDM0_AGCRSSITABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32*, i32*, i32)* @r92c_iq_calib_write_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92c_iq_calib_write_results(%struct.rtwn_softc* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %4
  br label %150

24:                                               ; preds = %18
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @R92C_OFDM0_TXIQIMBALANCE(i32 %26)
  %28 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %25, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 22
  %31 = and i32 %30, 1023
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 512
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, -1024
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %24
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %42, %43
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 1023
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @R92C_OFDM0_TXIQIMBALANCE(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %47, i32 %49, i32 1023, i32 %50)
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %53 = load i32, i32* @R92C_OFDM0_ECCATHRESHOLD, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = and i32 %56, 128
  %58 = shl i32 %57, 24
  %59 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %52, i32 %53, i32 -2147483648, i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = and i64 %64, 512
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %41
  %68 = load i64, i64* %12, align 8
  %69 = or i64 %68, 4294966272
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %67, %41
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %71, %73
  %75 = ashr i64 %74, 8
  store i64 %75, i64* %13, align 8
  %76 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @R92C_OFDM0_TXAFE(i32 %77)
  %79 = load i64, i64* %13, align 8
  %80 = and i64 %79, 960
  %81 = shl i64 %80, 22
  %82 = trunc i64 %81 to i32
  %83 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %76, i32 %78, i32 -268435456, i32 %82)
  %84 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @R92C_OFDM0_TXIQIMBALANCE(i32 %85)
  %87 = load i64, i64* %13, align 8
  %88 = and i64 %87, 63
  %89 = shl i64 %88, 16
  %90 = trunc i64 %89 to i32
  %91 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %84, i32 %86, i32 4128768, i32 %90)
  %92 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %93 = load i32, i32* @R92C_OFDM0_ECCATHRESHOLD, align 4
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %94, %96
  %98 = and i64 %97, 128
  %99 = shl i64 %98, 22
  %100 = trunc i64 %99 to i32
  %101 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %92, i32 %93, i32 536870912, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 255
  br i1 %105, label %111, label %106

106:                                              ; preds = %70
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 255
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %70
  br label %150

112:                                              ; preds = %106
  %113 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @R92C_OFDM0_RXIQIMBALANCE(i32 %114)
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 1023
  %120 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %113, i32 %115, i32 1023, i32 %119)
  %121 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @R92C_OFDM0_RXIQIMBALANCE(i32 %122)
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 63
  %128 = shl i32 %127, 10
  %129 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %121, i32 %123, i32 64512, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %112
  %133 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %134 = load i32, i32* @R92C_OFDM0_RXIQEXTANTA, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 960
  %139 = shl i32 %138, 22
  %140 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %133, i32 %134, i32 -268435456, i32 %139)
  br label %150

141:                                              ; preds = %112
  %142 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %143 = load i32, i32* @R92C_OFDM0_AGCRSSITABLE, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 960
  %148 = shl i32 %147, 6
  %149 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %142, i32 %143, i32 61440, i32 %148)
  br label %150

150:                                              ; preds = %23, %111, %141, %132
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

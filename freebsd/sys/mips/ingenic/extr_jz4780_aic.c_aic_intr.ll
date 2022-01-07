; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.sc_chinfo*, %struct.aic_softc* }
%struct.sc_chinfo = type { i32, i64, i32 }
%struct.aic_softc = type { i32, i32*, %struct.xdma_request }
%struct.xdma_request = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @aic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic_intr(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sc_pcminfo*, align 8
  %6 = alloca %struct.xdma_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.aic_softc*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.sc_pcminfo*
  store %struct.sc_pcminfo* %12, %struct.sc_pcminfo** %5, align 8
  %13 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %14 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %13, i32 0, i32 1
  %15 = load %struct.aic_softc*, %struct.aic_softc** %14, align 8
  store %struct.aic_softc* %15, %struct.aic_softc** %9, align 8
  %16 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %17 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %16, i32 0, i32 0
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %17, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i64 0
  store %struct.sc_chinfo* %19, %struct.sc_chinfo** %8, align 8
  %20 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %21 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %20, i32 0, i32 2
  store %struct.xdma_request* %21, %struct.xdma_request** %6, align 8
  %22 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %23 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %26 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sndbuf_getsize(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.xdma_request*, %struct.xdma_request** %6, align 8
  %30 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %33 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  %38 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %39 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %46 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %2
  %50 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %51 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %56 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @chn_intr(i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  ret i32 0
}

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @chn_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

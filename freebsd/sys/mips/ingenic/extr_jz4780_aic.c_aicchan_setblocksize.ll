; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicchan_setblocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicchan_setblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_pcminfo = type { %struct.aic_softc* }
%struct.aic_softc = type { i32 }
%struct.sc_chinfo = type { i32, %struct.sc_pcminfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @aicchan_setblocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aicchan_setblocksize(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_pcminfo*, align 8
  %8 = alloca %struct.sc_chinfo*, align 8
  %9 = alloca %struct.aic_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %11, %struct.sc_chinfo** %8, align 8
  %12 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %12, i32 0, i32 1
  %14 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %13, align 8
  store %struct.sc_pcminfo* %14, %struct.sc_pcminfo** %7, align 8
  %15 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %7, align 8
  %16 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %15, i32 0, i32 0
  %17 = load %struct.aic_softc*, %struct.aic_softc** %16, align 8
  store %struct.aic_softc* %17, %struct.aic_softc** %9, align 8
  %18 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %19 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.aic_softc*, %struct.aic_softc** %9, align 8
  %22 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sndbuf_resize(i32 %20, i32 %25, i32 %26)
  %28 = load %struct.sc_chinfo*, %struct.sc_chinfo** %8, align 8
  %29 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sndbuf_getblksz(i32 %30)
  ret i32 %31
}

declare dso_local i32 @sndbuf_resize(i32, i32, i32) #1

declare dso_local i32 @sndbuf_getblksz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

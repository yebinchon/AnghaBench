; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udav_softc = type { i32 }

@UDAV_EPAR = common dso_local global i32 0, align 4
@UDAV_EPAR_PHY_ADR0 = common dso_local global i32 0, align 4
@UDAV_EPAR_EROA_MASK = common dso_local global i32 0, align 4
@UDAV_EPDRL = common dso_local global i32 0, align 4
@UDAV_EPCR = common dso_local global i32 0, align 4
@UDAV_EPCR_EPOS = common dso_local global i32 0, align 4
@UDAV_EPCR_ERPRW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @udav_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udav_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udav_softc*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.udav_softc* @device_get_softc(i32 %13)
  store %struct.udav_softc* %14, %struct.udav_softc** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load %struct.udav_softc*, %struct.udav_softc** %10, align 8
  %20 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_owned(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.udav_softc*, %struct.udav_softc** %10, align 8
  %26 = call i32 @UDAV_LOCK(%struct.udav_softc* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.udav_softc*, %struct.udav_softc** %10, align 8
  %29 = load i32, i32* @UDAV_EPAR, align 4
  %30 = load i32, i32* @UDAV_EPAR_PHY_ADR0, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @UDAV_EPAR_EROA_MASK, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %30, %33
  %35 = call i32 @udav_csr_write1(%struct.udav_softc* %28, i32 %29, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.udav_softc*, %struct.udav_softc** %10, align 8
  %44 = load i32, i32* @UDAV_EPDRL, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %46 = call i32 @udav_csr_write(%struct.udav_softc* %43, i32 %44, i32* %45, i32 2)
  %47 = load %struct.udav_softc*, %struct.udav_softc** %10, align 8
  %48 = load i32, i32* @UDAV_EPCR, align 4
  %49 = load i32, i32* @UDAV_EPCR_EPOS, align 4
  %50 = load i32, i32* @UDAV_EPCR_ERPRW, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @udav_csr_write1(%struct.udav_softc* %47, i32 %48, i32 %51)
  %53 = load %struct.udav_softc*, %struct.udav_softc** %10, align 8
  %54 = load i32, i32* @UDAV_EPCR, align 4
  %55 = load i32, i32* @UDAV_EPCR_ERPRW, align 4
  %56 = call i32 @UDAV_CLRBIT(%struct.udav_softc* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %27
  %60 = load %struct.udav_softc*, %struct.udav_softc** %10, align 8
  %61 = call i32 @UDAV_UNLOCK(%struct.udav_softc* %60)
  br label %62

62:                                               ; preds = %59, %27
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.udav_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @UDAV_LOCK(%struct.udav_softc*) #1

declare dso_local i32 @udav_csr_write1(%struct.udav_softc*, i32, i32) #1

declare dso_local i32 @udav_csr_write(%struct.udav_softc*, i32, i32*, i32) #1

declare dso_local i32 @UDAV_CLRBIT(%struct.udav_softc*, i32, i32) #1

declare dso_local i32 @UDAV_UNLOCK(%struct.udav_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

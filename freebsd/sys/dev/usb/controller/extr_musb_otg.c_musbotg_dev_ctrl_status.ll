; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32 }
%struct.musbotg_softc = type { i32, i32, i64 }

@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_DATAEND = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_dev_ctrl_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_dev_ctrl_status(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.musbotg_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %6 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %7 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %8)
  store %struct.musbotg_softc* %9, %struct.musbotg_softc** %4, align 8
  %10 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %11 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %12 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %10, i32 %11, i32 0)
  %13 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %14 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %19 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @MUSB2_MASK_CSR0L_DATAEND, align 4
  %21 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %22 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %26 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %27 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %28 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %25, i32 %26, i32 %29)
  %31 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %32 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %17, %1
  %34 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %35 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %36 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MUSB2_MASK_CSR0L_DATAEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %59

44:                                               ; preds = %33
  %45 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %46 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 255
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %51 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %52 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @musbotg_set_address(%struct.musbotg_softc* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.musbotg_softc*, %struct.musbotg_softc** %4, align 8
  %57 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %58 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %56, %struct.musbotg_td* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %43
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @musbotg_set_address(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

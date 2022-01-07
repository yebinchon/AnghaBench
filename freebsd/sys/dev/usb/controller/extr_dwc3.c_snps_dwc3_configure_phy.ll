; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_configure_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc3.c_snps_dwc3_configure_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snps_dwc3_softc = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"phy_type\00", align 1
@DWC3_GUSB2PHYCFG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"utmi_wide\00", align 1
@DWC3_GUSB2PHYCFG0_PHYIF = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG0_USBTRDTIM_16BITS = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG0_USBTRDTIM_8BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snps_dwc3_softc*)* @snps_dwc3_configure_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snps_dwc3_configure_phy(%struct.snps_dwc3_softc* %0) #0 {
  %2 = alloca %struct.snps_dwc3_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snps_dwc3_softc* %0, %struct.snps_dwc3_softc** %2, align 8
  store i8* null, i8** %3, align 8
  %6 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %7 = getelementptr inbounds %struct.snps_dwc3_softc, %struct.snps_dwc3_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @OF_getprop_alloc(i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %15 = load i32, i32* @DWC3_GUSB2PHYCFG0, align 4
  %16 = call i32 @DWC3_READ(%struct.snps_dwc3_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load i32, i32* @DWC3_GUSB2PHYCFG0_PHYIF, align 4
  %22 = call i32 @DWC3_GUSB2PHYCFG0_USBTRDTIM(i32 15)
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @DWC3_GUSB2PHYCFG0_PHYIF, align 4
  %28 = load i32, i32* @DWC3_GUSB2PHYCFG0_USBTRDTIM_16BITS, align 4
  %29 = call i32 @DWC3_GUSB2PHYCFG0_USBTRDTIM(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %13
  %34 = load i32, i32* @DWC3_GUSB2PHYCFG0_PHYIF, align 4
  %35 = call i32 @DWC3_GUSB2PHYCFG0_USBTRDTIM(i32 15)
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @DWC3_GUSB2PHYCFG0_PHYIF, align 4
  %41 = load i32, i32* @DWC3_GUSB2PHYCFG0_USBTRDTIM_8BITS, align 4
  %42 = call i32 @DWC3_GUSB2PHYCFG0_USBTRDTIM(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %33, %20
  %47 = load %struct.snps_dwc3_softc*, %struct.snps_dwc3_softc** %2, align 8
  %48 = load i32, i32* @DWC3_GUSB2PHYCFG0, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @DWC3_WRITE(%struct.snps_dwc3_softc* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %12
  ret void
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @DWC3_READ(%struct.snps_dwc3_softc*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG0_USBTRDTIM(i32) #1

declare dso_local i32 @DWC3_WRITE(%struct.snps_dwc3_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

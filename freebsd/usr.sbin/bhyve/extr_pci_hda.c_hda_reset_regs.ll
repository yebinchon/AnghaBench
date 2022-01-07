; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_reset_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_reset_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Reset the HDA controller registers ...\0A\00", align 1
@HDAC_GCAP = common dso_local global i64 0, align 8
@HDAC_GCAP_64OK = common dso_local global i32 0, align 4
@HDA_ISS_NO = common dso_local global i32 0, align 4
@HDAC_GCAP_ISS_SHIFT = common dso_local global i32 0, align 4
@HDA_OSS_NO = common dso_local global i32 0, align 4
@HDAC_GCAP_OSS_SHIFT = common dso_local global i32 0, align 4
@HDAC_VMAJ = common dso_local global i64 0, align 8
@HDAC_OUTPAY = common dso_local global i64 0, align 8
@HDAC_INPAY = common dso_local global i64 0, align 8
@HDAC_CORBSIZE = common dso_local global i64 0, align 8
@HDAC_CORBSIZE_CORBSZCAP_256 = common dso_local global i32 0, align 4
@HDAC_CORBSIZE_CORBSIZE_256 = common dso_local global i32 0, align 4
@HDAC_RIRBSIZE = common dso_local global i64 0, align 8
@HDAC_RIRBSIZE_RIRBSZCAP_256 = common dso_local global i32 0, align 4
@HDAC_RIRBSIZE_RIRBSIZE_256 = common dso_local global i32 0, align 4
@HDA_IOSS_NO = common dso_local global i64 0, align 8
@HDAC_SDFIFOS = common dso_local global i64 0, align 8
@HDA_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_softc*)* @hda_reset_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_reset_regs(%struct.hda_softc* %0) #0 {
  %2 = alloca %struct.hda_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.hda_softc* %0, %struct.hda_softc** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = call i32 @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memset(i32 %8, i32 0, i32 4)
  %10 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %11 = load i64, i64* @HDAC_GCAP, align 8
  %12 = load i32, i32* @HDAC_GCAP_64OK, align 4
  %13 = load i32, i32* @HDA_ISS_NO, align 4
  %14 = load i32, i32* @HDAC_GCAP_ISS_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @HDA_OSS_NO, align 4
  %18 = load i32, i32* @HDAC_GCAP_OSS_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %10, i64 %11, i32 %20)
  %22 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %23 = load i64, i64* @HDAC_VMAJ, align 8
  %24 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %22, i64 %23, i32 1)
  %25 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %26 = load i64, i64* @HDAC_OUTPAY, align 8
  %27 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %25, i64 %26, i32 60)
  %28 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %29 = load i64, i64* @HDAC_INPAY, align 8
  %30 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %28, i64 %29, i32 29)
  %31 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %32 = load i64, i64* @HDAC_CORBSIZE, align 8
  %33 = load i32, i32* @HDAC_CORBSIZE_CORBSZCAP_256, align 4
  %34 = load i32, i32* @HDAC_CORBSIZE_CORBSIZE_256, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %31, i64 %32, i32 %35)
  %37 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %38 = load i64, i64* @HDAC_RIRBSIZE, align 8
  %39 = load i32, i32* @HDAC_RIRBSIZE_RIRBSZCAP_256, align 4
  %40 = load i32, i32* @HDAC_RIRBSIZE_RIRBSIZE_256, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %37, i64 %38, i32 %41)
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %56, %1
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @HDA_IOSS_NO, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @hda_get_offset_stream(i64 %48)
  store i64 %49, i64* %3, align 8
  %50 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @HDAC_SDFIFOS, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @HDA_FIFO_SIZE, align 4
  %55 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %50, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %4, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %43

59:                                               ; preds = %43
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hda_set_reg_by_offset(%struct.hda_softc*, i64, i32) #1

declare dso_local i64 @hda_get_offset_stream(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

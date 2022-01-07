; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_pci_test_register_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_pci.c_ahd_pci_test_register_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i64 0, align 8
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@CHIPRST = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@TARGPCISTAT = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i64 0, align 8
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRPCIINT = common dso_local global i32 0, align 4
@SEQCTL0 = common dso_local global i32 0, align 4
@PERRORDIS = common dso_local global i32 0, align 4
@SRAM_BASE = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@PCIINT = common dso_local global i32 0, align 4
@STA = common dso_local global i32 0, align 4
@FAILDIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_pci_test_register_access(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %9 = load i32, i32* @EIO, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @PCIR_COMMAND, align 8
  %14 = call i32 @aic_pci_read_config(i32 %12, i64 %13, i32 2)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @PCIR_COMMAND, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @aic_pci_write_config(i32 %17, i64 %18, i32 %22, i32 2)
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = load i32, i32* @HCNTRL, align 4
  %26 = call i32 @ahd_inb(%struct.ahd_softc* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %113

30:                                               ; preds = %1
  %31 = load i32, i32* @CHIPRST, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %36 = load i32, i32* @HCNTRL, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PAUSE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ahd_outb(%struct.ahd_softc* %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %45, %30
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %43 = call i64 @ahd_is_paused(%struct.ahd_softc* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %41

46:                                               ; preds = %41
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %48 = load i32, i32* @AHD_MODE_CFG, align 4
  %49 = load i32, i32* @AHD_MODE_CFG, align 4
  %50 = call i32 @ahd_set_modes(%struct.ahd_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %52 = load i32, i32* @TARGPCISTAT, align 4
  %53 = call i32 @ahd_inb(%struct.ahd_softc* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %55 = load i32, i32* @TARGPCISTAT, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ahd_outb(%struct.ahd_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @PCIR_STATUS, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @aic_pci_read_config(i32 %60, i64 %62, i32 1)
  store i32 %63, i32* %5, align 4
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @PCIR_STATUS, align 8
  %68 = add nsw i64 %67, 1
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @aic_pci_write_config(i32 %66, i64 %68, i32 %69, i32 1)
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %72 = load i32, i32* @AHD_MODE_SCSI, align 4
  %73 = load i32, i32* @AHD_MODE_SCSI, align 4
  %74 = call i32 @ahd_set_modes(%struct.ahd_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %76 = load i32, i32* @CLRINT, align 4
  %77 = load i32, i32* @CLRPCIINT, align 4
  %78 = call i32 @ahd_outb(%struct.ahd_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %80 = load i32, i32* @SEQCTL0, align 4
  %81 = load i32, i32* @PERRORDIS, align 4
  %82 = call i32 @ahd_outb(%struct.ahd_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %84 = load i32, i32* @SRAM_BASE, align 4
  %85 = call i32 @ahd_outl(%struct.ahd_softc* %83, i32 %84, i32 1520784810)
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %87 = load i32, i32* @SRAM_BASE, align 4
  %88 = call i32 @ahd_inl(%struct.ahd_softc* %86, i32 %87)
  %89 = icmp ne i32 %88, 1520784810
  br i1 %89, label %90, label %91

90:                                               ; preds = %46
  br label %113

91:                                               ; preds = %46
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %93 = load i32, i32* @INTSTAT, align 4
  %94 = call i32 @ahd_inb(%struct.ahd_softc* %92, i32 %93)
  %95 = load i32, i32* @PCIINT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %100 = load i32, i32* @AHD_MODE_CFG, align 4
  %101 = load i32, i32* @AHD_MODE_CFG, align 4
  %102 = call i32 @ahd_set_modes(%struct.ahd_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %104 = load i32, i32* @TARGPCISTAT, align 4
  %105 = call i32 @ahd_inb(%struct.ahd_softc* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @STA, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %113

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %91
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %110, %90, %29
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %115 = load i32, i32* @INTSTAT, align 4
  %116 = call i32 @ahd_inb(%struct.ahd_softc* %114, i32 %115)
  %117 = load i32, i32* @PCIINT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %113
  %121 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %122 = load i32, i32* @AHD_MODE_CFG, align 4
  %123 = load i32, i32* @AHD_MODE_CFG, align 4
  %124 = call i32 @ahd_set_modes(%struct.ahd_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %126 = load i32, i32* @TARGPCISTAT, align 4
  %127 = call i32 @ahd_inb(%struct.ahd_softc* %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %129 = load i32, i32* @TARGPCISTAT, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @ahd_outb(%struct.ahd_softc* %128, i32 %129, i32 %130)
  %132 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %133 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* @PCIR_STATUS, align 8
  %136 = add nsw i64 %135, 1
  %137 = call i32 @aic_pci_read_config(i32 %134, i64 %136, i32 1)
  store i32 %137, i32* %5, align 4
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* @PCIR_STATUS, align 8
  %142 = add nsw i64 %141, 1
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @aic_pci_write_config(i32 %140, i64 %142, i32 %143, i32 1)
  %145 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %146 = load i32, i32* @CLRINT, align 4
  %147 = load i32, i32* @CLRPCIINT, align 4
  %148 = call i32 @ahd_outb(%struct.ahd_softc* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %120, %113
  %150 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %151 = load i32, i32* @SEQCTL0, align 4
  %152 = load i32, i32* @PERRORDIS, align 4
  %153 = load i32, i32* @FAILDIS, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @ahd_outb(%struct.ahd_softc* %150, i32 %151, i32 %154)
  %156 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %157 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i64, i64* @PCIR_COMMAND, align 8
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @aic_pci_write_config(i32 %158, i64 %159, i32 %160, i32 2)
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @aic_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @aic_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inl(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

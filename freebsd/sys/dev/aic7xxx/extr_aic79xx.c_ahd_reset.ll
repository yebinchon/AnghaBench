; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i64 0, align 8
@AHD_PCIX_CHIPRST_BUG = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@CHIPRST = common dso_local global i32 0, align 4
@CHIPRSTACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s: WARNING - Failed chip reset!  Trying to initialize anyway.\0A\00", align 1
@PCIR_STATUS = common dso_local global i64 0, align 8
@MODE_PTR = common dso_local global i32 0, align 4
@STPWEN = common dso_local global i32 0, align 4
@AHD_WIDE = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@SELWIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_reset(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = call i32 @ahd_pause(%struct.ahd_softc* %9)
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %12 = call i32 @ahd_update_modes(%struct.ahd_softc* %11)
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = load i32, i32* @AHD_MODE_SCSI, align 4
  %15 = load i32, i32* @AHD_MODE_SCSI, align 4
  %16 = call i32 @ahd_set_modes(%struct.ahd_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = load i32, i32* @SXFRCTL1, align 4
  %19 = call i32 @ahd_inb(%struct.ahd_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @PCIR_COMMAND, align 8
  %24 = call i32 @aic_pci_read_config(i32 %22, i64 %23, i32 2)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AHD_PCIX_CHIPRST_BUG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %34 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @PCIR_COMMAND, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @aic_pci_write_config(i32 %40, i64 %41, i32 %42, i32 2)
  br label %44

44:                                               ; preds = %31, %2
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %46 = load i32, i32* @HCNTRL, align 4
  %47 = load i32, i32* @CHIPRST, align 4
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = call i32 @ahd_outb(%struct.ahd_softc* %45, i32 %46, i32 %51)
  store i32 1000, i32* %6, align 4
  br label %53

53:                                               ; preds = %67, %44
  %54 = call i32 @aic_delay(i32 1000)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = load i32, i32* @HCNTRL, align 4
  %62 = call i32 @ahd_inb(%struct.ahd_softc* %60, i32 %61)
  %63 = load i32, i32* @CHIPRSTACK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %59, %55
  %68 = phi i1 [ false, %55 ], [ %66, %59 ]
  br i1 %68, label %53, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %74 = call i8* @ahd_name(%struct.ahd_softc* %73)
  %75 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %74)
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %77 = call i32 @AHD_FATAL_ERROR(%struct.ahd_softc* %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %80 = load i32, i32* @HCNTRL, align 4
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ahd_outb(%struct.ahd_softc* %79, i32 %80, i32 %83)
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AHD_PCIX_CHIPRST_BUG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %78
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* @PCIR_STATUS, align 8
  %96 = add nsw i64 %95, 1
  %97 = call i32 @aic_pci_write_config(i32 %94, i64 %96, i32 255, i32 1)
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* @PCIR_COMMAND, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @aic_pci_write_config(i32 %100, i64 %101, i32 %102, i32 2)
  br label %104

104:                                              ; preds = %91, %78
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %106 = load i32, i32* @AHD_MODE_SCSI, align 4
  %107 = load i32, i32* @AHD_MODE_SCSI, align 4
  %108 = call i32 @ahd_known_modes(%struct.ahd_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %110 = load i32, i32* @MODE_PTR, align 4
  %111 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %112 = load i32, i32* @AHD_MODE_SCSI, align 4
  %113 = load i32, i32* @AHD_MODE_SCSI, align 4
  %114 = call i32 @ahd_build_mode_state(%struct.ahd_softc* %111, i32 %112, i32 %113)
  %115 = call i32 @ahd_outb(%struct.ahd_softc* %109, i32 %110, i32 %114)
  %116 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %117 = load i32, i32* @SXFRCTL1, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @STPWEN, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @ahd_outb(%struct.ahd_softc* %116, i32 %117, i32 %120)
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %123 = load i32, i32* @SXFRCTL1, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @ahd_outb(%struct.ahd_softc* %122, i32 %123, i32 %124)
  %126 = load i32, i32* @AHD_WIDE, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %133 = load i32, i32* @SBLKCTL, align 4
  %134 = call i32 @ahd_inb(%struct.ahd_softc* %132, i32 %133)
  %135 = load i32, i32* @SELWIDE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %104
  %139 = load i32, i32* @AHD_WIDE, align 4
  %140 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %141 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %104
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %149 = call i32 @ahd_chip_init(%struct.ahd_softc* %148)
  br label %150

150:                                              ; preds = %147, %144
  ret i32 0
}

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @aic_pci_read_config(i32, i64, i32) #1

declare dso_local i32 @aic_pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @aic_delay(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_FATAL_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_known_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_build_mode_state(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_chip_init(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

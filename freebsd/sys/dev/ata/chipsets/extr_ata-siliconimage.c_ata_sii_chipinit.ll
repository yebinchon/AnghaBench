; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ATA_SII0680 = common dso_local global i32 0, align 4
@SII_SETCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s could not set ATA133 clock\0A\00", align 1
@SII_4CH = common dso_local global i32 0, align 4
@ata_sii_ch_attach = common dso_local global i32 0, align 4
@ata_sii_ch_detach = common dso_local global i32 0, align 4
@ATA_SA150 = common dso_local global i32 0, align 4
@ata_sii_reset = common dso_local global i32 0, align 4
@ata_sata_setmode = common dso_local global i32 0, align 4
@ata_sata_getrev = common dso_local global i32 0, align 4
@ata_sii_setmode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"HW has secondary channel disabled\0A\00", align 1
@ata_cmd_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@ata_cmd_setmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sii_chipinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ata_pci_controller* @device_get_softc(i32 %5)
  store %struct.ata_pci_controller* %6, %struct.ata_pci_controller** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ata_generic_intr, align 4
  %9 = call i64 @ata_setup_interrupt(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %172

13:                                               ; preds = %1
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %149 [
    i32 128, label %19
  ]

19:                                               ; preds = %13
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %22 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = call i32 @PCIR_BAR(i32 5)
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 8
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i32 @bus_alloc_resource_any(i32 %26, i32 %29, i32* %31, i32 %32)
  %34 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %35 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = icmp ne i32 %33, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %19
  %38 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %39 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %38, i32 0, i32 6
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATA_SII0680, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @pci_read_config(i32 %46, i32 138, i32 1)
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %37
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %172

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %55 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %54, i32 0, i32 6
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SII_SETCLK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %53
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @pci_read_config(i32 %63, i32 138, i32 1)
  %65 = and i32 %64, 48
  %66 = icmp ne i32 %65, 16
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pci_read_config(i32 %69, i32 138, i32 1)
  %71 = and i32 %70, 207
  %72 = or i32 %71, 16
  %73 = call i32 @pci_write_config(i32 %68, i32 138, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @pci_read_config(i32 %75, i32 138, i32 1)
  %77 = and i32 %76, 48
  %78 = icmp ne i32 %77, 16
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %82 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %81, i32 0, i32 6
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79, %74
  br label %88

88:                                               ; preds = %87, %53
  %89 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %90 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %89, i32 0, i32 6
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SII_4CH, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %99 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ATA_OUTL(i32 %100, i32 512, i32 2)
  %102 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %103 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %102, i32 0, i32 0
  store i32 4, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %88
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @pci_read_config(i32 %106, i32 72, i32 4)
  %108 = and i32 %107, -62914561
  %109 = call i32 @pci_write_config(i32 %105, i32 72, i32 %108, i32 4)
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @pci_read_config(i32 %111, i32 138, i32 1)
  %113 = and i32 %112, 63
  %114 = call i32 @pci_write_config(i32 %110, i32 138, i32 %113, i32 1)
  %115 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %116 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %104
  %120 = load i32, i32* @ata_sii_ch_attach, align 4
  %121 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %122 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @ata_sii_ch_detach, align 4
  %124 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %125 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %119, %104
  %127 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %128 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %127, i32 0, i32 6
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ATA_SA150, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %126
  %135 = load i32, i32* @ata_sii_reset, align 4
  %136 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %137 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @ata_sata_setmode, align 4
  %139 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %140 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @ata_sata_getrev, align 4
  %142 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %143 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  br label %148

144:                                              ; preds = %126
  %145 = load i32, i32* @ata_sii_setmode, align 4
  %146 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %147 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %134
  br label %171

149:                                              ; preds = %13
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @pci_read_config(i32 %150, i32 81, i32 1)
  %152 = and i32 %151, 8
  %153 = icmp ne i32 %152, 8
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %157 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %158 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %154, %149
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @pci_write_config(i32 %160, i32 113, i32 1, i32 1)
  %162 = load i32, i32* @ata_cmd_ch_attach, align 4
  %163 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %164 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @ata_pci_ch_detach, align 4
  %166 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %167 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @ata_cmd_setmode, align 4
  %169 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %170 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %159, %148
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %50, %11
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

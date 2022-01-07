; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i8*, i32, i8*, i32, %struct.TYPE_2__*, %struct.ali_sata_resources*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ali_sata_resources = type { i32** }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ata_ali_sata_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i8* null, align 8
@ata_sata_setmode = common dso_local global i8* null, align 8
@ata_sata_getrev = common dso_local global i32 0, align 4
@M_ATAPCI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate BAR %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"using PIO transfers above 137GB as workaround for 48bit DMA access bug, expect reduced performance\0A\00", align 1
@ata_ali_ch_attach = common dso_local global i32 0, align 4
@ata_ali_reset = common dso_local global i32 0, align 4
@ata_ali_setmode = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_ali_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ali_chipinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ali_sata_resources*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ata_pci_controller* @device_get_softc(i32 %8)
  store %struct.ata_pci_controller* %9, %struct.ata_pci_controller** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ata_generic_intr, align 4
  %12 = call i64 @ata_setup_interrupt(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %171

16:                                               ; preds = %1
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %170 [
    i32 128, label %22
    i32 130, label %107
    i32 129, label %161
  ]

22:                                               ; preds = %16
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ata_ali_sata_ch_attach, align 4
  %31 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %32 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @ata_pci_ch_detach, align 8
  %34 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %35 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @ata_sata_setmode, align 8
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @ata_sata_getrev, align 4
  %40 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @M_ATAPCI, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = call %struct.ali_sata_resources* @malloc(i32 8, i32 %42, i32 %43)
  store %struct.ali_sata_resources* %44, %struct.ali_sata_resources** %5, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %100, %22
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %103

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @PCIR_BAR(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_IOPORT, align 4
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i32* @bus_alloc_resource_any(i32 %51, i32 %52, i32* %7, i32 %53)
  %55 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %5, align 8
  %56 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %54, i32** %60, align 8
  %61 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %5, align 8
  %62 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %99

69:                                               ; preds = %48
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %91, %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @SYS_RES_IOPORT, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @PCIR_BAR(i32 %81)
  %83 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %5, align 8
  %84 = getelementptr inbounds %struct.ali_sata_resources, %struct.ali_sata_resources* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_release_resource(i32 %79, i32 %80, i32 %82, i32* %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %6, align 4
  br label %75

94:                                               ; preds = %75
  %95 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %5, align 8
  %96 = load i32, i32* @M_ATAPCI, align 4
  %97 = call i32 @free(%struct.ali_sata_resources* %95, i32 %96)
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %2, align 4
  br label %171

99:                                               ; preds = %48
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %45

103:                                              ; preds = %45
  %104 = load %struct.ali_sata_resources*, %struct.ali_sata_resources** %5, align 8
  %105 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %106 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %105, i32 0, i32 5
  store %struct.ali_sata_resources* %104, %struct.ali_sata_resources** %106, align 8
  br label %170

107:                                              ; preds = %16
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @pci_read_config(i32 %109, i32 74, i32 1)
  %111 = or i32 %110, 32
  %112 = call i32 @pci_write_config(i32 %108, i32 74, i32 %111, i32 1)
  %113 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %114 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %113, i32 0, i32 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 199
  br i1 %118, label %119, label %125

119:                                              ; preds = %107
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @pci_read_config(i32 %121, i32 75, i32 1)
  %123 = or i32 %122, 9
  %124 = call i32 @pci_write_config(i32 %120, i32 75, i32 %123, i32 1)
  br label %125

125:                                              ; preds = %119, %107
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @pci_read_config(i32 %127, i32 83, i32 1)
  %129 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %130 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %129, i32 0, i32 4
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 199
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 3, i32 1
  %137 = or i32 %128, %136
  %138 = call i32 @pci_write_config(i32 %126, i32 83, i32 %137, i32 1)
  %139 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %140 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %139, i32 0, i32 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp sle i32 %143, 196
  br i1 %144, label %145, label %148

145:                                              ; preds = %125
  %146 = load i32, i32* %3, align 4
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %146, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %125
  %149 = load i32, i32* @ata_ali_ch_attach, align 4
  %150 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %151 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load i8*, i8** @ata_pci_ch_detach, align 8
  %153 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %154 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* @ata_ali_reset, align 4
  %156 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %157 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load i8*, i8** @ata_ali_setmode, align 8
  %159 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %160 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %170

161:                                              ; preds = %16
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @pci_read_config(i32 %163, i32 83, i32 1)
  %165 = or i32 %164, 3
  %166 = call i32 @pci_write_config(i32 %162, i32 83, i32 %165, i32 1)
  %167 = load i8*, i8** @ata_ali_setmode, align 8
  %168 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %169 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %16, %161, %148, %103
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %94, %14
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local %struct.ali_sata_resources* @malloc(i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.ali_sata_resources*, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

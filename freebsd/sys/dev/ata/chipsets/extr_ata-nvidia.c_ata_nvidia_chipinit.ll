; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-nvidia.c_ata_nvidia_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-nvidia.c_ata_nvidia_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i8*, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NVAHCI = common dso_local global i32 0, align 4
@ata_nvidia_ch_attach_dumb = common dso_local global i32 0, align 4
@ata_sata_setmode = common dso_local global i8* null, align 8
@ATA_SA150 = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@NV4 = common dso_local global i32 0, align 4
@ata_nvidia_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@ata_nvidia_reset = common dso_local global i32 0, align 4
@NVQ = common dso_local global i32 0, align 4
@ata_sata_getrev = common dso_local global i32 0, align 4
@ata_nvidia_setmode = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_nvidia_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_nvidia_chipinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ata_pci_controller* @device_get_softc(i32 %6)
  store %struct.ata_pci_controller* %7, %struct.ata_pci_controller** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ata_generic_intr, align 4
  %10 = call i64 @ata_setup_interrupt(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %153

14:                                               ; preds = %1
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NVAHCI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i32, i32* @ata_nvidia_ch_attach_dumb, align 4
  %25 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @ata_sata_setmode, align 8
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %152

30:                                               ; preds = %14
  %31 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %32 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATA_SA150, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %142

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @PCIR_BAR(i32 5)
  %41 = call i32 @pci_read_config(i32 %39, i32 %40, i32 1)
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @SYS_RES_IOPORT, align 4
  %46 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %47 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %51 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = call i32 @PCIR_BAR(i32 5)
  %54 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %55 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %58 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %61 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %60, i32 0, i32 0
  %62 = load i32, i32* @RF_ACTIVE, align 4
  %63 = call i32 @bus_alloc_resource_any(i32 %56, i32 %59, i32* %61, i32 %62)
  %64 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %65 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = icmp ne i32 %63, 0
  br i1 %66, label %67, label %135

67:                                               ; preds = %52
  %68 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %69 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NV4, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1088, i32 16
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @ata_nvidia_ch_attach, align 4
  %79 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %80 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @ata_pci_ch_detach, align 4
  %82 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %83 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ata_nvidia_reset, align 4
  %85 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %86 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @pci_read_config(i32 %88, i32 80, i32 1)
  %90 = or i32 %89, 4
  %91 = call i32 @pci_write_config(i32 %87, i32 80, i32 %90, i32 1)
  %92 = call i32 @DELAY(i32 10)
  %93 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %94 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @NVQ, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %67
  %102 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %103 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @ATA_OUTL(i32 %104, i32 %105, i32 16711935)
  %107 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %108 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 4
  %112 = call i32 @ATA_OUTL(i32 %109, i32 %111, i32 851981)
  %113 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %114 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %117 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ATA_INL(i32 %118, i32 1024)
  %120 = and i32 %119, -7
  %121 = call i32 @ATA_OUTL(i32 %115, i32 1024, i32 %120)
  br label %134

122:                                              ; preds = %67
  %123 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %124 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @ATA_OUTB(i32 %125, i32 %126, i32 255)
  %128 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %129 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @ATA_OUTB(i32 %130, i32 %132, i32 221)
  br label %134

134:                                              ; preds = %122, %101
  br label %135

135:                                              ; preds = %134, %52
  %136 = load i8*, i8** @ata_sata_setmode, align 8
  %137 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %138 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* @ata_sata_getrev, align 4
  %140 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %141 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %151

142:                                              ; preds = %30
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @pci_read_config(i32 %144, i32 81, i32 1)
  %146 = and i32 %145, 15
  %147 = call i32 @pci_write_config(i32 %143, i32 81, i32 %146, i32 1)
  %148 = load i8*, i8** @ata_nvidia_setmode, align 8
  %149 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %150 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %142, %135
  br label %152

152:                                              ; preds = %151, %23
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %12
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

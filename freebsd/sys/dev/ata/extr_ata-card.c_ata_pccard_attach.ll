; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-card.c_ata_pccard_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-card.c_ata_pccard_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@ATA_IOADDR_RID = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_IOSIZE = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_CTLADDR_RID = common dso_local global i32 0, align 4
@ATA_CTLIOSIZE = common dso_local global i64 0, align 8
@ATA_MAX_RES = common dso_local global i32 0, align 4
@ATA_USE_16BIT = common dso_local global i32 0, align 4
@PFD_I_D = common dso_local global i32 0, align 4
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_pccard_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_pccard_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ata_channel* @device_get_softc(i32 %11)
  store %struct.ata_channel* %12, %struct.ata_channel** %4, align 8
  %13 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %162

18:                                               ; preds = %1
  %19 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @ATA_IOADDR_RID, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_IOPORT, align 4
  %24 = load i64, i64* @ATA_IOSIZE, align 8
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %22, i32 %23, i32* %8, i64 %24, i32 %25)
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %162

30:                                               ; preds = %18
  %31 = load i32, i32* @ATA_DATA, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %53, %30
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ATA_COMMAND, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %39 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.resource* %37, %struct.resource** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %47 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 8
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %59 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @ATA_IDX_ADDR, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.resource* %57, %struct.resource** %63, align 8
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = call i64 @rman_get_size(%struct.resource* %64)
  %66 = load i64, i64* @ATA_IOSIZE, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %56
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %71 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* @ATA_CONTROL, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store %struct.resource* %69, %struct.resource** %75, align 8
  %76 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %77 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* @ATA_CONTROL, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 14, i32* %81, align 8
  br label %128

82:                                               ; preds = %56
  %83 = load i32, i32* @ATA_CTLADDR_RID, align 4
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @SYS_RES_IOPORT, align 4
  %86 = load i64, i64* @ATA_CTLIOSIZE, align 8
  %87 = load i32, i32* @RF_ACTIVE, align 4
  %88 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %84, i32 %85, i32* %8, i64 %86, i32 %87)
  store %struct.resource* %88, %struct.resource** %6, align 8
  %89 = icmp ne %struct.resource* %88, null
  br i1 %89, label %114, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SYS_RES_IOPORT, align 4
  %93 = load i32, i32* @ATA_IOADDR_RID, align 4
  %94 = load %struct.resource*, %struct.resource** %5, align 8
  %95 = call i32 @bus_release_resource(i32 %91, i32 %92, i32 %93, %struct.resource* %94)
  %96 = load i32, i32* @ATA_DATA, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %109, %90
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @ATA_MAX_RES, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %103 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store %struct.resource* null, %struct.resource** %108, align 8
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %97

112:                                              ; preds = %97
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %2, align 4
  br label %162

114:                                              ; preds = %82
  %115 = load %struct.resource*, %struct.resource** %6, align 8
  %116 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %117 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i64, i64* @ATA_CONTROL, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store %struct.resource* %115, %struct.resource** %121, align 8
  %122 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %123 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i64, i64* @ATA_CONTROL, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %114, %68
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @ata_default_registers(i32 %129)
  %131 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %132 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @ATA_USE_16BIT, align 4
  %134 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %135 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  store i32 0, i32* %10, align 4
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @pccard_get_funce_disk(i32 %138, i32* %10)
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @PFD_I_D, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %128
  %145 = load i32, i32* @ATA_NO_SLAVE, align 4
  %146 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %147 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %128
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @ata_generic_hw(i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @ata_probe(i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %162

159:                                              ; preds = %150
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @ata_attach(i32 %160)
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %159, %157, %112, %28, %17
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_anywhere(i32, i32, i32*, i64, i32) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @pccard_get_funce_disk(i32, i32*) #1

declare dso_local i32 @ata_generic_hw(i32) #1

declare dso_local i32 @ata_probe(i32) #1

declare dso_local i32 @ata_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

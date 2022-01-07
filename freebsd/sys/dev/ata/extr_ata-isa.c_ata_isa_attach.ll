; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-isa.c_ata_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-isa.c_ata_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@ATA_IOADDR_RID = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_IOSIZE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATA_CTLADDR_RID = common dso_local global i32 0, align 4
@ATA_CTLOFFSET = common dso_local global i64 0, align 8
@ATA_CTLIOSIZE = common dso_local global i32 0, align 4
@ATA_DATA = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@ATA_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ata_channel* @device_get_softc(i32 %10)
  store %struct.ata_channel* %11, %struct.ata_channel** %4, align 8
  store %struct.resource* null, %struct.resource** %5, align 8
  store %struct.resource* null, %struct.resource** %6, align 8
  %12 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %120

17:                                               ; preds = %1
  %18 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @ATA_IOADDR_RID, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SYS_RES_IOPORT, align 4
  %23 = load i32, i32* @ATA_IOSIZE, align 4
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %21, i32 %22, i32* %9, i32 %23, i32 %24)
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %120

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %33 = call i64 @bus_get_resource(i32 %30, i32 %31, i32 %32, i32* %7, i32* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IOPORT, align 4
  %38 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = call i64 @rman_get_start(%struct.resource* %39)
  %41 = load i64, i64* @ATA_CTLOFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* @ATA_CTLIOSIZE, align 4
  %44 = call i32 @bus_set_resource(i32 %36, i32 %37, i32 %38, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %29
  %46 = load i32, i32* @ATA_CTLADDR_RID, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @SYS_RES_IOPORT, align 4
  %49 = load i32, i32* @ATA_CTLIOSIZE, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %47, i32 %48, i32* %9, i32 %49, i32 %50)
  store %struct.resource* %51, %struct.resource** %6, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SYS_RES_IOPORT, align 4
  %56 = load i32, i32* @ATA_IOADDR_RID, align 4
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = call i32 @bus_release_resource(i32 %54, i32 %55, i32 %56, %struct.resource* %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %120

60:                                               ; preds = %45
  %61 = load i32, i32* @ATA_DATA, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %83, %60
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ATA_COMMAND, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %69 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store %struct.resource* %67, %struct.resource** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %77 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 8
  br label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %62

86:                                               ; preds = %62
  %87 = load %struct.resource*, %struct.resource** %6, align 8
  %88 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %89 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* @ATA_CONTROL, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store %struct.resource* %87, %struct.resource** %93, align 8
  %94 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %95 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* @ATA_CONTROL, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.resource*, %struct.resource** %5, align 8
  %101 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %102 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* @ATA_IDX_ADDR, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store %struct.resource* %100, %struct.resource** %106, align 8
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @ata_default_registers(i32 %107)
  %109 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %110 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @ATA_USE_16BIT, align 4
  %112 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %113 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @ata_generic_hw(i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @ata_attach(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %86, %53, %27, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @ata_default_registers(i32) #1

declare dso_local i32 @ata_generic_hw(i32) #1

declare dso_local i32 @ata_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

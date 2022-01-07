; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-isa.c_ata_isa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-isa.c_ata_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@ata_ids = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@ATA_IOADDR_RID = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_IOSIZE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ATA_CTLADDR_RID = common dso_local global i32 0, align 4
@ATA_CTLOFFSET = common dso_local global i64 0, align 8
@ATA_CTLIOSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ATA channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_isa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.resource* null, %struct.resource** %4, align 8
  store %struct.resource* null, %struct.resource** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ata_ids, align 4
  %12 = call i64 @ISA_PNP_PROBE(i32 %9, i32 %10, i32 %11)
  %13 = load i64, i64* @ENXIO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @ENXIO, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load i32, i32* @ATA_IOADDR_RID, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = load i32, i32* @ATA_IOSIZE, align 4
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %20, i32 %21, i32* %7, i32 %22, i32 %23)
  store %struct.resource* %24, %struct.resource** %4, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* @ENXIO, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %33 = call i64 @bus_get_resource(i32 %30, i32 %31, i32 %32, i32* %6, i32* %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IOPORT, align 4
  %38 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = call i64 @rman_get_start(%struct.resource* %39)
  %41 = load i64, i64* @ATA_CTLOFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* @ATA_CTLIOSIZE, align 4
  %44 = call i32 @bus_set_resource(i32 %36, i32 %37, i32 %38, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %29
  %46 = load i32, i32* @ATA_CTLADDR_RID, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @SYS_RES_IOPORT, align 4
  %49 = load i32, i32* @ATA_CTLIOSIZE, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = call %struct.resource* @bus_alloc_resource_anywhere(i32 %47, i32 %48, i32* %7, i32 %49, i32 %50)
  store %struct.resource* %51, %struct.resource** %5, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SYS_RES_IOPORT, align 4
  %56 = load i32, i32* @ATA_IOADDR_RID, align 4
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = call i32 @bus_release_resource(i32 %54, i32 %55, i32 %56, %struct.resource* %57)
  %59 = load i64, i64* @ENXIO, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %76

61:                                               ; preds = %45
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SYS_RES_IOPORT, align 4
  %64 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %65 = load %struct.resource*, %struct.resource** %5, align 8
  %66 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 %64, %struct.resource* %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SYS_RES_IOPORT, align 4
  %69 = load i32, i32* @ATA_IOADDR_RID, align 4
  %70 = load %struct.resource*, %struct.resource** %4, align 8
  %71 = call i32 @bus_release_resource(i32 %67, i32 %68, i32 %69, %struct.resource* %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_set_desc(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @ata_probe(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %61, %53, %26, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @ata_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

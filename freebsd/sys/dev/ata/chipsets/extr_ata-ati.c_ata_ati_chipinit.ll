; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ati.c_ata_ati_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ati.c_ata_ati_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ATI_AHCI = common dso_local global i64 0, align 8
@ata_ati_dumb_ch_attach = common dso_local global i32 0, align 4
@ata_sata_setmode = common dso_local global i32 0, align 4
@ATA_ATI_ID = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SATA controller %s (%s%s channel)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"combined mode, \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@ata_ati_ixp700_ch_attach = common dso_local global i32 0, align 4
@ata_ati_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ata_ati_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ati_chipinit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.ata_pci_controller* @device_get_softc(i32* %7)
  store %struct.ata_pci_controller* %8, %struct.ata_pci_controller** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @ata_generic_intr, align 4
  %11 = call i64 @ata_setup_interrupt(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %17 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ATI_AHCI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @ata_ati_dumb_ch_attach, align 4
  %25 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ata_sata_setmode, align 4
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %2, align 4
  br label %96

30:                                               ; preds = %15
  %31 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %32 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %92 [
    i32 129, label %36
    i32 128, label %39
  ]

36:                                               ; preds = %30
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %92

39:                                               ; preds = %30
  %40 = load i32, i32* @ATA_ATI_ID, align 4
  %41 = call i32* @pci_find_device(i32 %40, i32 17285)
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %91

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @pci_read_config(i32* %45, i32 173, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @bootverbose, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)
  %66 = call i32 @device_printf(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %60, i8* %65)
  br label %67

67:                                               ; preds = %49, %44
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %72 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 9
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 16
  %79 = ashr i32 %78, 4
  %80 = shl i32 1, %79
  %81 = xor i32 %80, -1
  %82 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %83 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %90

86:                                               ; preds = %67
  %87 = load i32, i32* @ata_ati_ixp700_ch_attach, align 4
  %88 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %89 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %76
  br label %91

91:                                               ; preds = %90, %39
  br label %92

92:                                               ; preds = %30, %91, %36
  %93 = load i32, i32* @ata_ati_setmode, align 4
  %94 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %95 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %23, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32*) #1

declare dso_local i64 @ata_setup_interrupt(i32*, i32) #1

declare dso_local i32* @pci_find_device(i32, i32) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ata_pci_controller = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.ata_channel = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"ata-pci.c: we cannot use a filter here\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ata_devclass = common dso_local global i64 0, align 8
@ATA_PCI_MAX_CH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.ata_pci_controller*, align 8
  %19 = alloca %struct.ata_pci_controller*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.ata_pci_controller* @device_get_softc(i32 %21)
  store %struct.ata_pci_controller* %22, %struct.ata_pci_controller** %18, align 8
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %18, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @device_get_parent(i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.resource*, %struct.resource** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i8**, i8*** %17, align 8
  %37 = call i32 @BUS_SETUP_INTR(i32 %29, i32 %30, %struct.resource* %31, i32 %32, i32* %33, i32* %34, i8* %35, i8** %36)
  store i32 %37, i32* %9, align 4
  br label %80

38:                                               ; preds = %8
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.ata_pci_controller* @device_get_softc(i32 %39)
  store %struct.ata_pci_controller* %40, %struct.ata_pci_controller** %19, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %9, align 4
  br label %80

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @device_get_devclass(i32 %47)
  %49 = load i64, i64* @ata_devclass, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.ata_pci_controller* @device_get_softc(i32 %52)
  %54 = bitcast %struct.ata_pci_controller* %53 to %struct.ata_channel*
  %55 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %20, align 4
  br label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @ATA_PCI_MAX_CH, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %20, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32*, i32** %15, align 8
  %62 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %19, align 8
  %63 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32* %61, i32** %68, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %19, align 8
  %71 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %69, i8** %76, align 8
  %77 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %19, align 8
  %78 = bitcast %struct.ata_pci_controller* %77 to i8*
  %79 = load i8**, i8*** %17, align 8
  store i8* %78, i8** %79, align 8
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %60, %43, %27
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i32 @BUS_SETUP_INTR(i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @device_get_devclass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

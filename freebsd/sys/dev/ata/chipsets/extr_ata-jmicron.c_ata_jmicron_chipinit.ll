; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-jmicron.c_ata_jmicron_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-jmicron.c_ata_jmicron_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i64 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ata_jmicron_ch_attach = common dso_local global i8* null, align 8
@ata_pci_ch_detach = common dso_local global i8* null, align 8
@ata_generic_reset = common dso_local global i8* null, align 8
@ata_jmicron_setmode = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ata_jmicron_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_jmicron_chipinit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.ata_pci_controller* @device_get_softc(i32* %6)
  store %struct.ata_pci_controller* %7, %struct.ata_pci_controller** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @ata_generic_intr, align 4
  %10 = call i64 @ata_setup_interrupt(i32* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %82

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @pci_read_config(i32* %15, i32 223, i32 1)
  %17 = and i32 %16, 64
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load i8*, i8** @ata_jmicron_ch_attach, align 8
  %21 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %22 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @ata_pci_ch_detach, align 8
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @ata_generic_reset, align 8
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @ata_jmicron_setmode, align 8
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %33 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %81

39:                                               ; preds = %14
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @pci_write_config(i32* %40, i32 64, i32 -2134859471, i32 4)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @pci_write_config(i32* %42, i32 128, i32 18874368, i32 4)
  %44 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %45 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %39
  %51 = load i32*, i32** %3, align 8
  %52 = call i32* @device_add_child(i32* %51, i32* null, i32 -1)
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @device_set_ivars(i32* %56, i8* inttoptr (i64 -1 to i8*))
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @bus_generic_attach(i32* %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i8*, i8** @ata_jmicron_ch_attach, align 8
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @ata_pci_ch_detach, align 8
  %66 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %67 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @ata_generic_reset, align 8
  %69 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %70 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @ata_jmicron_setmode, align 8
  %72 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %73 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %75 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %80 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %61, %19
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32*) #1

declare dso_local i64 @ata_setup_interrupt(i32*, i32) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @pci_write_config(i32*, i32, i32, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

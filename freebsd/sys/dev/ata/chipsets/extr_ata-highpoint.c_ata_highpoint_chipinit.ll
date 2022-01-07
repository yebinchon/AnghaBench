; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ata_generic_intr = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@HPT_OLD = common dso_local global i64 0, align 8
@HPT_372 = common dso_local global i64 0, align 8
@ata_highpoint_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@ata_highpoint_setmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_highpoint_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_highpoint_chipinit(i32 %0) #0 {
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
  br label %71

13:                                               ; preds = %1
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HPT_OLD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_read_config(i32 %23, i32 81, i32 1)
  %25 = and i32 %24, -129
  %26 = call i32 @pci_write_config(i32 %22, i32 81, i32 %25, i32 1)
  br label %61

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pci_read_config(i32 %29, i32 81, i32 1)
  %31 = and i32 %30, -4
  %32 = call i32 @pci_write_config(i32 %28, i32 81, i32 %31, i32 1)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_read_config(i32 %34, i32 85, i32 1)
  %36 = and i32 %35, -4
  %37 = call i32 @pci_write_config(i32 %33, i32 85, i32 %36, i32 1)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @pci_read_config(i32 %39, i32 90, i32 1)
  %41 = and i32 %40, -17
  %42 = call i32 @pci_write_config(i32 %38, i32 90, i32 %41, i32 1)
  %43 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %44 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HPT_372, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %27
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @pci_write_config(i32 %51, i32 91, i32 34, i32 1)
  br label %60

53:                                               ; preds = %27
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @pci_read_config(i32 %55, i32 91, i32 1)
  %57 = and i32 %56, 1
  %58 = or i32 %57, 32
  %59 = call i32 @pci_write_config(i32 %54, i32 91, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %53, %50
  br label %61

61:                                               ; preds = %60, %21
  %62 = load i32, i32* @ata_highpoint_ch_attach, align 4
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @ata_pci_ch_detach, align 4
  %66 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %67 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ata_highpoint_setmode, align 4
  %69 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %70 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %61, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ata_setup_interrupt(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

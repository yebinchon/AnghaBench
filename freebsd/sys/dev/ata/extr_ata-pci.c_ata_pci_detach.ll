; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i64, i64, i64, i64, i32, i64, i32, i32 (i32)*, i64, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ata_pci_controller* @device_get_softc(i32 %4)
  store %struct.ata_pci_controller* %5, %struct.ata_pci_controller** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_delete_children(i32 %6)
  %8 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %9 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bus_teardown_intr(i32 %13, i64 %16, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SYS_RES_IRQ, align 4
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bus_release_resource(i32 %21, i32 %22, i64 %25, i64 %28)
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ATA_IRQ_RID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %12
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @pci_release_msi(i32 %36)
  br label %38

38:                                               ; preds = %35, %12
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %41 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %40, i32 0, i32 7
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = icmp ne i32 (i32)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 7
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load i32, i32* %2, align 4
  %49 = call i32 %47(i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %52 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i32, i32* %2, align 4
  %57 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %58 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %61 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %64 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @bus_release_resource(i32 %56, i32 %59, i64 %62, i64 %65)
  br label %67

67:                                               ; preds = %55, %50
  %68 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %69 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i32, i32* %2, align 4
  %74 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %75 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %78 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %81 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @bus_release_resource(i32 %73, i32 %76, i64 %79, i64 %82)
  br label %84

84:                                               ; preds = %72, %67
  ret i32 0
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i64) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

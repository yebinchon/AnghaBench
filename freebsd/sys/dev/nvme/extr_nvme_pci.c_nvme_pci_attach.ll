; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i64, i32*, i64, i32*, i32, i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nvme_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.nvme_controller* @DEVICE2SOFTC(i32 %6)
  store %struct.nvme_controller* %7, %struct.nvme_controller** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %12 = call i32 @nvme_ctrlr_allocate_bar(%struct.nvme_controller* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @pci_enable_busmaster(i32 %17)
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %20 = call i32 @nvme_ctrlr_setup_interrupts(%struct.nvme_controller* %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @nvme_attach(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %93

23:                                               ; preds = %15
  %24 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %33, i32* %36)
  br label %38

38:                                               ; preds = %28, %23
  %39 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SYS_RES_MEMORY, align 4
  %46 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %47 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_release_resource(i32 %44, i32 %45, i32 %48, i32* %51)
  br label %53

53:                                               ; preds = %43, %38
  %54 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %55 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %61 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %64 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @bus_teardown_intr(i32 %59, i32* %62, i64 %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %69 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SYS_RES_IRQ, align 4
  %75 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %76 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @rman_get_rid(i32* %77)
  %79 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %80 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @bus_release_resource(i32 %73, i32 %74, i32 %78, i32* %81)
  br label %83

83:                                               ; preds = %72, %67
  %84 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %85 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @pci_release_msi(i32 %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.nvme_controller* @DEVICE2SOFTC(i32) #1

declare dso_local i32 @nvme_ctrlr_allocate_bar(%struct.nvme_controller*) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @nvme_ctrlr_setup_interrupts(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

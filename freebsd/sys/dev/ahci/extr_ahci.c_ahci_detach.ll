; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_controller*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ahci_controller* @device_get_softc(i32 %5)
  store %struct.ahci_controller* %6, %struct.ahci_controller** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_delete_children(i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %64, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %12 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %9
  %16 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %17 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %15
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %28 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %36 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bus_teardown_intr(i32 %26, i64 %34, i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %47 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %55 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @bus_release_resource(i32 %44, i32 %45, i32 %53, i64 %61)
  br label %63

63:                                               ; preds = %25, %15
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %9

67:                                               ; preds = %9
  %68 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %69 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bus_dma_tag_destroy(i32 %70)
  %72 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %73 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %72, i32 0, i32 2
  %74 = call i32 @rman_fini(i32* %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @ahci_free_mem(i32 %75)
  %77 = load %struct.ahci_controller*, %struct.ahci_controller** %3, align 8
  %78 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %77, i32 0, i32 1
  %79 = call i32 @mtx_destroy(i32* %78)
  ret i32 0
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @rman_fini(i32*) #1

declare dso_local i32 @ahci_free_mem(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

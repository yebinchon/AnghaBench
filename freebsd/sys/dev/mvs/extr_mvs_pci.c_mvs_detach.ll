; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_controller*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mvs_controller* @device_get_softc(i32 %4)
  store %struct.mvs_controller* %5, %struct.mvs_controller** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @device_delete_children(i32 %6)
  %8 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %9 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %16 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %20 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bus_teardown_intr(i32 %14, i64 %18, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %27 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %31 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @bus_release_resource(i32 %24, i32 %25, i32 %29, i64 %33)
  br label %35

35:                                               ; preds = %13, %1
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @pci_release_msi(i32 %36)
  %38 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %39 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %38, i32 0, i32 3
  %40 = call i32 @rman_fini(i32* %39)
  %41 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %42 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %49 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %52 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %45, %35
  %56 = load %struct.mvs_controller*, %struct.mvs_controller** %3, align 8
  %57 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %56, i32 0, i32 0
  %58 = call i32 @mtx_destroy(i32* %57)
  ret i32 0
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @rman_fini(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_release_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_release_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physdev_unmap_pirq = type { i32 }
%struct.xenisrc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@PHYSDEVOP_unmap_pirq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_release_msi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.physdev_unmap_pirq, align 4
  %5 = alloca %struct.xenisrc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @intr_lookup_source(i32 %7)
  %9 = inttoptr i64 %8 to %struct.xenisrc*
  store %struct.xenisrc* %9, %struct.xenisrc** %5, align 8
  %10 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  %11 = icmp eq %struct.xenisrc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  %16 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.physdev_unmap_pirq, %struct.physdev_unmap_pirq* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @PHYSDEVOP_unmap_pirq, align 4
  %20 = call i32 @HYPERVISOR_physdev_op(i32 %19, %struct.physdev_unmap_pirq* %4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  %27 = call i32 @xen_intr_release_isrc(%struct.xenisrc* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @intr_lookup_source(i32) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_unmap_pirq*) #1

declare dso_local i32 @xen_intr_release_isrc(%struct.xenisrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

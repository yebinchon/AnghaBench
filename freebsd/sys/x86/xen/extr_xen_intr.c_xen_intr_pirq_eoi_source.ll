; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_pirq_eoi_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_pirq_eoi_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32 }
%struct.xenisrc = type { i32 }
%struct.physdev_eoi = type { i32 }

@xen_intr_pirq_eoi_map = common dso_local global i32 0, align 4
@PHYSDEVOP_eoi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to EOI PIRQ#%d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*)* @xen_intr_pirq_eoi_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_intr_pirq_eoi_source(%struct.intsrc* %0) #0 {
  %2 = alloca %struct.intsrc*, align 8
  %3 = alloca %struct.xenisrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.physdev_eoi, align 4
  store %struct.intsrc* %0, %struct.intsrc** %2, align 8
  %6 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %7 = bitcast %struct.intsrc* %6 to %struct.xenisrc*
  store %struct.xenisrc* %7, %struct.xenisrc** %3, align 8
  %8 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %9 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @xen_intr_pirq_eoi_map, align 4
  %12 = call i64 @xen_test_bit(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.physdev_eoi, %struct.physdev_eoi* %5, i32 0, i32 0
  %16 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %17 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @PHYSDEVOP_eoi, align 4
  %20 = call i32 @HYPERVISOR_physdev_op(i32 %19, %struct.physdev_eoi* %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %25 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %14
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local i64 @xen_test_bit(i32, i32) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_eoi*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

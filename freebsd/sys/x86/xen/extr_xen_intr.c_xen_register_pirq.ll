; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_register_pirq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_register_pirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physdev_map_pirq = type { i32, i32, i32, i32 }
%struct.xenisrc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"xen: register IRQ#%d\0A\00", align 1
@DOMID_SELF = common dso_local global i32 0, align 4
@MAP_PIRQ_TYPE_GSI = common dso_local global i32 0, align 4
@PHYSDEVOP_map_pirq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"xen: unable to map IRQ#%d\0A\00", align 1
@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@EVTCHN_TYPE_PIRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"xen: unable to allocate isrc for interrupt\00", align 1
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_register_pirq(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.physdev_map_pirq, align 4
  %9 = alloca %struct.xenisrc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load i64, i64* @bootverbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @DOMID_SELF, align 4
  %23 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @MAP_PIRQ_TYPE_GSI, align 4
  %25 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.physdev_map_pirq, %struct.physdev_map_pirq* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @PHYSDEVOP_map_pirq, align 4
  %31 = call i32 @HYPERVISOR_physdev_op(i32 %30, %struct.physdev_map_pirq* %8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %65

38:                                               ; preds = %21
  %39 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %40 = load i32, i32* @EVTCHN_TYPE_PIRQ, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.xenisrc* @xen_intr_alloc_isrc(i32 %40, i32 %41)
  store %struct.xenisrc* %42, %struct.xenisrc** %9, align 8
  %43 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %44 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %45 = icmp ne %struct.xenisrc* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %50 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %57 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.xenisrc*, %struct.xenisrc** %9, align 8
  %64 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %38, %34, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_map_pirq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.xenisrc* @xen_intr_alloc_isrc(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

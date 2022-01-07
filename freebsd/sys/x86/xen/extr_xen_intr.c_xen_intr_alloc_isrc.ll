; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_alloc_isrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_alloc_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@xen_intr_alloc_isrc.warned = internal global i32 0, align 4
@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Evtchn alloc lock not held\00", align 1
@xen_intr_auto_vector_count = common dso_local global i32 0, align 4
@NR_EVENT_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"xen_intr_alloc: Event channels exhausted.\0A\00", align 1
@EVTCHN_TYPE_PIRQ = common dso_local global i32 0, align 4
@first_evtchn_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Trying to use an already allocated vector\00", align 1
@M_XENINTR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@xen_intr_pirq_pic = common dso_local global i32 0, align 4
@xen_intr_pic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xenisrc* (i32, i32)* @xen_intr_alloc_isrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xenisrc* @xen_intr_alloc_isrc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.xenisrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenisrc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 @mtx_owned(i32* @xen_intr_isrc_lock)
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @xen_intr_auto_vector_count, align 4
  %10 = load i32, i32* @NR_EVENT_CHANNELS, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @xen_intr_alloc_isrc.warned, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  store i32 1, i32* @xen_intr_alloc_isrc.warned, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  store %struct.xenisrc* null, %struct.xenisrc** %3, align 8
  br label %59

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @EVTCHN_TYPE_PIRQ, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @first_evtchn_irq, align 4
  %24 = load i32, i32* @xen_intr_auto_vector_count, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @xen_intr_auto_vector_count, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @xen_intr_auto_vector_count, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* %5, align 4
  %30 = call i32* @intr_lookup_source(i32 %29)
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %35 = load i32, i32* @M_XENINTR, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.xenisrc* @malloc(i32 16, i32 %35, i32 %38)
  store %struct.xenisrc* %39, %struct.xenisrc** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @EVTCHN_TYPE_PIRQ, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32* @xen_intr_pirq_pic, i32* @xen_intr_pic
  %45 = load %struct.xenisrc*, %struct.xenisrc** %6, align 8
  %46 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.xenisrc*, %struct.xenisrc** %6, align 8
  %50 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.xenisrc*, %struct.xenisrc** %6, align 8
  %53 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.xenisrc*, %struct.xenisrc** %6, align 8
  %55 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %54, i32 0, i32 2
  %56 = call i32 @intr_register_source(%struct.TYPE_2__* %55)
  %57 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %58 = load %struct.xenisrc*, %struct.xenisrc** %6, align 8
  store %struct.xenisrc* %58, %struct.xenisrc** %3, align 8
  br label %59

59:                                               ; preds = %28, %17
  %60 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  ret %struct.xenisrc* %60
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @intr_lookup_source(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.xenisrc* @malloc(i32, i32, i32) #1

declare dso_local i32 @intr_register_source(%struct.TYPE_2__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

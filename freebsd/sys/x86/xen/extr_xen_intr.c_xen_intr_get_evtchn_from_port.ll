; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_get_evtchn_from_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_get_evtchn_from_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NR_EVENT_CHANNELS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@xen_intr_port_to_isrc = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_intr_get_evtchn_from_port(i64 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  store i64 %0, i64* %4, align 8
  store i32** %1, i32*** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @is_valid_evtchn(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @NR_EVENT_CHANNELS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %9
  %16 = load i32**, i32*** %5, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %15
  %21 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @xen_intr_port_to_isrc, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %20
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @xen_intr_port_to_isrc, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @refcount_acquire(i32* %35)
  %37 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @xen_intr_port_to_isrc, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %5, align 8
  store i32* %42, i32** %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %30, %27, %18, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @is_valid_evtchn(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

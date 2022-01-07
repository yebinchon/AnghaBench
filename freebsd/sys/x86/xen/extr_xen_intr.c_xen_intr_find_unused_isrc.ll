; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_find_unused_isrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_find_unused_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Evtchn isrc lock not held\00", align 1
@xen_intr_auto_vector_count = common dso_local global i32 0, align 4
@first_evtchn_irq = common dso_local global i64 0, align 8
@EVTCHN_TYPE_UNBOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Free evtchn still has handlers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xenisrc* (i32)* @xen_intr_find_unused_isrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xenisrc* @xen_intr_find_unused_isrc(i32 %0) #0 {
  %2 = alloca %struct.xenisrc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenisrc*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i32 @mtx_owned(i32* @xen_intr_isrc_lock)
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @xen_intr_auto_vector_count, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load i64, i64* @first_evtchn_irq, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @intr_lookup_source(i64 %18)
  %20 = inttoptr i64 %19 to %struct.xenisrc*
  store %struct.xenisrc* %20, %struct.xenisrc** %5, align 8
  %21 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  %22 = icmp ne %struct.xenisrc* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  %25 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EVTCHN_TYPE_UNBOUND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  %31 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  %40 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.xenisrc*, %struct.xenisrc** %5, align 8
  store %struct.xenisrc* %41, %struct.xenisrc** %2, align 8
  br label %47

42:                                               ; preds = %23, %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %9

46:                                               ; preds = %9
  store %struct.xenisrc* null, %struct.xenisrc** %2, align 8
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  ret %struct.xenisrc* %48
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i64 @intr_lookup_source(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

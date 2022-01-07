; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_init_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_init_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.scan_state = type { i32, i64, %struct.TYPE_9__*, %struct.vm_pagequeue*, i32 }
%struct.vm_pagequeue = type { i32 }
%struct.TYPE_9__ = type { i32 }

@PGA_ENQUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"marker %p already enqueued\00", align 1
@plinks = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scan_state*, %struct.vm_pagequeue*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @vm_pageout_init_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_init_scan(%struct.scan_state* %0, %struct.vm_pagequeue* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca %struct.scan_state*, align 8
  %7 = alloca %struct.vm_pagequeue*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.scan_state* %0, %struct.scan_state** %6, align 8
  store %struct.vm_pagequeue* %1, %struct.vm_pagequeue** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %12 = call i32 @vm_pagequeue_assert_locked(%struct.vm_pagequeue* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PGA_ENQUEUED, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = bitcast %struct.TYPE_9__* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %27 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @plinks, i32 0, i32 0), align 4
  %30 = call i32 @TAILQ_INSERT_HEAD(i32* %27, %struct.TYPE_9__* %28, i32 %29)
  br label %38

31:                                               ; preds = %5
  %32 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %33 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @plinks, i32 0, i32 0), align 4
  %37 = call i32 @TAILQ_INSERT_AFTER(i32* %33, %struct.TYPE_9__* %34, %struct.TYPE_9__* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %25
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = load i32, i32* @PGA_ENQUEUED, align 4
  %41 = call i32 @vm_page_aflag_set(%struct.TYPE_9__* %39, i32 %40)
  %42 = load %struct.scan_state*, %struct.scan_state** %6, align 8
  %43 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %42, i32 0, i32 4
  %44 = call i32 @vm_batchqueue_init(i32* %43)
  %45 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %46 = load %struct.scan_state*, %struct.scan_state** %6, align 8
  %47 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %46, i32 0, i32 3
  store %struct.vm_pagequeue* %45, %struct.vm_pagequeue** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = load %struct.scan_state*, %struct.scan_state** %6, align 8
  %50 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %49, i32 0, i32 2
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.scan_state*, %struct.scan_state** %6, align 8
  %53 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.scan_state*, %struct.scan_state** %6, align 8
  %55 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %57 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %56)
  ret void
}

declare dso_local i32 @vm_pagequeue_assert_locked(%struct.vm_pagequeue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vm_batchqueue_init(i32*) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

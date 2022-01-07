; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_end_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_end_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.scan_state = type { i64, %struct.TYPE_4__*, %struct.vm_pagequeue* }
%struct.TYPE_4__ = type { i32 }
%struct.vm_pagequeue = type { i32, i32 }

@PGA_ENQUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"marker %p not enqueued\00", align 1
@plinks = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scan_state*)* @vm_pageout_end_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_end_scan(%struct.scan_state* %0) #0 {
  %2 = alloca %struct.scan_state*, align 8
  %3 = alloca %struct.vm_pagequeue*, align 8
  store %struct.scan_state* %0, %struct.scan_state** %2, align 8
  %4 = load %struct.scan_state*, %struct.scan_state** %2, align 8
  %5 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %4, i32 0, i32 2
  %6 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %5, align 8
  store %struct.vm_pagequeue* %6, %struct.vm_pagequeue** %3, align 8
  %7 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %8 = call i32 @vm_pagequeue_assert_locked(%struct.vm_pagequeue* %7)
  %9 = load %struct.scan_state*, %struct.scan_state** %2, align 8
  %10 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PGA_ENQUEUED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.scan_state*, %struct.scan_state** %2, align 8
  %19 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = bitcast %struct.TYPE_4__* %20 to i8*
  %22 = call i32 @KASSERT(i32 %17, i8* %21)
  %23 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %24 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %23, i32 0, i32 1
  %25 = load %struct.scan_state*, %struct.scan_state** %2, align 8
  %26 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @plinks, i32 0, i32 0), align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %24, %struct.TYPE_4__* %27, i32 %28)
  %30 = load %struct.scan_state*, %struct.scan_state** %2, align 8
  %31 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* @PGA_ENQUEUED, align 4
  %34 = call i32 @vm_page_aflag_clear(%struct.TYPE_4__* %32, i32 %33)
  %35 = load %struct.scan_state*, %struct.scan_state** %2, align 8
  %36 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %3, align 8
  %39 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  ret void
}

declare dso_local i32 @vm_pagequeue_assert_locked(%struct.vm_pagequeue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

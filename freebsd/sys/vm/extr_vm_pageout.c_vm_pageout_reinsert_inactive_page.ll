; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_reinsert_inactive_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_reinsert_inactive_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.scan_state = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.vm_domain = type { i32 }

@PQ_INACTIVE = common dso_local global i64 0, align 8
@PGA_ENQUEUED = common dso_local global i32 0, align 4
@PGA_REQUEUE_HEAD = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@PGA_REQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scan_state*, %struct.TYPE_11__*)* @vm_pageout_reinsert_inactive_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_pageout_reinsert_inactive_page(%struct.scan_state* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scan_state*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.vm_domain*, align 8
  store %struct.scan_state* %0, %struct.scan_state** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PQ_INACTIVE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PGA_ENQUEUED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %72

20:                                               ; preds = %12
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = load i32, i32* @PGA_ENQUEUED, align 4
  %23 = call i32 @vm_page_aflag_set(%struct.TYPE_11__* %21, i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PGA_REQUEUE_HEAD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %20
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call %struct.vm_domain* @vm_pagequeue_domain(%struct.TYPE_11__* %31)
  store %struct.vm_domain* %32, %struct.vm_domain** %6, align 8
  %33 = load %struct.vm_domain*, %struct.vm_domain** %6, align 8
  %34 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @plinks, i32 0, i32 0), align 4
  %37 = call i32 @TAILQ_INSERT_BEFORE(i32* %34, %struct.TYPE_11__* %35, i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = load i32, i32* @PGA_REQUEUE, align 4
  %40 = load i32, i32* @PGA_REQUEUE_HEAD, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @vm_page_aflag_clear(%struct.TYPE_11__* %38, i32 %41)
  br label %71

43:                                               ; preds = %20
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PGA_REQUEUE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.scan_state*, %struct.scan_state** %4, align 8
  %52 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @plinks, i32 0, i32 0), align 4
  %57 = call i32 @TAILQ_INSERT_TAIL(i32* %54, %struct.TYPE_11__* %55, i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = load i32, i32* @PGA_REQUEUE, align 4
  %60 = load i32, i32* @PGA_REQUEUE_HEAD, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @vm_page_aflag_clear(%struct.TYPE_11__* %58, i32 %61)
  br label %70

63:                                               ; preds = %43
  %64 = load %struct.scan_state*, %struct.scan_state** %4, align 8
  %65 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @plinks, i32 0, i32 0), align 4
  %69 = call i32 @TAILQ_INSERT_BEFORE(i32* %66, %struct.TYPE_11__* %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %50
  br label %71

71:                                               ; preds = %70, %30
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.vm_domain* @vm_pagequeue_domain(%struct.TYPE_11__*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

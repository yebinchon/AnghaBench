; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_wait_doms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_wait_doms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curproc = common dso_local global i64 0, align 8
@pageproc = common dso_local global i64 0, align 8
@vm_domainset_lock = common dso_local global i32 0, align 4
@vm_pageproc_waiters = common dso_local global i32 0, align 4
@PVM = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pageprocwait\00", align 1
@vm_min_waiters = common dso_local global i32 0, align 4
@vm_min_domains = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vmwait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_wait_doms(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @curproc, align 8
  %4 = load i64, i64* @pageproc, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = call i32 @mtx_lock(i32* @vm_domainset_lock)
  %8 = load i32, i32* @vm_pageproc_waiters, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @vm_pageproc_waiters, align 4
  %10 = load i32, i32* @PVM, align 4
  %11 = load i32, i32* @PDROP, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @msleep(i32* @vm_pageproc_waiters, i32* @vm_domainset_lock, i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %29

14:                                               ; preds = %1
  %15 = call i32 @mtx_lock(i32* @vm_domainset_lock)
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @vm_page_count_min_set(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @vm_min_waiters, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @vm_min_waiters, align 4
  %22 = load i32, i32* @PVM, align 4
  %23 = load i32, i32* @PDROP, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @msleep(i32* @vm_min_domains, i32* @vm_domainset_lock, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %28

26:                                               ; preds = %14
  %27 = call i32 @mtx_unlock(i32* @vm_domainset_lock)
  br label %28

28:                                               ; preds = %26, %19
  br label %29

29:                                               ; preds = %28, %6
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i64 @vm_page_count_min_set(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

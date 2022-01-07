; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_swapout.c_vm_thread_swapout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_swapout.c_vm_thread_swapout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"vm_thread_swapout: kstack already missing?\00", align 1
@PQ_LAUNDRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @vm_thread_swapout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_thread_swapout(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = call i32 @cpu_thread_swapout(%struct.thread* %7)
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.thread*, %struct.thread** %2, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pmap_qremove(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @VM_OBJECT_WLOCK(i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %40, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32* @vm_page_lookup(i32 %27, i32 %28)
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @vm_page_dirty(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @PQ_LAUNDRY, align 4
  %39 = call i32 @vm_page_unwire(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @VM_OBJECT_WUNLOCK(i32 %44)
  ret void
}

declare dso_local i32 @cpu_thread_swapout(%struct.thread*) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32* @vm_page_lookup(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vm_page_dirty(i32*) #1

declare dso_local i32 @vm_page_unwire(i32*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

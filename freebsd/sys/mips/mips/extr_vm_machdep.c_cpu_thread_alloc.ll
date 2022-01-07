; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_vm_machdep.c_cpu_thread_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_vm_machdep.c_cpu_thread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.TYPE_2__, %struct.pcb*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.pcb = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"kernel stack must be aligned.\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@KSTACK_PAGES = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@TLBLO_SWBITS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_thread_alloc(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  %9 = shl i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.thread*, %struct.thread** %2, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.thread*, %struct.thread** %2, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %16, %21
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.pcb*
  %25 = getelementptr inbounds %struct.pcb, %struct.pcb* %24, i64 -1
  %26 = load %struct.thread*, %struct.thread** %2, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 3
  store %struct.pcb* %25, %struct.pcb** %27, align 8
  %28 = load %struct.thread*, %struct.thread** %2, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 3
  %30 = load %struct.pcb*, %struct.pcb** %29, align 8
  %31 = getelementptr inbounds %struct.pcb, %struct.pcb* %30, i32 0, i32 0
  %32 = load %struct.thread*, %struct.thread** %2, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %60, %1
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @KSTACK_PAGES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load i32, i32* @kernel_pmap, align 4
  %40 = load %struct.thread*, %struct.thread** %2, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = call i32* @pmap_pte(i32 %39, i32 %46)
  store i32* %47, i32** %3, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TLBLO_SWBITS_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load %struct.thread*, %struct.thread** %2, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %34

63:                                               ; preds = %34
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_pte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

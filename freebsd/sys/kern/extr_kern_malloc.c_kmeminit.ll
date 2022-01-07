; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_kmeminit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_kmeminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@kmem_zmax = common dso_local global i32 0, align 4
@vm_kmem_size_scale = common dso_local global i32 0, align 4
@VM_KMEM_SIZE_SCALE = common dso_local global i32 0, align 4
@vm_kmem_size = common dso_local global i32 0, align 4
@vm_kmem_size_max = common dso_local global i32 0, align 4
@vm_kmem_size_min = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Tune VM_KMEM_SIZE_* for the platform\00", align 1
@VM_KMEM_SIZE = common dso_local global i32 0, align 4
@VM_KMEM_SIZE_MAX = common dso_local global i32 0, align 4
@VM_KMEM_SIZE_MIN = common dso_local global i32 0, align 4
@kernel_arena = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmeminit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp sle i32 %4, 32768
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %7, i32* @kmem_zmax, align 4
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* @vm_kmem_size_scale, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @VM_KMEM_SIZE_SCALE, align 4
  store i32 %12, i32* @vm_kmem_size_scale, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @vm_kmem_size, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @vm_kmem_size_scale, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* @vm_kmem_size, align 4
  %20 = load i32, i32* @vm_kmem_size, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* @vm_kmem_size, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @vm_kmem_size_max, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @vm_kmem_size, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = mul nsw i32 %28, %29
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  store i32 %32, i32* @vm_kmem_size, align 4
  %33 = load i32, i32* @vm_kmem_size_min, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @vm_kmem_size, align 4
  %37 = load i32, i32* @vm_kmem_size_min, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @vm_kmem_size_min, align 4
  store i32 %40, i32* @vm_kmem_size, align 4
  br label %41

41:                                               ; preds = %39, %35, %31
  %42 = load i32, i32* @vm_kmem_size_max, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* @vm_kmem_size, align 4
  %46 = load i32, i32* @vm_kmem_size_max, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @vm_kmem_size_max, align 4
  store i32 %49, i32* @vm_kmem_size, align 4
  br label %50

50:                                               ; preds = %48, %44, %41
  br label %51

51:                                               ; preds = %50, %13
  %52 = load i32, i32* @vm_kmem_size, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* @vm_kmem_size, align 4
  %58 = sdiv i32 %57, 2
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sdiv i32 %58, %59
  %61 = load i32, i32* %1, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* %1, align 4
  %65 = mul nsw i32 2, %64
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* @vm_kmem_size, align 4
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i32, i32* @vm_kmem_size, align 4
  %70 = call i32 @round_page(i32 %69)
  store i32 %70, i32* @vm_kmem_size, align 4
  %71 = load i32, i32* @vm_kmem_size, align 4
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @uma_set_limit(i32 %72)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @uma_set_limit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

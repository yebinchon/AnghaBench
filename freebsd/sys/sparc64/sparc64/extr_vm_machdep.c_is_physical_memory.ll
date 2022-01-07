; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_is_physical_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_vm_machdep.c_is_physical_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_mem_region = type { i64, i64 }

@sparc64_memreg = common dso_local global %struct.ofw_mem_region* null, align 8
@sparc64_nmemreg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_physical_memory(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.ofw_mem_region*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.ofw_mem_region*, %struct.ofw_mem_region** @sparc64_memreg, align 8
  store %struct.ofw_mem_region* %5, %struct.ofw_mem_region** %4, align 8
  br label %6

6:                                                ; preds = %31, %1
  %7 = load %struct.ofw_mem_region*, %struct.ofw_mem_region** %4, align 8
  %8 = load %struct.ofw_mem_region*, %struct.ofw_mem_region** @sparc64_memreg, align 8
  %9 = load i32, i32* @sparc64_nmemreg, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ofw_mem_region, %struct.ofw_mem_region* %8, i64 %10
  %12 = icmp ult %struct.ofw_mem_region* %7, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.ofw_mem_region*, %struct.ofw_mem_region** %4, align 8
  %16 = getelementptr inbounds %struct.ofw_mem_region, %struct.ofw_mem_region* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.ofw_mem_region*, %struct.ofw_mem_region** %4, align 8
  %22 = getelementptr inbounds %struct.ofw_mem_region, %struct.ofw_mem_region* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ofw_mem_region*, %struct.ofw_mem_region** %4, align 8
  %25 = getelementptr inbounds %struct.ofw_mem_region, %struct.ofw_mem_region* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = icmp slt i64 %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %35

30:                                               ; preds = %19, %13
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.ofw_mem_region*, %struct.ofw_mem_region** %4, align 8
  %33 = getelementptr inbounds %struct.ofw_mem_region, %struct.ofw_mem_region* %32, i32 1
  store %struct.ofw_mem_region* %33, %struct.ofw_mem_region** %4, align 8
  br label %6

34:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

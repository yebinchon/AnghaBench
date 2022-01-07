; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@TLB1_ENTRIES = common dso_local global i32 0, align 4
@MAS1_VALID = common dso_local global i32 0, align 4
@DMAP_BASE_ADDRESS = common dso_local global i64 0, align 8
@DMAP_MAX_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @mmu_booke_kextract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmu_booke_kextract(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @kernel_pmap, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @pte_vatopa(i32 %17, i32 %18, i64 %19)
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %16, %12, %2
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %60, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @TLB1_ENTRIES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @tlb1_read_entry(%struct.TYPE_3__* %6, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAS1_VALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %60

38:                                               ; preds = %29
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %39, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %54, %56
  %58 = add nsw i64 %53, %57
  store i64 %58, i64* %3, align 8
  br label %66

59:                                               ; preds = %43, %38
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %25

63:                                               ; preds = %25
  br label %64

64:                                               ; preds = %63, %21
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %64, %51
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local i64 @pte_vatopa(i32, i32, i64) #1

declare dso_local i32 @tlb1_read_entry(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

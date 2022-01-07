; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_free_contig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_free_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_NFREEORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_phys_free_contig(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @vm_pagequeue_domain(i64 %9)
  %11 = call i32 @vm_domain_free_assert_locked(i32 %10)
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @max_order(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @VM_NFREEORDER, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @max_order(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @VM_NFREEORDER, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %35, %25
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call i32 @vm_phys_enqueue_contig(i64 %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VM_NFREEORDER, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i64, i64* %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @vm_phys_free_pages(i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @VM_NFREEORDER, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @vm_phys_free_pages(i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @vm_domain_free_assert_locked(i32) #1

declare dso_local i32 @vm_pagequeue_domain(i64) #1

declare dso_local i32 @max_order(i64) #1

declare dso_local i32 @vm_phys_enqueue_contig(i64, i64) #1

declare dso_local i32 @vm_phys_free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

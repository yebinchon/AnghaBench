; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_pcpu_page_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_pcpu_page_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_maxid = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @pcpu_page_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_page_free(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @mp_maxid, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp eq i32 %11, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %38, %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @pmap_kextract(i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @PHYS_TO_VM_PAGE(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @vm_page_unwire_noq(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @vm_page_free(i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %8, align 8
  br label %22

43:                                               ; preds = %22
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = call i32 @pmap_qremove(i64 %44, i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @kva_free(i64 %49, i32 %50)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32) #1

declare dso_local i32 @vm_page_free(i32) #1

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i32 @kva_free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

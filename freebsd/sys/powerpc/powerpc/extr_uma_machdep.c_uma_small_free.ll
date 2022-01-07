; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_uma_machdep.c_uma_small_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_uma_machdep.c_uma_small_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_direct_map = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Freeing UMA block at %p with no associated page\00", align 1
@hw_uma_mdpages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uma_small_free(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @hw_direct_map, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @kernel_pmap, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @pmap_remove(i32 %11, i64 %13, i64 %17)
  br label %19

19:                                               ; preds = %10, %3
  %20 = load i64, i64* @hw_direct_map, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = call i64 @DMAP_TO_PHYS(i64 %24)
  %26 = call i32* @PHYS_TO_VM_PAGE(i64 %25)
  store i32* %26, i32** %7, align 8
  br label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** %4, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = call i32* @PHYS_TO_VM_PAGE(i64 %29)
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @KASSERT(i32 %34, i8* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @vm_page_unwire_noq(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @vm_page_free(i32* %39)
  %41 = call i32 @atomic_subtract_int(i32* @hw_uma_mdpages, i32 1)
  ret void
}

declare dso_local i32 @pmap_remove(i32, i64, i64) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i64 @DMAP_TO_PHYS(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_unwire_noq(i32*) #1

declare dso_local i32 @vm_page_free(i32*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_copy_pages_dmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_copy_pages_dmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32*, i64, i32)* @moea64_copy_pages_dmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_copy_pages_dmap(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  br label %18

18:                                               ; preds = %21, %6
  %19 = load i32, i32* %12, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i64, i64* %15, align 8
  %28 = sub i64 %26, %27
  %29 = call i32 @min(i32 %25, i64 %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VM_PAGE_TO_PHYS(i32 %35)
  %37 = call i64 @PHYS_TO_DMAP(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %13, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @PAGE_MASK, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* %16, align 8
  %47 = sub i64 %45, %46
  %48 = call i32 @min(i32 %44, i64 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @PAGE_SHIFT, align 8
  %52 = lshr i64 %50, %51
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @VM_PAGE_TO_PHYS(i32 %54)
  %56 = call i64 @PHYS_TO_DMAP(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  %58 = load i64, i64* %16, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @bcopy(i8* %60, i8* %61, i32 %62)
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %9, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %18

75:                                               ; preds = %18
  ret void
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memguard_options = common dso_local global i32 0, align 4
@MG_GUARD_AROUND = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@memguard_arena = common dso_local global i32 0, align 4
@VMEM_ALLOC = common dso_local global i32 0, align 4
@memguard_physlimit = common dso_local global i64 0, align 8
@memguard_fail_pgs = common dso_local global i32 0, align 4
@M_NEXTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@memguard_fail_kva = common dso_local global i32 0, align 4
@kernel_object = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@memguard_succ = common dso_local global i32 0, align 4
@memguard_wasted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memguard_alloc(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @round_page(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %126

18:                                               ; preds = %2
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @memguard_options, align 4
  %21 = load i32, i32* @MG_GUARD_AROUND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 2, %28
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %27, %18
  %34 = load i32, i32* @memguard_arena, align 4
  %35 = load i32, i32* @VMEM_ALLOC, align 4
  %36 = call i64 @vmem_size(i32 %34, i32 %35)
  %37 = load i64, i64* @memguard_physlimit, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  %45 = load i32, i32* @memguard_fail_pgs, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @memguard_fail_pgs, align 4
  br label %122

47:                                               ; preds = %39, %33
  %48 = load i32, i32* @memguard_arena, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* @M_NEXTFIT, align 4
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @vmem_alloc(i32 %48, i64 %49, i32 %52, i32* %7)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @memguard_fail_kva, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @memguard_fail_kva, align 4
  store i32 0, i32* %6, align 4
  br label %122

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @kernel_object, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @kmem_back(i32 %68, i32 %69, i64 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @KERN_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i32, i32* @memguard_arena, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @vmem_xfree(i32 %77, i32 %78, i64 %79)
  %81 = load i32, i32* @memguard_fail_pgs, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @memguard_fail_pgs, align 4
  store i32 0, i32* %6, align 4
  br label %122

83:                                               ; preds = %67
  %84 = load i64, i64* %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @trunc_page(i32 %85)
  %87 = call i64* @v2sizep(i32 %86)
  store i64 %84, i64* %87, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @trunc_page(i32 %89)
  %91 = call i64* @v2sizev(i32 %90)
  store i64 %88, i64* %91, align 8
  %92 = load i32, i32* @memguard_succ, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @memguard_succ, align 4
  %94 = load i64, i64* %4, align 8
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %83
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %4, align 8
  %102 = sub i64 %100, %101
  %103 = load i32, i32* @memguard_wasted, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* @memguard_wasted, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %98
  %110 = load i64, i64* %4, align 8
  %111 = call i64 @roundup2(i64 %110, i32 16)
  store i64 %111, i64* %4, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %4, align 8
  %115 = sub i64 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %109, %98
  br label %121

121:                                              ; preds = %120, %83
  br label %122

122:                                              ; preds = %121, %76, %56, %44
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  store i8* %125, i8** %3, align 8
  br label %126

126:                                              ; preds = %122, %17
  %127 = load i8*, i8** %3, align 8
  ret i8* %127
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @vmem_size(i32, i32) #1

declare dso_local i32 @vmem_alloc(i32, i64, i32, i32*) #1

declare dso_local i32 @kmem_back(i32, i32, i64, i32) #1

declare dso_local i32 @vmem_xfree(i32, i32, i64) #1

declare dso_local i64* @v2sizep(i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i64* @v2sizev(i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

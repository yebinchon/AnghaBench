; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_startup_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_startup_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_ndomains = common dso_local global i32 0, align 4
@ksize = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i32 0, align 4
@zsize = common dso_local global i32 0, align 4
@CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@UMA_BOOT_ZONES = common dso_local global i32 0, align 4
@UMA_SLAB_SPACE = common dso_local global i32 0, align 4
@UMA_BOOT_ALIGN = common dso_local global i32 0, align 4
@SIZEOF_UMA_SLAB = common dso_local global i64 0, align 8
@UMA_HASH_SIZE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uma_startup_count(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @vm_ndomains, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = add i64 4, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @ksize, align 4
  %11 = load i32, i32* @mp_maxid, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = add i64 4, %14
  %16 = load i32, i32* @vm_ndomains, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @zsize, align 4
  %21 = load i32, i32* @zsize, align 4
  %22 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %23 = call i32 @roundup(i32 %21, i32 %22)
  %24 = mul nsw i32 %23, 2
  %25 = load i32, i32* @ksize, align 4
  %26 = load i32, i32* @CACHE_LINE_SIZE, align 4
  %27 = call i32 @roundup(i32 %25, i32 %26)
  %28 = add nsw i32 %24, %27
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @howmany(i32 %28, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @UMA_BOOT_ZONES, align 4
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %35 = load i32, i32* @zsize, align 4
  %36 = load i32, i32* @UMA_SLAB_SPACE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %1
  %39 = load i32, i32* @zsize, align 4
  %40 = load i32, i32* @UMA_BOOT_ALIGN, align 4
  %41 = call i32 @roundup2(i32 %39, i32 %40)
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @howmany(i32 %41, i32 %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load i64, i64* %5, align 8
  %48 = mul nsw i64 %46, %47
  %49 = load i32, i32* @zsize, align 4
  %50 = load i32, i32* @UMA_BOOT_ALIGN, align 4
  %51 = call i32 @roundup2(i32 %49, i32 %50)
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %48, %52
  %54 = load i64, i64* @SIZEOF_UMA_SLAB, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %56, %38
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %5, align 8
  %65 = mul nsw i64 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %91

70:                                               ; preds = %1
  %71 = load i32, i32* @zsize, align 4
  %72 = load i32, i32* @UMA_BOOT_ALIGN, align 4
  %73 = call i32 @roundup2(i32 %71, i32 %72)
  %74 = load i32, i32* @UMA_SLAB_SPACE, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %90

80:                                               ; preds = %70
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @UMA_SLAB_SPACE, align 4
  %83 = load i32, i32* @zsize, align 4
  %84 = load i32, i32* @UMA_BOOT_ALIGN, align 4
  %85 = call i32 @roundup2(i32 %83, i32 %84)
  %86 = sdiv i32 %82, %85
  %87 = call i32 @howmany(i32 %81, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %80, %76
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @UMA_SLAB_SPACE, align 4
  %95 = load i32, i32* @ksize, align 4
  %96 = load i32, i32* @UMA_BOOT_ALIGN, align 4
  %97 = call i32 @roundup2(i32 %95, i32 %96)
  %98 = sdiv i32 %94, %97
  %99 = call i32 @howmany(i32 %93, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @UMA_SLAB_SPACE, align 4
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* @UMA_HASH_SIZE_INIT, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 8, %106
  %108 = udiv i64 %104, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @howmany(i32 %102, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

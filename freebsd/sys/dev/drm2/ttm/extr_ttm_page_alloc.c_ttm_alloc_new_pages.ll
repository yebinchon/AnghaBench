; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_alloc_new_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_alloc_new_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pglist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[TTM] Unable to get page %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pglist*, i32, i32, i32, i32)* @ttm_alloc_new_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_alloc_new_pages(%struct.pglist* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pglist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pglist* %0, %struct.pglist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @min(i32 %17, i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_TEMP, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i64* @malloc(i32 %26, i32 %27, i32 %30)
  store i64* %31, i64** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %95, %5
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @ttm_vm_page_alloc(i32 %37, i32 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i64*, i64** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @ttm_set_pages_caching(i64* %48, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.pglist*, %struct.pglist** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @ttm_handle_caching_state_failure(%struct.pglist* %55, i32 %56, i32 %57, i64* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %47
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %117

65:                                               ; preds = %36
  %66 = load i64, i64* %12, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = load i32, i32* %15, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  store i64 %66, i64* %71, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %65
  %76 = load i64*, i64** %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @ttm_set_pages_caching(i64* %76, i32 %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.pglist*, %struct.pglist** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i64*, i64** %11, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @ttm_handle_caching_state_failure(%struct.pglist* %83, i32 %84, i32 %85, i64* %86, i32 %87)
  br label %117

89:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %89, %65
  %91 = load %struct.pglist*, %struct.pglist** %6, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plinks, i32 0, i32 0), align 4
  %94 = call i32 @TAILQ_INSERT_HEAD(%struct.pglist* %91, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %32

98:                                               ; preds = %32
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i64*, i64** %11, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @ttm_set_pages_caching(i64* %102, i32 %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.pglist*, %struct.pglist** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i64*, i64** %11, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @ttm_handle_caching_state_failure(%struct.pglist* %109, i32 %110, i32 %111, i64* %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %101
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %82, %62
  %118 = load i64*, i64** %11, align 8
  %119 = load i32, i32* @M_TEMP, align 4
  %120 = call i32 @free(i64* %118, i32 %119)
  %121 = load i32, i32* %13, align 4
  ret i32 %121
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64* @malloc(i32, i32, i32) #1

declare dso_local i64 @ttm_vm_page_alloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ttm_set_pages_caching(i64*, i32, i32) #1

declare dso_local i32 @ttm_handle_caching_state_failure(%struct.pglist*, i32, i32, i64*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.pglist*, i64, i32) #1

declare dso_local i32 @free(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

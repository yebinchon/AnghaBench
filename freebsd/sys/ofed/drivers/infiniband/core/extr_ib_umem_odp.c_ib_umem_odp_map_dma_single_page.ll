; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem_odp.c_ib_umem_odp_map_dma_single_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_umem_odp.c_ib_umem_odp_map_dma_single_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.TYPE_3__ = type { i32*, %struct.page** }
%struct.page = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"error: got different pages in IB device and from get_user_pages. IB device page: %p, gup page: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_umem*, i32, i32, %struct.page*, i32, i64)* @ib_umem_odp_map_dma_single_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_umem_odp_map_dma_single_page(%struct.ib_umem* %0, i32 %1, i32 %2, %struct.page* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ib_umem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.ib_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ib_umem* %0, %struct.ib_umem** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %18 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %19 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.ib_device*, %struct.ib_device** %21, align 8
  store %struct.ib_device* %22, %struct.ib_device** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @ib_umem_mmu_notifier_retry(%struct.ib_umem* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %17, align 4
  br label %113

30:                                               ; preds = %6
  %31 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %32 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %30
  %42 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %43 = load %struct.page*, %struct.page** %10, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %46 = call i32 @ib_dma_map_page(%struct.ib_device* %42, %struct.page* %43, i32 0, i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @ib_dma_mapping_error(%struct.ib_device* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %17, align 4
  br label %113

54:                                               ; preds = %41
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %59 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %57, i32* %65, align 4
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %68 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.page**, %struct.page*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page*, %struct.page** %71, i64 %73
  store %struct.page* %66, %struct.page** %74, align 8
  store i32 1, i32* %15, align 4
  br label %112

75:                                               ; preds = %30
  %76 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %77 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.page**, %struct.page*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %82
  %84 = load %struct.page*, %struct.page** %83, align 8
  %85 = load %struct.page*, %struct.page** %10, align 8
  %86 = icmp eq %struct.page* %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %75
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %90 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %88
  store i32 %98, i32* %96, align 4
  br label %111

99:                                               ; preds = %75
  %100 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %101 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load %struct.page**, %struct.page*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.page*, %struct.page** %104, i64 %106
  %108 = load %struct.page*, %struct.page** %107, align 8
  %109 = load %struct.page*, %struct.page** %10, align 8
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), %struct.page* %108, %struct.page* %109)
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %99, %87
  br label %112

112:                                              ; preds = %111, %54
  br label %113

113:                                              ; preds = %112, %51, %27
  %114 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %115 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.page*, %struct.page** %10, align 8
  %125 = call i32 @put_page(%struct.page* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %126
  %130 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %131 = getelementptr inbounds %struct.ib_umem, %struct.ib_umem* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %129
  %137 = load %struct.ib_umem*, %struct.ib_umem** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @PAGE_SIZE, align 4
  %141 = mul nsw i32 %139, %140
  %142 = add nsw i32 %138, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %143, %147
  %149 = call i32 @invalidate_page_trampoline(%struct.ib_umem* %137, i32 %142, i32 %148, i32* null)
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %17, align 4
  br label %152

152:                                              ; preds = %136, %129, %126
  %153 = load i32, i32* %17, align 4
  ret i32 %153
}

declare dso_local i64 @ib_umem_mmu_notifier_retry(%struct.ib_umem*, i64) #1

declare dso_local i32 @ib_dma_map_page(%struct.ib_device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.page*, %struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @invalidate_page_trampoline(%struct.ib_umem*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

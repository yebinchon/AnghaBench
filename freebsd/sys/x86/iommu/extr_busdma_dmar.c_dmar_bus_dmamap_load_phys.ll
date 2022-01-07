; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { i32 }
%struct.bus_dmamap_dmar = type { i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32, i32, i32*, i32*)* @dmar_bus_dmamap_load_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dmamap_load_phys(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.bus_dma_tag_dmar*, align 8
  %17 = alloca %struct.bus_dmamap_dmar*, align 8
  %18 = alloca i32******, align 8
  %19 = alloca i32*****, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i64, i64* %9, align 8
  %29 = inttoptr i64 %28 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %29, %struct.bus_dma_tag_dmar** %16, align 8
  %30 = load i64, i64* %10, align 8
  %31 = inttoptr i64 %30 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %31, %struct.bus_dmamap_dmar** %17, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @trunc_page(i64 %32)
  store i64 %33, i64* %20, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = trunc i64 %37 to i32
  %39 = call i64 @round_page(i32 %38)
  store i64 %39, i64* %21, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @PAGE_MASK, align 8
  %42 = and i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %27, align 4
  %44 = load i64, i64* %21, align 8
  %45 = load i64, i64* %20, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @OFF_TO_IDX(i64 %46)
  store i32 %47, i32* %25, align 4
  %48 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %17, align 8
  %49 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %7
  %53 = load i32, i32* @M_WAITOK, align 4
  br label %56

54:                                               ; preds = %7
  %55 = load i32, i32* @M_NOWAIT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %26, align 4
  %58 = load i32, i32* %25, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = load i32, i32* %26, align 4
  %64 = call i8* @malloc(i32 %61, i32 %62, i32 %63)
  %65 = bitcast i8* %64 to i32******
  store i32****** %65, i32******* %18, align 8
  %66 = load i32******, i32******* %18, align 8
  %67 = icmp eq i32****** %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %8, align 4
  br label %165

70:                                               ; preds = %56
  store i32***** null, i32****** %19, align 8
  store i32 0, i32* %24, align 4
  br label %71

71:                                               ; preds = %144, %70
  %72 = load i32, i32* %24, align 4
  %73 = load i32, i32* %25, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %147

75:                                               ; preds = %71
  %76 = load i64, i64* %20, align 8
  %77 = load i32, i32* %24, align 4
  %78 = call i64 @ptoa(i32 %77)
  %79 = add nsw i64 %76, %78
  store i64 %79, i64* %22, align 8
  %80 = load i64, i64* %22, align 8
  %81 = call i32******* @PHYS_TO_VM_PAGE(i64 %80)
  %82 = bitcast i32******* %81 to i32*****
  %83 = load i32******, i32******* %18, align 8
  %84 = load i32, i32* %24, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*****, i32****** %83, i64 %85
  store i32***** %82, i32****** %86, align 8
  %87 = load i32******, i32******* %18, align 8
  %88 = load i32, i32* %24, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*****, i32****** %87, i64 %89
  %91 = load i32*****, i32****** %90, align 8
  %92 = icmp eq i32***** %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %75
  %94 = load i32******, i32******* %18, align 8
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*****, i32****** %94, i64 %96
  %98 = load i32*****, i32****** %97, align 8
  %99 = call i64 @VM_PAGE_TO_PHYS(i32***** %98)
  %100 = load i64, i64* %22, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %143

102:                                              ; preds = %93, %75
  %103 = load i32*****, i32****** %19, align 8
  %104 = icmp eq i32***** %103, null
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load i32, i32* %25, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @M_DEVBUF, align 4
  %111 = load i32, i32* @M_ZERO, align 4
  %112 = load i32, i32* %26, align 4
  %113 = or i32 %111, %112
  %114 = call i8* @malloc(i32 %109, i32 %110, i32 %113)
  %115 = bitcast i8* %114 to i32*****
  store i32***** %115, i32****** %19, align 8
  %116 = load i32*****, i32****** %19, align 8
  %117 = icmp eq i32***** %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %105
  %119 = load i32******, i32******* %18, align 8
  %120 = load i32, i32* @M_DEVBUF, align 4
  %121 = call i32 @free(i32****** %119, i32 %120)
  %122 = load i32, i32* @ENOMEM, align 4
  store i32 %122, i32* %8, align 4
  br label %165

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %102
  %125 = load i32*****, i32****** %19, align 8
  %126 = load i32, i32* %24, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32****, i32***** %125, i64 %127
  %129 = load i64, i64* %20, align 8
  %130 = load i32, i32* %24, align 4
  %131 = call i64 @ptoa(i32 %130)
  %132 = add nsw i64 %129, %131
  %133 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %134 = call i32 @vm_page_initfake(i32***** %128, i64 %132, i32 %133)
  %135 = load i32*****, i32****** %19, align 8
  %136 = load i32, i32* %24, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32****, i32***** %135, i64 %137
  %139 = load i32******, i32******* %18, align 8
  %140 = load i32, i32* %24, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*****, i32****** %139, i64 %141
  store i32***** %138, i32****** %142, align 8
  br label %143

143:                                              ; preds = %124, %93
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %24, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %24, align 4
  br label %71

147:                                              ; preds = %71
  %148 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %16, align 8
  %149 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %17, align 8
  %150 = load i32******, i32******* %18, align 8
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32*, i32** %14, align 8
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @dmar_bus_dmamap_load_something(%struct.bus_dma_tag_dmar* %148, %struct.bus_dmamap_dmar* %149, i32****** %150, i32 %151, i32 %152, i32 %153, i32* %154, i32* %155)
  store i32 %156, i32* %23, align 4
  %157 = load i32*****, i32****** %19, align 8
  %158 = bitcast i32***** %157 to i32******
  %159 = load i32, i32* @M_DEVBUF, align 4
  %160 = call i32 @free(i32****** %158, i32 %159)
  %161 = load i32******, i32******* %18, align 8
  %162 = load i32, i32* @M_DEVBUF, align 4
  %163 = call i32 @free(i32****** %161, i32 %162)
  %164 = load i32, i32* %23, align 4
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %147, %118, %68
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32******* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(i32*****) #1

declare dso_local i32 @free(i32******, i32) #1

declare dso_local i32 @vm_page_initfake(i32*****, i64, i32) #1

declare dso_local i32 @dmar_bus_dmamap_load_something(%struct.bus_dma_tag_dmar*, %struct.bus_dmamap_dmar*, i32******, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_bus_dmamap_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_dma_tag_dmar = type { i32 }
%struct.bus_dmamap_dmar = type { i64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@M_ZERO = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*, i32, i64, i32, i32*, i32*)* @dmar_bus_dmamap_load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_bus_dmamap_load_buffer(i64 %0, i64 %1, i8* %2, i32 %3, i64 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.bus_dma_tag_dmar*, align 8
  %19 = alloca %struct.bus_dmamap_dmar*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %30 = load i64, i64* %10, align 8
  %31 = inttoptr i64 %30 to %struct.bus_dma_tag_dmar*
  store %struct.bus_dma_tag_dmar* %31, %struct.bus_dma_tag_dmar** %18, align 8
  %32 = load i64, i64* %11, align 8
  %33 = inttoptr i64 %32 to %struct.bus_dmamap_dmar*
  store %struct.bus_dmamap_dmar* %33, %struct.bus_dmamap_dmar** %19, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = call i64 @trunc_page(i32 %35)
  store i64 %36, i64* %22, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i64 @round_page(i32 %40)
  store i64 %41, i64* %23, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32, i32* @PAGE_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %29, align 4
  %46 = load i64, i64* %23, align 8
  %47 = load i64, i64* %22, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i32 @OFF_TO_IDX(i64 %48)
  store i32 %49, i32* %27, align 4
  %50 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %19, align 8
  %51 = getelementptr inbounds %struct.bus_dmamap_dmar, %struct.bus_dmamap_dmar* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %8
  %55 = load i32, i32* @M_WAITOK, align 4
  br label %58

56:                                               ; preds = %8
  %57 = load i32, i32* @M_NOWAIT, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %28, align 4
  %60 = load i32, i32* %27, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @M_DEVBUF, align 4
  %65 = load i32, i32* %28, align 4
  %66 = call i8* @malloc(i32 %63, i32 %64, i32 %65)
  %67 = bitcast i8* %66 to i32**
  store i32** %67, i32*** %20, align 8
  %68 = load i32**, i32*** %20, align 8
  %69 = icmp eq i32** %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %9, align 4
  br label %174

72:                                               ; preds = %58
  store i32* null, i32** %21, align 8
  store i32 0, i32* %26, align 4
  br label %73

73:                                               ; preds = %150, %72
  %74 = load i32, i32* %26, align 4
  %75 = load i32, i32* %27, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %156

77:                                               ; preds = %73
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @kernel_pmap, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* %22, align 8
  %83 = call i64 @pmap_kextract(i64 %82)
  store i64 %83, i64* %24, align 8
  br label %88

84:                                               ; preds = %77
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %22, align 8
  %87 = call i64 @pmap_extract(i64 %85, i64 %86)
  store i64 %87, i64* %24, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i64, i64* %24, align 8
  %90 = call i32* @PHYS_TO_VM_PAGE(i64 %89)
  %91 = load i32**, i32*** %20, align 8
  %92 = load i32, i32* %26, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  store i32* %90, i32** %94, align 8
  %95 = load i32**, i32*** %20, align 8
  %96 = load i32, i32* %26, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %88
  %102 = load i32**, i32*** %20, align 8
  %103 = load i32, i32* %26, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @VM_PAGE_TO_PHYS(i32* %106)
  %108 = load i64, i64* %24, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %149

110:                                              ; preds = %101, %88
  %111 = load i32*, i32** %21, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = load i32, i32* %27, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @M_DEVBUF, align 4
  %119 = load i32, i32* @M_ZERO, align 4
  %120 = load i32, i32* %28, align 4
  %121 = or i32 %119, %120
  %122 = call i8* @malloc(i32 %117, i32 %118, i32 %121)
  %123 = bitcast i8* %122 to i32*
  store i32* %123, i32** %21, align 8
  %124 = load i32*, i32** %21, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %113
  %127 = load i32**, i32*** %20, align 8
  %128 = bitcast i32** %127 to i32*
  %129 = load i32, i32* @M_DEVBUF, align 4
  %130 = call i32 @free(i32* %128, i32 %129)
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* %9, align 4
  br label %174

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %110
  %134 = load i32*, i32** %21, align 8
  %135 = load i32, i32* %26, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i64, i64* %24, align 8
  %139 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %140 = call i32 @vm_page_initfake(i32* %137, i64 %138, i32 %139)
  %141 = load i32*, i32** %21, align 8
  %142 = load i32, i32* %26, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32**, i32*** %20, align 8
  %146 = load i32, i32* %26, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  store i32* %144, i32** %148, align 8
  br label %149

149:                                              ; preds = %133, %101
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %26, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %26, align 4
  %153 = load i64, i64* @PAGE_SIZE, align 8
  %154 = load i64, i64* %22, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %22, align 8
  br label %73

156:                                              ; preds = %73
  %157 = load %struct.bus_dma_tag_dmar*, %struct.bus_dma_tag_dmar** %18, align 8
  %158 = load %struct.bus_dmamap_dmar*, %struct.bus_dmamap_dmar** %19, align 8
  %159 = load i32**, i32*** %20, align 8
  %160 = load i32, i32* %29, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = load i32*, i32** %17, align 8
  %165 = call i32 @dmar_bus_dmamap_load_something(%struct.bus_dma_tag_dmar* %157, %struct.bus_dmamap_dmar* %158, i32** %159, i32 %160, i32 %161, i32 %162, i32* %163, i32* %164)
  store i32 %165, i32* %25, align 4
  %166 = load i32**, i32*** %20, align 8
  %167 = bitcast i32** %166 to i32*
  %168 = load i32, i32* @M_DEVBUF, align 4
  %169 = call i32 @free(i32* %167, i32 %168)
  %170 = load i32*, i32** %21, align 8
  %171 = load i32, i32* @M_DEVBUF, align 4
  %172 = call i32 @free(i32* %170, i32 %171)
  %173 = load i32, i32* %25, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %156, %126, %70
  %175 = load i32, i32* %9, align 4
  ret i32 %175
}

declare dso_local i64 @trunc_page(i32) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @pmap_kextract(i64) #1

declare dso_local i64 @pmap_extract(i64, i64) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @vm_page_initfake(i32*, i64, i32) #1

declare dso_local i32 @dmar_bus_dmamap_load_something(%struct.bus_dma_tag_dmar*, %struct.bus_dmamap_dmar*, i32**, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_advise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MADV_DONTNEED = common dso_local global i32 0, align 4
@MADV_FREE = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PTE_MANAGED = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PV_TABLE_REF = common dso_local global i32 0, align 4
@PTE_D = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@NBSEG = common dso_local global i32 0, align 4
@SEGMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_advise(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MADV_DONTNEED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MADV_FREE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %160

24:                                               ; preds = %19, %4
  %25 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @PMAP_LOCK(i32 %26)
  br label %28

28:                                               ; preds = %154, %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %156

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64* @pmap_segmap(i32 %33, i32 %34)
  store i64* %35, i64** %10, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NBPDR, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @PDRMASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load i64*, i64** %10, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64* @pmap_pdpe_to_pde(i64* %48, i32 %49)
  store i64* %50, i64** %9, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %154

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i64*, i64** %9, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32* @pmap_pde_to_pte(i64* %64, i32 %65)
  store i32* %66, i32** %11, align 8
  br label %67

67:                                               ; preds = %136, %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %144

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @PTE_MANAGED, align 4
  %74 = load i32, i32* @PTE_V, align 4
  %75 = or i32 %73, %74
  %76 = call i64 @pte_test(i32* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @pmap_invalidate_range(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %82, %78
  br label %136

89:                                               ; preds = %71
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TLBLO_PTE_TO_PA(i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32 %93)
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %15, align 8
  %95 = load i32, i32* @PV_TABLE_REF, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* @PTE_D, align 4
  %104 = call i64 @pte_test(i32* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %89
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @MADV_DONTNEED, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %112 = call i32 @vm_page_dirty(%struct.TYPE_6__* %111)
  br label %123

113:                                              ; preds = %106
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* @PTE_D, align 4
  %116 = call i32 @pte_clear(i32* %114, i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %120, %113
  br label %123

123:                                              ; preds = %122, %110
  br label %135

124:                                              ; preds = %89
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @pmap_invalidate_range(i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %128, %124
  br label %135

135:                                              ; preds = %134, %123
  br label %136

136:                                              ; preds = %135, %88
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %11, align 8
  %139 = load i64, i64* @PAGE_SIZE, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %6, align 4
  br label %67

144:                                              ; preds = %67
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @pmap_invalidate_range(i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %144
  br label %154

154:                                              ; preds = %153, %55
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %6, align 4
  br label %28

156:                                              ; preds = %28
  %157 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @PMAP_UNLOCK(i32 %158)
  br label %160

160:                                              ; preds = %156, %23
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i64* @pmap_segmap(i32, i32) #1

declare dso_local i64* @pmap_pdpe_to_pde(i64*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i64*, i32) #1

declare dso_local i64 @pte_test(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

declare dso_local i32 @TLBLO_PTE_TO_PA(i32) #1

declare dso_local %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_6__*) #1

declare dso_local i32 @pte_clear(i32*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

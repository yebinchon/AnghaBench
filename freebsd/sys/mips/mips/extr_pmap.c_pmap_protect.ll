; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PTE_RO = common dso_local global i32 0, align 4
@PTE_D = common dso_local global i32 0, align 4
@PTE_MANAGED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@NBSEG = common dso_local global i32 0, align 4
@SEGMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_protect(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @VM_PROT_READ, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @VM_PROT_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pmap_remove(i32 %23, i32 %24, i32 %25)
  br label %163

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @VM_PROT_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %163

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @PMAP_LOCK(i32 %34)
  br label %36

36:                                               ; preds = %158, %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %160

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64* @pmap_segmap(i32 %41, i32 %42)
  store i64* %43, i64** %12, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NBPDR, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @PDRMASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i64*, i64** %12, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64* @pmap_pdpe_to_pde(i64* %56, i32 %57)
  store i64* %58, i64** %11, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %158

64:                                               ; preds = %55
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i64*, i64** %11, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32* @pmap_pde_to_pte(i64* %72, i32 %73)
  store i32* %74, i32** %10, align 8
  br label %75

75:                                               ; preds = %140, %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %148

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @PTE_V, align 4
  %83 = call i64 @pte_test(i32* %9, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @PTE_RO, align 4
  %87 = call i64 @pte_test(i32* %9, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85, %79
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @pmap_invalidate_range(i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %93, %89
  br label %140

100:                                              ; preds = %85
  %101 = load i32, i32* @PTE_RO, align 4
  %102 = call i32 @pte_set(i32* %9, i32 %101)
  %103 = load i32, i32* @PTE_D, align 4
  %104 = call i64 @pte_test(i32* %9, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %100
  %107 = load i32, i32* @PTE_D, align 4
  %108 = call i32 @pte_clear(i32* %9, i32 %107)
  %109 = load i32, i32* @PTE_MANAGED, align 4
  %110 = call i64 @pte_test(i32* %9, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @TLBLO_PTE_TO_PA(i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @PHYS_TO_VM_PAGE(i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @vm_page_dirty(i32 %117)
  br label %119

119:                                              ; preds = %112, %106
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %123, %119
  br label %137

126:                                              ; preds = %100
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @pmap_invalidate_range(i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %130, %126
  br label %137

137:                                              ; preds = %136, %125
  %138 = load i32, i32* %9, align 4
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %99
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %10, align 8
  %143 = load i64, i64* @PAGE_SIZE, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %6, align 4
  br label %75

148:                                              ; preds = %75
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @pmap_invalidate_range(i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %148
  br label %158

158:                                              ; preds = %157, %63
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %6, align 4
  br label %36

160:                                              ; preds = %36
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @PMAP_UNLOCK(i32 %161)
  br label %163

163:                                              ; preds = %160, %32, %22
  ret void
}

declare dso_local i32 @pmap_remove(i32, i32, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i64* @pmap_segmap(i32, i32) #1

declare dso_local i64* @pmap_pdpe_to_pde(i64*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i64*, i32) #1

declare dso_local i64 @pte_test(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

declare dso_local i32 @pte_set(i32*, i32) #1

declare dso_local i32 @pte_clear(i32*, i32) #1

declare dso_local i32 @TLBLO_PTE_TO_PA(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

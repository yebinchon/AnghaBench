; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_change_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_change_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i32 }

@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@tlb1_map_base = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TLB1_ENTRIES = common dso_local global i32 0, align 4
@MAS1_VALID = common dso_local global i32 0, align 4
@MAS2_WIMGE_MASK = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@tlbivax_mutex = common dso_local global i32 0, align 4
@PTE_MAS2_MASK = common dso_local global i32 0, align 4
@PTE_MAS2_SHIFT = common dso_local global i32 0, align 4
@DMAP_BASE_ADDRESS = common dso_local global i64 0, align 8
@DMAP_MAX_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32)* @mmu_booke_change_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_booke_change_attr(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @trunc_page(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @tlb1_map_base, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %24, %4
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %204

34:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @TLB1_ENTRIES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @tlb1_read_entry(%struct.TYPE_4__* %14, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MAS1_VALID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %63

48:                                               ; preds = %39
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %56, %58
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %66

62:                                               ; preds = %53, %48
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %35

66:                                               ; preds = %61, %35
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @TLB1_ENTRIES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %138

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i64, i64* %7, align 8
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %98, %70
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add nsw i64 %75, %76
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @tlb1_read_entry(%struct.TYPE_4__* %14, i32 %80)
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %7, align 8
  %90 = sub nsw i64 %88, %89
  %91 = sub nsw i64 %87, %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86, %79
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %5, align 4
  br label %204

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %10, align 8
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %73

105:                                              ; preds = %73
  %106 = load i64, i64* %7, align 8
  store i64 %106, i64* %10, align 8
  br label %107

107:                                              ; preds = %130, %105
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add nsw i64 %109, %110
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @tlb1_read_entry(%struct.TYPE_4__* %14, i32 %114)
  %116 = load i32, i32* @MAS2_WIMGE_MASK, align 4
  %117 = xor i32 %116, -1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %117
  store i32 %120, i32* %118, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @tlb_calc_wimg(i32 %122, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @tlb1_write_entry(%struct.TYPE_4__* %14, i32 %128)
  br label %130

130:                                              ; preds = %113
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %107

137:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %204

138:                                              ; preds = %66
  %139 = load i64, i64* %7, align 8
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %160, %138
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = add nsw i64 %142, %143
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %140
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @kernel_pmap, align 4
  %149 = load i64, i64* %10, align 8
  %150 = call i32* @pte_find(i32 %147, i32 %148, i64 %149)
  store i32* %150, i32** %11, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %146
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @PTE_ISVALID(i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153, %146
  %158 = load i32, i32* @EINVAL, align 4
  store i32 %158, i32* %5, align 4
  br label %204

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* @PAGE_SIZE, align 8
  %162 = load i64, i64* %10, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %10, align 8
  br label %140

164:                                              ; preds = %140
  %165 = call i32 @mtx_lock_spin(i32* @tlbivax_mutex)
  %166 = call i32 (...) @tlb_miss_lock()
  %167 = load i64, i64* %7, align 8
  store i64 %167, i64* %10, align 8
  br label %168

168:                                              ; preds = %197, %164
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* %8, align 8
  %172 = add nsw i64 %170, %171
  %173 = icmp slt i64 %169, %172
  br i1 %173, label %174, label %201

174:                                              ; preds = %168
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @kernel_pmap, align 4
  %177 = load i64, i64* %10, align 8
  %178 = call i32* @pte_find(i32 %175, i32 %176, i64 %177)
  store i32* %178, i32** %11, align 8
  %179 = load i32, i32* @PTE_MAS2_MASK, align 4
  %180 = load i32, i32* @PTE_MAS2_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = xor i32 %181, -1
  %183 = load i32*, i32** %11, align 8
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, %182
  store i32 %185, i32* %183, align 4
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 @PTE_PA(i32* %186)
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @tlb_calc_wimg(i32 %187, i32 %188)
  %190 = load i32, i32* @PTE_MAS2_SHIFT, align 4
  %191 = shl i32 %189, %190
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %191
  store i32 %194, i32* %192, align 4
  %195 = load i64, i64* %10, align 8
  %196 = call i32 @tlb0_flush_entry(i64 %195)
  br label %197

197:                                              ; preds = %174
  %198 = load i64, i64* @PAGE_SIZE, align 8
  %199 = load i64, i64* %10, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %10, align 8
  br label %168

201:                                              ; preds = %168
  %202 = call i32 (...) @tlb_miss_unlock()
  %203 = call i32 @mtx_unlock_spin(i32* @tlbivax_mutex)
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %201, %157, %137, %95, %32
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @tlb1_read_entry(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @tlb_calc_wimg(i32, i32) #1

declare dso_local i32 @tlb1_write_entry(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @pte_find(i32, i32, i64) #1

declare dso_local i32 @PTE_ISVALID(i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @tlb_miss_lock(...) #1

declare dso_local i32 @PTE_PA(i32*) #1

declare dso_local i32 @tlb0_flush_entry(i64) #1

declare dso_local i32 @tlb_miss_unlock(...) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_growkernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_growkernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@kernel_map = common dso_local global %struct.TYPE_8__* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@kernel_vm_end = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@L1_SHIFT = common dso_local global i32 0, align 4
@VM_ALLOC_INTERRUPT = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pmap_growkernel: no memory to grow kernel\00", align 1
@PG_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PTE_PPN0_S = common dso_local global i32 0, align 4
@PTE_RWX = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@L2_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_growkernel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @L2_SIZE, align 4
  %15 = call i32 @roundup2(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %19 = call i32 @vm_map_max(%struct.TYPE_8__* %18)
  %20 = icmp sge i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %23 = call i32 @vm_map_max(%struct.TYPE_8__* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %1
  br label %25

25:                                               ; preds = %171, %112, %62, %24
  %26 = load i32, i32* @kernel_vm_end, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %172

29:                                               ; preds = %25
  %30 = load i32, i32* @kernel_pmap, align 4
  %31 = load i32, i32* @kernel_vm_end, align 4
  %32 = call i32* @pmap_l1(i32 %30, i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @pmap_load(i32* %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %29
  %37 = load i32, i32* @kernel_vm_end, align 4
  %38 = load i32, i32* @L1_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %41 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.TYPE_7__* @vm_page_alloc(i32* null, i32 %39, i32 %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = icmp eq %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %36
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PG_ZERO, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @pmap_zero_page(%struct.TYPE_7__* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @PTE_V, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PTE_PPN0_S, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @pmap_store(i32* %74, i32 %75)
  %77 = load i32, i32* @kernel_pmap, align 4
  %78 = load i32, i32* @kernel_vm_end, align 4
  %79 = call i32 @pmap_l1_index(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @pmap_distribute_l1(i32 %77, i32 %79, i32 %80)
  br label %25

82:                                               ; preds = %29
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* @kernel_vm_end, align 4
  %85 = call i32* @pmap_l1_to_l2(i32* %83, i32 %84)
  store i32* %85, i32** %6, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @pmap_load(i32* %86)
  %88 = load i32, i32* @PTE_V, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %82
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @pmap_load(i32* %92)
  %94 = load i32, i32* @PTE_RWX, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load i32, i32* @kernel_vm_end, align 4
  %99 = load i32, i32* @L2_SIZE, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @L2_OFFSET, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  store i32 %103, i32* @kernel_vm_end, align 4
  %104 = load i32, i32* @kernel_vm_end, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %107 = call i32 @vm_map_max(%struct.TYPE_8__* %106)
  %108 = icmp sge i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %111 = call i32 @vm_map_max(%struct.TYPE_8__* %110)
  store i32 %111, i32* @kernel_vm_end, align 4
  br label %172

112:                                              ; preds = %97
  br label %25

113:                                              ; preds = %91, %82
  %114 = load i32, i32* @kernel_vm_end, align 4
  %115 = load i32, i32* @L2_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = load i32, i32* @VM_ALLOC_INTERRUPT, align 4
  %118 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %123 = or i32 %121, %122
  %124 = call %struct.TYPE_7__* @vm_page_alloc(i32* null, i32 %116, i32 %123)
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %4, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = icmp eq %struct.TYPE_7__* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %113
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PG_ZERO, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = call i32 @pmap_zero_page(%struct.TYPE_7__* %137)
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = sdiv i32 %142, %143
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* @PTE_V, align 4
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @PTE_PPN0_S, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %7, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %7, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @pmap_store(i32* %151, i32 %152)
  %154 = load i32, i32* @kernel_pmap, align 4
  %155 = load i32, i32* @kernel_vm_end, align 4
  %156 = call i32 @pmap_invalidate_page(i32 %154, i32 %155)
  %157 = load i32, i32* @kernel_vm_end, align 4
  %158 = load i32, i32* @L2_SIZE, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* @L2_OFFSET, align 4
  %161 = xor i32 %160, -1
  %162 = and i32 %159, %161
  store i32 %162, i32* @kernel_vm_end, align 4
  %163 = load i32, i32* @kernel_vm_end, align 4
  %164 = sub nsw i32 %163, 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %166 = call i32 @vm_map_max(%struct.TYPE_8__* %165)
  %167 = icmp sge i32 %164, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %139
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_map, align 8
  %170 = call i32 @vm_map_max(%struct.TYPE_8__* %169)
  store i32 %170, i32* @kernel_vm_end, align 4
  br label %172

171:                                              ; preds = %139
  br label %25

172:                                              ; preds = %168, %109, %25
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_8__*) #1

declare dso_local i32* @pmap_l1(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local %struct.TYPE_7__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__*) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @pmap_distribute_l1(i32, i32, i32) #1

declare dso_local i32 @pmap_l1_index(i32) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_enter_quick_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_enter_quick_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }

@kmi = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"pmap_enter_quick_locked: managed mapping within the clean submap\00", align 1
@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PTE_RO = common dso_local global i32 0, align 4
@PTE_MANAGED = common dso_local global i32 0, align 4
@PTE_G = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_26__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_30__*, i32, %struct.TYPE_29__*, i32, %struct.TYPE_29__*)* @pmap_enter_quick_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @pmap_enter_quick_locked(%struct.TYPE_30__* %0, i32 %1, %struct.TYPE_29__* %2, i32 %3, %struct.TYPE_29__* %4) #0 {
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_29__* %4, %struct.TYPE_29__** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @kmi, i32 0, i32 1), align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @kmi, i32 0, i32 0), align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VPO_UNMANAGED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %24, %20, %5
  %32 = phi i1 [ true, %20 ], [ true, %5 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @RA_WLOCKED, align 4
  %36 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %35)
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %38 = load i32, i32* @MA_OWNED, align 4
  %39 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_30__* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pmap_pde_pindex(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %47 = icmp ne %struct.TYPE_29__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %89

59:                                               ; preds = %48, %43
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64* @pmap_pde(%struct.TYPE_30__* %60, i32 %61)
  store i64* %62, i64** %15, align 8
  %63 = load i64*, i64** %15, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i64*, i64** %15, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i64*, i64** %15, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @MIPS_DIRECT_TO_PHYS(i64 %71)
  %73 = call %struct.TYPE_29__* @PHYS_TO_VM_PAGE(i32 %72)
  store %struct.TYPE_29__* %73, %struct.TYPE_29__** %11, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %88

78:                                               ; preds = %65, %59
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %82 = call %struct.TYPE_29__* @_pmap_allocpte(%struct.TYPE_30__* %79, i32 %80, i32 %81)
  store %struct.TYPE_29__* %82, %struct.TYPE_29__** %11, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %84 = icmp eq %struct.TYPE_29__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %86, %struct.TYPE_29__** %6, align 8
  br label %193

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %54
  br label %91

90:                                               ; preds = %31
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %11, align 8
  br label %91

91:                                               ; preds = %90, %89
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32* @pmap_pte(%struct.TYPE_30__* %92, i32 %93)
  store i32* %94, i32** %12, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @PTE_V, align 4
  %97 = call i64 @pte_test(i32* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %91
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %101 = icmp ne %struct.TYPE_29__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 4
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %11, align 8
  br label %107

107:                                              ; preds = %102, %99
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %108, %struct.TYPE_29__** %6, align 8
  br label %193

109:                                              ; preds = %91
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @VPO_UNMANAGED, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %109
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %121 = call i32 @pmap_try_insert_pv_entry(%struct.TYPE_30__* %117, %struct.TYPE_29__* %118, i32 %119, %struct.TYPE_29__* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %116
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %125 = icmp ne %struct.TYPE_29__* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %130 = call i32 @pmap_unwire_ptp(%struct.TYPE_30__* %127, i32 %128, %struct.TYPE_29__* %129)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %11, align 8
  br label %131

131:                                              ; preds = %126, %123
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %132, %struct.TYPE_29__** %6, align 8
  br label %193

133:                                              ; preds = %116, %109
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %140 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_29__* %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* @PTE_RO, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @TLBLO_PA_TO_PFN(i32 %142)
  %144 = or i32 %141, %143
  %145 = load i32, i32* @PTE_V, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %13, align 4
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @VPO_UNMANAGED, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %133
  %154 = load i32, i32* @PTE_MANAGED, align 4
  %155 = load i32, i32* %13, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %153, %133
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %161 = call i32 @PMAP_PTE_SET_CACHE_BITS(i32 %158, i32 %159, %struct.TYPE_29__* %160)
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %163 = call i64 @is_kernel_pmap(%struct.TYPE_30__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @PTE_G, align 4
  %168 = or i32 %166, %167
  %169 = load i32*, i32** %12, align 8
  store i32 %168, i32* %169, align 4
  br label %191

170:                                              ; preds = %157
  %171 = load i32, i32* %13, align 4
  %172 = load i32*, i32** %12, align 8
  store i32 %171, i32* %172, align 4
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** @curproc, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 0
  %178 = icmp eq %struct.TYPE_30__* %173, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %170
  %180 = load i32, i32* @PAGE_MASK, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @PAGE_SIZE, align 4
  %186 = call i32 @mips_icache_sync_range(i32 %184, i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @PAGE_SIZE, align 4
  %189 = call i32 @mips_dcache_wbinv_range(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %179, %170
  br label %191

191:                                              ; preds = %190, %165
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %192, %struct.TYPE_29__** %6, align 8
  br label %193

193:                                              ; preds = %191, %131, %107, %85
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  ret %struct.TYPE_29__* %194
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @pmap_pde_pindex(i32) #1

declare dso_local i64* @pmap_pde(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_29__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @MIPS_DIRECT_TO_PHYS(i64) #1

declare dso_local %struct.TYPE_29__* @_pmap_allocpte(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32* @pmap_pte(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @pte_test(i32*, i32) #1

declare dso_local i32 @pmap_try_insert_pv_entry(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @pmap_unwire_ptp(%struct.TYPE_30__*, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_29__*) #1

declare dso_local i32 @TLBLO_PA_TO_PFN(i32) #1

declare dso_local i32 @PMAP_PTE_SET_CACHE_BITS(i32, i32, %struct.TYPE_29__*) #1

declare dso_local i64 @is_kernel_pmap(%struct.TYPE_30__*) #1

declare dso_local i32 @mips_icache_sync_range(i32, i32) #1

declare dso_local i32 @mips_dcache_wbinv_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

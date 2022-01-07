; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_enter_quick_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_enter_quick_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.spglist = type { i32 }

@kernel_pmap = common dso_local global %struct.TYPE_27__* null, align 8
@kmi = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"pmap_enter_quick_locked: managed mapping within the clean submap\00", align 1
@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PDRSHIFT = common dso_local global i64 0, align 8
@PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@i386_read_exec = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_27__*, i64, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)* @pmap_enter_quick_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @pmap_enter_quick_locked(%struct.TYPE_27__* %0, i64 %1, %struct.TYPE_26__* %2, i32 %3, %struct.TYPE_26__* %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %11, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** @kernel_pmap, align 8
  %19 = icmp ne %struct.TYPE_27__* %17, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @kmi, i32 0, i32 0), align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @kmi, i32 0, i32 1), align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VPO_UNMANAGED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %28, %24, %20, %5
  %36 = phi i1 [ true, %24 ], [ true, %20 ], [ true, %5 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @RA_WLOCKED, align 4
  %40 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %39)
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %42 = load i32, i32* @MA_OWNED, align 4
  %43 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_27__* %41, i32 %42)
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** @kernel_pmap, align 8
  %46 = icmp ne %struct.TYPE_27__* %44, %45
  br i1 %46, label %47, label %100

47:                                               ; preds = %35
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @PDRSHIFT, align 8
  %50 = lshr i64 %48, %49
  store i64 %50, i64* %15, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %52 = icmp ne %struct.TYPE_26__* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %15, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %99

64:                                               ; preds = %53, %47
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %64
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @PG_PS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %6, align 8
  br label %192

79:                                               ; preds = %73
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @PG_FRAME, align 4
  %82 = and i32 %80, %81
  %83 = call %struct.TYPE_26__* @PHYS_TO_VM_PAGE(i32 %82)
  store %struct.TYPE_26__* %83, %struct.TYPE_26__** %11, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %98

88:                                               ; preds = %64
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %92 = call %struct.TYPE_26__* @_pmap_allocpte(%struct.TYPE_27__* %89, i64 %90, i32 %91)
  store %struct.TYPE_26__* %92, %struct.TYPE_26__** %11, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %94 = icmp eq %struct.TYPE_26__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %6, align 8
  br label %192

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %59
  br label %101

100:                                              ; preds = %35
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  br label %101

101:                                              ; preds = %100, %99
  %102 = call i32 (...) @sched_pin()
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32* @pmap_pte_quick(%struct.TYPE_27__* %103, i64 %104)
  store i32* %105, i32** %13, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %101
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %111 = icmp ne %struct.TYPE_26__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  br label %117

117:                                              ; preds = %112, %109
  %118 = call i32 (...) @sched_unpin()
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %119, %struct.TYPE_26__** %6, align 8
  br label %192

120:                                              ; preds = %101
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @VPO_UNMANAGED, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %120
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %131 = call i32 @pmap_try_insert_pv_entry(%struct.TYPE_27__* %128, i64 %129, %struct.TYPE_26__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %135 = icmp ne %struct.TYPE_26__* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %140 = call i64 @pmap_unwire_ptp(%struct.TYPE_27__* %138, %struct.TYPE_26__* %139, %struct.spglist* %14)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @pmap_invalidate_page_int(%struct.TYPE_27__* %143, i64 %144)
  %146 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  br label %147

147:                                              ; preds = %142, %136
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  br label %148

148:                                              ; preds = %147, %133
  %149 = call i32 (...) @sched_unpin()
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %150, %struct.TYPE_26__** %6, align 8
  br label %192

151:                                              ; preds = %127, %120
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %158 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_26__* %157)
  %159 = load i32, i32* @PG_V, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @pmap_cache_bits(%struct.TYPE_27__* %161, i32 %165, i32 0)
  %167 = or i32 %160, %166
  store i32 %167, i32* %12, align 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @VPO_UNMANAGED, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %151
  %175 = load i32, i32* @PG_MANAGED, align 4
  %176 = load i32, i32* %12, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %12, align 4
  br label %178

178:                                              ; preds = %174, %151
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** @kernel_pmap, align 8
  %181 = icmp ne %struct.TYPE_27__* %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32, i32* @PG_U, align 4
  %184 = load i32, i32* %12, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %182, %178
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @pte_store_zero(i32* %187, i32 %188)
  %190 = call i32 (...) @sched_unpin()
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %191, %struct.TYPE_26__** %6, align 8
  br label %192

192:                                              ; preds = %186, %148, %117, %95, %78
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  ret %struct.TYPE_26__* %193
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_26__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.TYPE_26__* @_pmap_allocpte(%struct.TYPE_27__*, i64, i32) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32* @pmap_pte_quick(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @pmap_try_insert_pv_entry(%struct.TYPE_27__*, i64, %struct.TYPE_26__*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @pmap_unwire_ptp(%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page_int(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_cache_bits(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @pte_store_zero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

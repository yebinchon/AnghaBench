; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_enter_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_enter_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.spglist = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pmap_enter_pde: newpde is missing PG_M\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_15__* null, align 8
@PG_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"pmap_enter_pde: cannot create wired user mapping\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PMAP_ENTER_NOREPLACE = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"pmap_enter_pde: failure for va %#lx in pmap %p\00", align 1
@KERN_FAILURE = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_G = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i64 0, align 8
@PG_FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"pmap_enter_pde: trie insert failed\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"pmap_enter_pde: non-zero pde %p\00", align 1
@PG_MANAGED = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@pmap_pde_mappings = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"pmap_enter_pde: success for va %#lx in pmap %p\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i32, i32, i32*)* @pmap_enter_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_pde(%struct.TYPE_15__* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.spglist, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @RA_WLOCKED, align 4
  %17 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @PG_M, align 4
  %20 = load i32, i32* @PG_RW, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @PG_RW, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kernel_pmap, align 8
  %29 = icmp eq %struct.TYPE_15__* %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PG_W, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %30, %5
  %36 = phi i1 [ true, %5 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = load i32, i32* @MA_OWNED, align 4
  %41 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_15__* %39, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32* @pmap_pde(%struct.TYPE_15__* %42, i64 %43)
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @PG_V, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %122

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @PMAP_ENTER_NOREPLACE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @KTR_PMAP, align 4
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = call i32 @CTR2(i32 %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %58, %struct.TYPE_15__* %59)
  %61 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %61, i32* %6, align 4
  br label %197

62:                                               ; preds = %51
  %63 = call i32 @SLIST_INIT(%struct.spglist* %12)
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @PG_PS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @pmap_remove_pde(%struct.TYPE_15__* %69, i32* %70, i64 %71, %struct.spglist* %12)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @PG_G, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @pmap_invalidate_pde_page(%struct.TYPE_15__* %78, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %68
  br label %95

83:                                               ; preds = %62
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @NBPDR, align 8
  %88 = add i64 %86, %87
  %89 = call i64 @pmap_remove_ptes(%struct.TYPE_15__* %84, i64 %85, i64 %88, %struct.spglist* %12)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = call i32 @pmap_invalidate_all_int(%struct.TYPE_15__* %92)
  br label %94

94:                                               ; preds = %91, %83
  br label %95

95:                                               ; preds = %94, %82
  %96 = call i32 @vm_page_free_pages_toq(%struct.spglist* %12, i32 1)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kernel_pmap, align 8
  %99 = icmp eq %struct.TYPE_15__* %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PG_FRAME, align 4
  %104 = and i32 %102, %103
  %105 = call i32* @PHYS_TO_VM_PAGE(i32 %104)
  store i32* %105, i32** %15, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i64 @pmap_insert_pt_page(%struct.TYPE_15__* %106, i32* %107, i32 0)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %100
  br label %121

113:                                              ; preds = %95
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i32*, i32** %14, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = call i32 @KASSERT(i32 %117, i8* %119)
  br label %121

121:                                              ; preds = %113, %112
  br label %122

122:                                              ; preds = %121, %35
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @PG_MANAGED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %122
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @pmap_pv_insert_pde(%struct.TYPE_15__* %128, i64 %129, i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @KTR_PMAP, align 4
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = call i32 @CTR2(i32 %135, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %136, %struct.TYPE_15__* %137)
  %139 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %139, i32* %6, align 4
  br label %197

140:                                              ; preds = %127
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @PG_RW, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %140
  %146 = load i32*, i32** %11, align 8
  store i32* %146, i32** %15, align 8
  br label %147

147:                                              ; preds = %159, %145
  %148 = load i32*, i32** %15, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = load i64, i64* @NBPDR, align 8
  %151 = load i64, i64* @PAGE_SIZE, align 8
  %152 = udiv i64 %150, %151
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = icmp ult i32* %148, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* @PGA_WRITEABLE, align 4
  %158 = call i32 @vm_page_aflag_set(i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %155
  %160 = load i32*, i32** %15, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %15, align 8
  br label %147

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162, %140
  br label %164

164:                                              ; preds = %163, %122
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @PG_W, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load i64, i64* @NBPDR, align 8
  %171 = load i64, i64* @PAGE_SIZE, align 8
  %172 = udiv i64 %170, %171
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, %172
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %169, %164
  %179 = load i64, i64* @NBPDR, align 8
  %180 = load i64, i64* @PAGE_SIZE, align 8
  %181 = udiv i64 %179, %180
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, %181
  store i64 %186, i64* %184, align 8
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @pde_store(i32* %187, i32 %188)
  %190 = load i32, i32* @pmap_pde_mappings, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @pmap_pde_mappings, align 4
  %192 = load i32, i32* @KTR_PMAP, align 4
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %195 = call i32 @CTR2(i32 %192, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %193, %struct.TYPE_15__* %194)
  %196 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %178, %134, %56
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @CTR2(i32, i8*, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @pmap_remove_pde(%struct.TYPE_15__*, i32*, i64, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_pde_page(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i64 @pmap_remove_ptes(%struct.TYPE_15__*, i64, i64, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_all_int(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_insert_pt_page(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_pv_insert_pde(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i32 @vm_page_aflag_set(i32*, i32) #1

declare dso_local i32 @pde_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

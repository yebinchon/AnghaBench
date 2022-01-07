; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_ctx_id_entry_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_ctx_id_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_ctx = type { %struct.TYPE_5__, %struct.dmar_domain* }
%struct.TYPE_5__ = type { i32 }
%struct.dmar_domain = type { i32, i32, i32*, i32, %struct.dmar_unit* }
%struct.dmar_unit = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"dmar%d: initialized ctx entry %d:%d:%d 0x%jx 0x%jx\00", align 1
@DMAR_DOMAIN_IDMAP = common dso_local global i32 0, align 4
@DMAR_ECAP_PT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ctx %p non-null pgtbl_obj\00", align 1
@DMAR_CTX1_T_PASS = common dso_local global i32 0, align 4
@DMAR_CTX1_P = common dso_local global i32 0, align 4
@DMAR_PGF_NOALLOC = common dso_local global i32 0, align 4
@DMAR_CTX1_T_UNTR = common dso_local global i32 0, align 4
@DMAR_CTX1_ASR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_ctx*, %struct.TYPE_6__*, i32)* @ctx_id_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctx_id_entry_init(%struct.dmar_ctx* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.dmar_ctx*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmar_unit*, align 8
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca i32, align 4
  store %struct.dmar_ctx* %0, %struct.dmar_ctx** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %10, i32 0, i32 1
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %11, align 8
  store %struct.dmar_domain* %12, %struct.dmar_domain** %8, align 8
  %13 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %14 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %13, i32 0, i32 4
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  store %struct.dmar_unit* %15, %struct.dmar_unit** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i1 [ true, %3 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %34 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_get_bus(i32 %39)
  %41 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_get_slot(i32 %44)
  %46 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_get_function(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @KASSERT(i32 %32, i8* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %62 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DMAR_CTX2_DID(i32 %63)
  %65 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %66 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %64, %67
  %69 = call i32 @dmar_pte_store1(i64* %60, i32 %68)
  %70 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %71 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DMAR_DOMAIN_IDMAP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %30
  %77 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %78 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DMAR_ECAP_PT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %76
  %84 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %85 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %90 = bitcast %struct.dmar_ctx* %89 to i8*
  %91 = call i32 @KASSERT(i32 %88, i8* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* @DMAR_CTX1_T_PASS, align 4
  %95 = load i32, i32* @DMAR_CTX1_P, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @dmar_pte_store1(i64* %93, i32 %96)
  br label %115

98:                                               ; preds = %76, %30
  %99 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %100 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @DMAR_PGF_NOALLOC, align 4
  %103 = call i32 @dmar_pgalloc(i32* %101, i32 0, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* @DMAR_CTX1_T_UNTR, align 4
  %107 = load i32, i32* @DMAR_CTX1_ASR_MASK, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @VM_PAGE_TO_PHYS(i32 %108)
  %110 = and i32 %107, %109
  %111 = or i32 %106, %110
  %112 = load i32, i32* @DMAR_CTX1_P, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @dmar_pte_store1(i64* %105, i32 %113)
  br label %115

115:                                              ; preds = %98, %83
  %116 = load %struct.dmar_unit*, %struct.dmar_unit** %7, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = call i32 @dmar_flush_ctx_to_ram(%struct.dmar_unit* %116, %struct.TYPE_6__* %117)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @dmar_pte_store1(i64*, i32) #1

declare dso_local i32 @DMAR_CTX2_DID(i32) #1

declare dso_local i32 @dmar_pgalloc(i32*, i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @dmar_flush_ctx_to_ram(%struct.dmar_unit*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

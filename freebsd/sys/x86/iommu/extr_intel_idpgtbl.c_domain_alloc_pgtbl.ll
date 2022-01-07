; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_alloc_pgtbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_alloc_pgtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"already initialized %p\00", align 1
@OBJT_PHYS = common dso_local global i32 0, align 4
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@DMAR_PGF_ZERO = common dso_local global i32 0, align 4
@DMAR_PGF_OBJL = common dso_local global i32 0, align 4
@DMAR_DOMAIN_PGTBL_INITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @domain_alloc_pgtbl(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %4 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %5 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %10 = bitcast %struct.dmar_domain* %9 to i8*
  %11 = call i32 @KASSERT(i32 %8, i8* %10)
  %12 = load i32, i32* @OBJT_PHYS, align 4
  %13 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %14 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pglvl_max_pages(i32 %15)
  %17 = call i32 @IDX_TO_OFF(i32 %16)
  %18 = call i32* @vm_pager_allocate(i32 %12, i32* null, i32 %17, i32 0, i32 0, i32* null)
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %20 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %22 = call i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain* %21)
  %23 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %24 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %27 = load i32, i32* @DMAR_PGF_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_3__* @dmar_pgalloc(i32* %25, i32 0, i32 %30)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %3, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %35 = call i32 @DMAR_DOMAIN_PGUNLOCK(%struct.dmar_domain* %34)
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %37 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DMAR_LOCK(i32 %38)
  %40 = load i32, i32* @DMAR_DOMAIN_PGTBL_INITED, align 4
  %41 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %42 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %46 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @DMAR_UNLOCK(i32 %47)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @vm_pager_allocate(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @IDX_TO_OFF(i32) #1

declare dso_local i32 @pglvl_max_pages(i32) #1

declare dso_local i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain*) #1

declare dso_local %struct.TYPE_3__* @dmar_pgalloc(i32*, i32, i32) #1

declare dso_local i32 @DMAR_DOMAIN_PGUNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @DMAR_LOCK(i32) #1

declare dso_local i32 @DMAR_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

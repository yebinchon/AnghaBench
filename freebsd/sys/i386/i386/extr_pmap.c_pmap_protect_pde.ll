; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_protect_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_protect_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_OWNED = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pmap_protect_pde: sva is not 4mpage aligned\00", align 1
@FALSE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PG_PROMOTED = common dso_local global i32 0, align 4
@PG_G = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@i386_read_exec = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @pmap_protect_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_protect_pde(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PMAP_LOCK_ASSERT(i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PDRMASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %86, %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @VM_PROT_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @PG_MANAGED, align 4
  %34 = load i32, i32* @PG_M, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PG_RW, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = load i32, i32* @PG_MANAGED, align 4
  %40 = load i32, i32* @PG_M, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PG_RW, align 4
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %38, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %31
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PG_PS_FRAME, align 4
  %48 = and i32 %46, %47
  %49 = call i32* @PHYS_TO_VM_PAGE(i32 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  store i32* %50, i32** %12, align 8
  br label %51

51:                                               ; preds = %62, %45
  %52 = load i32*, i32** %12, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i64, i64* @NBPDR, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = udiv i64 %54, %55
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = icmp ult i32* %52, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @vm_page_dirty(i32* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %12, align 8
  br label %51

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %31
  %67 = load i32, i32* @PG_RW, align 4
  %68 = load i32, i32* @PG_M, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %66, %24
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @PG_PROMOTED, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = call i32 @pde_cmpset(i32* %78, i32 %79, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  br label %24

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @PG_G, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @kernel_pmap, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @pmap_invalidate_pde_page(i32 %93, i32 %94, i32 %95)
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %97, %92
  br label %100

100:                                              ; preds = %99, %73
  %101 = load i32, i32* %13, align 4
  ret i32 %101
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32*) #1

declare dso_local i32 @pde_cmpset(i32*, i32, i32) #1

declare dso_local i32 @pmap_invalidate_pde_page(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

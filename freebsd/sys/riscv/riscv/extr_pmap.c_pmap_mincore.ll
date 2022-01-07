; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_mincore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_mincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE_V = common dso_local global i32 0, align 4
@PTE_RWX = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@MINCORE_INCORE = common dso_local global i32 0, align 4
@MINCORE_SUPER = common dso_local global i32 0, align 4
@L3_OFFSET = common dso_local global i32 0, align 4
@PTE_D = common dso_local global i32 0, align 4
@MINCORE_MODIFIED = common dso_local global i32 0, align 4
@MINCORE_MODIFIED_OTHER = common dso_local global i32 0, align 4
@PTE_A = common dso_local global i32 0, align 4
@MINCORE_REFERENCED = common dso_local global i32 0, align 4
@MINCORE_REFERENCED_OTHER = common dso_local global i32 0, align 4
@PTE_SW_MANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_mincore(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PMAP_LOCK(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @pmap_l2(i32 %16, i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %92

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @pmap_load(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @PTE_V, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %92

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PTE_RWX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @PTE_TO_PHYS(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @L2_OFFSET, align 4
  %37 = and i32 %35, %36
  %38 = or i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @MINCORE_INCORE, align 4
  %40 = load i32, i32* @MINCORE_SUPER, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %12, align 4
  br label %63

42:                                               ; preds = %27
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32* @pmap_l2_to_l3(i32* %43, i32 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @pmap_load(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @PTE_V, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @PMAP_UNLOCK(i32 %53)
  store i32 0, i32* %4, align 4
  br label %113

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @PTE_TO_PHYS(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @L3_OFFSET, align 4
  %60 = and i32 %58, %59
  %61 = or i32 %57, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @MINCORE_INCORE, align 4
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %55, %32
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @PTE_D, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @MINCORE_MODIFIED, align 4
  %70 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @PTE_A, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @MINCORE_REFERENCED, align 4
  %81 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @PTE_SW_MANAGED, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @PTE_SW_MANAGED, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %13, align 4
  br label %93

92:                                               ; preds = %21, %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %85
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %96 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = load i32, i32* @MINCORE_MODIFIED_OTHER, align 4
  %100 = load i32, i32* @MINCORE_REFERENCED_OTHER, align 4
  %101 = or i32 %99, %100
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %103, %93
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @PMAP_UNLOCK(i32 %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %52
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @PTE_TO_PHYS(i32) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

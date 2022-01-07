; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@NBPDR = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@PTE_V = common dso_local global i32 0, align 4
@PTE_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pmap_unwire: pte %#jx is missing PG_W\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@NBSEG = common dso_local global i32 0, align 4
@SEGMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_unwire(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @PMAP_LOCK(%struct.TYPE_8__* %11)
  br label %13

13:                                               ; preds = %88, %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32** @pmap_segmap(%struct.TYPE_8__* %18, i32 %19)
  store i32** %20, i32*** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NBPDR, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @PDRMASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %17
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32** @pmap_pdpe_to_pde(i32** %33, i32 %34)
  store i32** %35, i32*** %7, align 8
  %36 = load i32**, i32*** %7, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %88

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i64* @pmap_pde_to_pte(i32** %47, i32 %48)
  store i64* %49, i64** %9, align 8
  br label %50

50:                                               ; preds = %79, %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load i64*, i64** %9, align 8
  %56 = load i32, i32* @PTE_V, align 4
  %57 = call i32 @pte_test(i64* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %79

60:                                               ; preds = %54
  %61 = load i64*, i64** %9, align 8
  %62 = load i32, i32* @PTE_W, align 4
  %63 = call i32 @pte_test(i64* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i64*, i64** %9, align 8
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i64*, i64** %9, align 8
  %72 = load i32, i32* @PTE_W, align 4
  %73 = call i32 @pte_clear(i64* %71, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %59
  %80 = load i64*, i64** %9, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %9, align 8
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %50

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %39
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %13

90:                                               ; preds = %13
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = call i32 @PMAP_UNLOCK(%struct.TYPE_8__* %91)
  ret void
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_8__*) #1

declare dso_local i32** @pmap_segmap(%struct.TYPE_8__*, i32) #1

declare dso_local i32** @pmap_pdpe_to_pde(i32**, i32) #1

declare dso_local i64* @pmap_pde_to_pte(i32**, i32) #1

declare dso_local i32 @pte_test(i64*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @pte_clear(i64*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

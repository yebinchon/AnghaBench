; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_iomapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_iomapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@MAS1_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAS2_I = common dso_local global i32 0, align 4
@MAS2_G = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MAS3_SR = common dso_local global i32 0, align 4
@MAS3_SW = common dso_local global i32 0, align 4
@MAS1_TSIZE_MASK = common dso_local global i32 0, align 4
@MAS1_TSIZE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"tlb1_iomapped: invalid entry tsize\00", align 1
@MAS7_RPN = common dso_local global i32 0, align 4
@MAS3_RPN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MAS2_EPN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @tlb1_iomapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlb1_iomapped(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @tlb1_read_entry(%struct.TYPE_3__* %15, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAS1_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %5, align 4
  br label %100

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAS2_I, align 4
  %30 = load i32, i32* @MAS2_G, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MAS2_I, align 4
  %35 = load i32, i32* @MAS2_G, align 4
  %36 = or i32 %34, %35
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @EPERM, align 4
  store i32 %39, i32* %5, align 4
  br label %100

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MAS3_SR, align 4
  %44 = load i32, i32* @MAS3_SW, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MAS3_SR, align 4
  %49 = load i32, i32* @MAS3_SW, align 4
  %50 = or i32 %48, %49
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @EPERM, align 4
  store i32 %53, i32* %5, align 4
  br label %100

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAS1_TSIZE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @MAS1_TSIZE_SHIFT, align 4
  %60 = lshr i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @KASSERT(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @tsize2size(i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @MAS7_RPN, align 4
  %69 = and i32 %67, %68
  %70 = shl i32 %69, 32
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MAS3_RPN, align 4
  %74 = and i32 %72, %73
  %75 = or i32 %70, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %54
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82, %54
  %89 = load i32, i32* @ERANGE, align 4
  store i32 %89, i32* %5, align 4
  br label %100

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MAS2_EPN_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %90, %88, %52, %38, %24
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @tlb1_read_entry(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @tsize2size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

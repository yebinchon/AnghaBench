; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amd_ecc_inject/extr_ecc_inject.c_ecc_ei_inject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amd_ecc_inject/extr_ecc_inject.c_ecc_ei_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quadrant = common dso_local global i32 0, align 4
@QUADRANT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"quadrant value is outside of range: %u\00", align 1
@word_mask = common dso_local global i32 0, align 4
@INJ_WORD_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"word mask value is outside of range: 0x%x\00", align 1
@bit_mask = common dso_local global i32 0, align 4
@INJ_VECTOR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"bit mask value is outside of range: 0x%x\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@delay_ms = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ecc_ei_inject\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ecc_ei_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecc_ei_inject(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @quadrant, align 4
  %6 = load i32, i32* @QUADRANT_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @quadrant, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @KASSERT(i32 %10, i8* %13)
  %15 = load i32, i32* @word_mask, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @word_mask, align 4
  %19 = load i32, i32* @INJ_WORD_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ false, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @word_mask, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %25, i8* %28)
  %30 = load i32, i32* @bit_mask, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i32, i32* @bit_mask, align 4
  %34 = load i32, i32* @INJ_VECTOR_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %32, %23
  %39 = phi i1 [ false, %23 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* @bit_mask, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %40, i8* %43)
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %48 = call i64 @kmem_alloc_attr(i32 %45, i32 %46, i32 0, i32 -1, i32 %47)
  store i64 %48, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %71, %38
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i64, i64* %3, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 @ecc_ei_inject_one(i8* %55, i32 %56)
  %58 = load i32, i32* @delay_ms, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %2, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @delay_ms, align 4
  %67 = load i32, i32* @SBT_1MS, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i32 @pause_sbt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 0, i32 0)
  br label %70

70:                                               ; preds = %65, %60, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %49

74:                                               ; preds = %49
  %75 = load i64, i64* %3, align 8
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = call i32 @kmem_free(i64 %75, i32 %76)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @kmem_alloc_attr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecc_ei_inject_one(i8*, i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @kmem_free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

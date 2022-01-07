; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_credit_pool_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_credit_pool_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_credit_pool_obj = type { i32, i32* }

@ECORE_POOL_VEC_SIZE = common dso_local global i32 0, align 4
@BIT_VEC64_ELEM_SZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_credit_pool_obj*, i32*)* @ecore_credit_pool_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_credit_pool_get_entry(%struct.ecore_credit_pool_obj* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_credit_pool_obj*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_credit_pool_obj* %0, %struct.ecore_credit_pool_obj** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ECORE_POOL_VEC_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %59

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @BIT_VEC64_ELEM_SZ, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %53, %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BIT_VEC64_ELEM_SZ, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @BIT_VEC64_TEST_BIT(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %41 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BIT_VEC64_CLEAR_BIT(i32* %42, i32 %43)
  %45 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %4, align 8
  %46 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %64

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %28

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %10

62:                                               ; preds = %10
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %39
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @BIT_VEC64_TEST_BIT(i32*, i32) #1

declare dso_local i32 @BIT_VEC64_CLEAR_BIT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

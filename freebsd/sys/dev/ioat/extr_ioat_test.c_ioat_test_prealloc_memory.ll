; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_prealloc_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_prealloc_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_test = type { i64, i32, i32, i32* }
%struct.test_transaction = type { i32, i32, i64*, %struct.ioat_test* }

@.str = private unnamed_addr constant [31 x i8] c"tx == NULL - memory exhausted\0A\00", align 1
@IOAT_TEST_NO_MEMORY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_test*, i32)* @ioat_test_prealloc_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_test_prealloc_memory(%struct.ioat_test* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ioat_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.test_transaction*, align 8
  %10 = alloca i64, align 8
  store %struct.ioat_test* %0, %struct.ioat_test** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %104, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %14 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %107

17:                                               ; preds = %11
  %18 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %19 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %20 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 2
  %23 = call %struct.test_transaction* @ioat_test_transaction_create(%struct.ioat_test* %18, i32 %22)
  store %struct.test_transaction* %23, %struct.test_transaction** %9, align 8
  %24 = load %struct.test_transaction*, %struct.test_transaction** %9, align 8
  %25 = icmp eq %struct.test_transaction* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = call i32 @ioat_test_log(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %29 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @IOAT_TEST_NO_MEMORY, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %108

36:                                               ; preds = %17
  %37 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %38 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %37, i32 0, i32 2
  %39 = load %struct.test_transaction*, %struct.test_transaction** %9, align 8
  %40 = load i32, i32* @entry, align 4
  %41 = call i32 @TAILQ_INSERT_HEAD(i32* %38, %struct.test_transaction* %39, i32 %40)
  %42 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %43 = load %struct.test_transaction*, %struct.test_transaction** %9, align 8
  %44 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %43, i32 0, i32 3
  store %struct.ioat_test* %42, %struct.ioat_test** %44, align 8
  %45 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %46 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.test_transaction*, %struct.test_transaction** %9, align 8
  %49 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %100, %36
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.test_transaction*, %struct.test_transaction** %9, align 8
  %53 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 8
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 28
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  store i64 %63, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %96, %58
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %67 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %64
  %72 = load i64, i64* %10, align 8
  %73 = xor i64 %72, -1
  %74 = load %struct.test_transaction*, %struct.test_transaction** %9, align 8
  %75 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = mul nsw i64 2, %77
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %73, i64* %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.test_transaction*, %struct.test_transaction** %9, align 8
  %86 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = mul nsw i64 2, %88
  %90 = add nsw i64 %89, 1
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 %84, i64* %95, align 8
  br label %96

96:                                               ; preds = %71
  %97 = load i64, i64* %8, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %8, align 8
  br label %64

99:                                               ; preds = %64
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %50

103:                                              ; preds = %50
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %11

107:                                              ; preds = %11
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %26
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.test_transaction* @ioat_test_transaction_create(%struct.ioat_test*, i32) #1

declare dso_local i32 @ioat_test_log(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.test_transaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

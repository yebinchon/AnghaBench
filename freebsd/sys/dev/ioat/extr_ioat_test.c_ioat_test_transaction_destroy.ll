; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_transaction_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_transaction_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_transaction = type { %struct.test_transaction**, i32, %struct.ioat_test* }
%struct.ioat_test = type { i64 }

@IOAT_MAX_BUFS = common dso_local global i32 0, align 4
@IOAT_TEST_DMA_8K = common dso_local global i64 0, align 8
@M_IOAT_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_transaction*)* @ioat_test_transaction_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_test_transaction_destroy(%struct.test_transaction* %0) #0 {
  %2 = alloca %struct.test_transaction*, align 8
  %3 = alloca %struct.ioat_test*, align 8
  %4 = alloca i32, align 4
  store %struct.test_transaction* %0, %struct.test_transaction** %2, align 8
  %5 = load %struct.test_transaction*, %struct.test_transaction** %2, align 8
  %6 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %5, i32 0, i32 2
  %7 = load %struct.ioat_test*, %struct.ioat_test** %6, align 8
  store %struct.ioat_test* %7, %struct.ioat_test** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %58, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IOAT_MAX_BUFS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load %struct.test_transaction*, %struct.test_transaction** %2, align 8
  %14 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %13, i32 0, i32 0
  %15 = load %struct.test_transaction**, %struct.test_transaction*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.test_transaction*, %struct.test_transaction** %15, i64 %17
  %19 = load %struct.test_transaction*, %struct.test_transaction** %18, align 8
  %20 = icmp ne %struct.test_transaction* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %12
  %22 = load %struct.ioat_test*, %struct.ioat_test** %3, align 8
  %23 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IOAT_TEST_DMA_8K, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.test_transaction*, %struct.test_transaction** %2, align 8
  %29 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %28, i32 0, i32 0
  %30 = load %struct.test_transaction**, %struct.test_transaction*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.test_transaction*, %struct.test_transaction** %30, i64 %32
  %34 = load %struct.test_transaction*, %struct.test_transaction** %33, align 8
  %35 = load i32, i32* @M_IOAT_TEST, align 4
  %36 = call i32 @free(%struct.test_transaction* %34, i32 %35)
  br label %50

37:                                               ; preds = %21
  %38 = load %struct.test_transaction*, %struct.test_transaction** %2, align 8
  %39 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %38, i32 0, i32 0
  %40 = load %struct.test_transaction**, %struct.test_transaction*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.test_transaction*, %struct.test_transaction** %40, i64 %42
  %44 = load %struct.test_transaction*, %struct.test_transaction** %43, align 8
  %45 = load %struct.test_transaction*, %struct.test_transaction** %2, align 8
  %46 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @M_IOAT_TEST, align 4
  %49 = call i32 @contigfree(%struct.test_transaction* %44, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %37, %27
  %51 = load %struct.test_transaction*, %struct.test_transaction** %2, align 8
  %52 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %51, i32 0, i32 0
  %53 = load %struct.test_transaction**, %struct.test_transaction*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.test_transaction*, %struct.test_transaction** %53, i64 %55
  store %struct.test_transaction* null, %struct.test_transaction** %56, align 8
  br label %57

57:                                               ; preds = %50, %12
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load %struct.test_transaction*, %struct.test_transaction** %2, align 8
  %63 = load i32, i32* @M_IOAT_TEST, align 4
  %64 = call i32 @free(%struct.test_transaction* %62, i32 %63)
  ret void
}

declare dso_local i32 @free(%struct.test_transaction*, i32) #1

declare dso_local i32 @contigfree(%struct.test_transaction*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

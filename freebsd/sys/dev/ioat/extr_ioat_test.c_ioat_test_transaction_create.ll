; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_transaction_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_transaction_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_transaction = type { i32, i32** }
%struct.ioat_test = type { i32, i64 }

@M_IOAT_TEST = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IOAT_TEST_DMA_8K = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.test_transaction* (%struct.ioat_test*, i32)* @ioat_test_transaction_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.test_transaction* @ioat_test_transaction_create(%struct.ioat_test* %0, i32 %1) #0 {
  %3 = alloca %struct.test_transaction*, align 8
  %4 = alloca %struct.ioat_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.test_transaction*, align 8
  %7 = alloca i32, align 4
  store %struct.ioat_test* %0, %struct.ioat_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @M_IOAT_TEST, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @malloc(i32 16, i32 %8, i32 %11)
  %13 = bitcast i8* %12 to %struct.test_transaction*
  store %struct.test_transaction* %13, %struct.test_transaction** %6, align 8
  %14 = load %struct.test_transaction*, %struct.test_transaction** %6, align 8
  %15 = icmp eq %struct.test_transaction* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.test_transaction* null, %struct.test_transaction** %3, align 8
  br label %80

17:                                               ; preds = %2
  %18 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %19 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.test_transaction*, %struct.test_transaction** %6, align 8
  %22 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %75, %17
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %29 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IOAT_TEST_DMA_8K, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %35 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @M_IOAT_TEST, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call i8* @malloc(i32 %36, i32 %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.test_transaction*, %struct.test_transaction** %6, align 8
  %42 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* %40, i32** %46, align 8
  br label %62

47:                                               ; preds = %27
  %48 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %49 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @M_IOAT_TEST, align 4
  %52 = load i32, i32* @M_NOWAIT, align 4
  %53 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i32* @contigmalloc(i32 %50, i32 %51, i32 %52, i32 0, i32 %53, i32 %54, i32 0)
  %56 = load %struct.test_transaction*, %struct.test_transaction** %6, align 8
  %57 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* %55, i32** %61, align 8
  br label %62

62:                                               ; preds = %47, %33
  %63 = load %struct.test_transaction*, %struct.test_transaction** %6, align 8
  %64 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.test_transaction*, %struct.test_transaction** %6, align 8
  %73 = call i32 @ioat_test_transaction_destroy(%struct.test_transaction* %72)
  store %struct.test_transaction* null, %struct.test_transaction** %3, align 8
  br label %80

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %23

78:                                               ; preds = %23
  %79 = load %struct.test_transaction*, %struct.test_transaction** %6, align 8
  store %struct.test_transaction* %79, %struct.test_transaction** %3, align 8
  br label %80

80:                                               ; preds = %78, %71, %16
  %81 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  ret %struct.test_transaction* %81
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ioat_test_transaction_destroy(%struct.test_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

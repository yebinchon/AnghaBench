; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_compare_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_compare_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_transaction = type { i32, i8**, i32, %struct.ioat_test* }
%struct.ioat_test = type { i64, i8*, i64 }

@IOAT_TEST_FILL = common dso_local global i64 0, align 8
@IOAT_TEST_DMA = common dso_local global i64 0, align 8
@IOAT_TEST_RAW_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_transaction*)* @ioat_compare_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_compare_ok(%struct.test_transaction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_transaction*, align 8
  %4 = alloca %struct.ioat_test*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.test_transaction* %0, %struct.test_transaction** %3, align 8
  %9 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %10 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %9, i32 0, i32 3
  %11 = load %struct.ioat_test*, %struct.ioat_test** %10, align 8
  store %struct.ioat_test* %11, %struct.ioat_test** %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %111, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %15 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %114

18:                                               ; preds = %12
  %19 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %20 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %21, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %29 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %37 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IOAT_TEST_FILL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %45 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %55 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @MIN(i32 4, i32 %58)
  %60 = call i64 @memcmp(i8* %49, i8* %53, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %115

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %42

69:                                               ; preds = %42
  br label %110

70:                                               ; preds = %18
  %71 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %72 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IOAT_TEST_DMA, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %80 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @memcmp(i8* %77, i8* %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %115

85:                                               ; preds = %76
  br label %109

86:                                               ; preds = %70
  %87 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %88 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IOAT_TEST_RAW_DMA, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %94 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %99 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.test_transaction*, %struct.test_transaction** %3, align 8
  %104 = getelementptr inbounds %struct.test_transaction, %struct.test_transaction* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 32
  %107 = call i32 @dump_hex(i8* %102, i32 %106)
  br label %108

108:                                              ; preds = %101, %86
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %69
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %12

114:                                              ; preds = %12
  store i32 1, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %84, %62
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @dump_hex(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

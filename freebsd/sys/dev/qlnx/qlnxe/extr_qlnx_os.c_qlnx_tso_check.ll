; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_tso_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_tso_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnx_fastpath = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ETH_TX_LSO_WINDOW_BDS_NUM = common dso_local global i32 0, align 4
@ETH_TX_LSO_WINDOW_MIN_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnx_fastpath*, %struct.TYPE_3__*, i32, i64)* @qlnx_tso_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_tso_check(%struct.qlnx_fastpath* %0, %struct.TYPE_3__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnx_fastpath*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store %struct.qlnx_fastpath* %0, %struct.qlnx_fastpath** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 1, i64* %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ETH_TX_LSO_WINDOW_BDS_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 1
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load i64, i64* %12, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %12, align 8
  br label %20

44:                                               ; preds = %30
  %45 = load i32, i32* @ETH_TX_LSO_WINDOW_BDS_NUM, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %12, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %13, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %84, %44
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %13, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %52
  store i64 0, i64* %11, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %14, align 8
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %72, %57
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %13, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 1
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %14, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @ETH_TX_LSO_WINDOW_MIN_LEN, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %81 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  store i32 -1, i32* %5, align 4
  br label %90

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 1
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %7, align 8
  br label %52

89:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %79, %18
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

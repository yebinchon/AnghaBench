; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_pkt_txtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_pkt_txtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"number of spatial streams needs to be 1..3: MCS rate 0x%x!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_pkt_txtime(%struct.ath_hal* %0, %struct.TYPE_6__* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hal*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @IS_HT_RATE(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %7
  %29 = load %struct.ath_hal*, %struct.ath_hal** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @ath_hal_computetxtime(%struct.ath_hal* %29, %struct.TYPE_6__* %30, i32 %31, i64 %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %56

36:                                               ; preds = %7
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @HT_RC_2_STREAMS(i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %17, align 4
  %43 = icmp sle i32 %42, 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i1 [ false, %36 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %12, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %46, i8* %48)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ath_computedur_ht(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %44, %28
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @IS_HT_RATE(i32) #1

declare dso_local i32 @ath_hal_computetxtime(%struct.ath_hal*, %struct.TYPE_6__*, i32, i64, i32, i32) #1

declare dso_local i32 @HT_RC_2_STREAMS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ath_computedur_ht(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

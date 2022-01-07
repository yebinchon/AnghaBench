; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212InvalidGainReadback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212InvalidGainReadback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DYN_ADJ_LO_MARGIN = common dso_local global i32 0, align 4
@DYN_ADJ_UP_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.TYPE_3__*)* @ar5212InvalidGainReadback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5212InvalidGainReadback(%struct.ath_hal* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call i64 @IS_RAD5112_ANY(%struct.ath_hal* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = call i32 @ar5212GetRfBank(%struct.ath_hal* %16, i32 7)
  %18 = call i32 @ar5212GetRfField(i32 %17, i32 1, i32 36, i32 0)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 107, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 107, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  store i32 83, i32* %9, align 4
  store i32 83, i32* %11, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 55, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %15
  br label %68

25:                                               ; preds = %2
  %26 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %27 = call i32 @ar5212GetRfBank(%struct.ath_hal* %26, i32 7)
  %28 = call i32 @ar5212GetRfField(i32 %27, i32 6, i32 37, i32 0)
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 63
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 50, %31 ], [ %34, %32 ]
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 63
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 64, %39 ], [ %41, %40 ]
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 50
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 63
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @DYN_ADJ_LO_MARGIN, align 4
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = add nsw i32 %46, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 63
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @DYN_ADJ_UP_MARGIN, align 4
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ -5, %62 ]
  %65 = sub nsw i32 %57, %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %24
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %89, label %79

79:                                               ; preds = %75, %68
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp sle i32 %84, %85
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ false, %79 ], [ %86, %83 ]
  br label %89

89:                                               ; preds = %87, %75
  %90 = phi i1 [ true, %75 ], [ %88, %87 ]
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  ret i32 %92
}

declare dso_local i64 @IS_RAD5112_ANY(%struct.ath_hal*) #1

declare dso_local i32 @ar5212GetRfField(i32, i32, i32, i32) #1

declare dso_local i32 @ar5212GetRfBank(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

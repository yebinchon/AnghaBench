; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416CompareDbgHang.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416CompareDbgHang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@dcu_chain_state = common dso_local global i32 0, align 4
@dcu_complete_state = common dso_local global i32 0, align 4
@qcu_stitch_state = common dso_local global i32 0, align 4
@qcu_fetch_state = common dso_local global i32 0, align 4
@qcu_complete_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @ar5416CompareDbgHang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5416CompareDbgHang(%struct.ath_hal* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @dcu_chain_state, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %36, %15
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 5, %23
  %25 = ashr i32 %22, %24
  %26 = and i32 %25, 31
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @dcu_chain_state, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %16

39:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 5, %47
  %49 = ashr i32 %46, %48
  %50 = and i32 %49, 31
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @dcu_chain_state, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %40

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @dcu_complete_state, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @dcu_complete_state, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %71
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @qcu_stitch_state, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 18
  %97 = and i32 %96, 15
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* @qcu_stitch_state, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %92
  br label %107

107:                                              ; preds = %106, %85
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @qcu_fetch_state, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 22
  %119 = and i32 %118, 15
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %114
  %125 = load i32, i32* @qcu_fetch_state, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %124, %114
  br label %129

129:                                              ; preds = %128, %107
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @qcu_complete_state, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %129
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 26
  %141 = and i32 %140, 7
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load i32, i32* @qcu_complete_state, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %146, %136
  br label %151

151:                                              ; preds = %150, %129
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %152, %155
  %157 = zext i1 %156 to i32
  ret i32 %157
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

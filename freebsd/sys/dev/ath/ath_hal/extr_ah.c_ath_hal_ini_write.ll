; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_ini_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_ini_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_ini_write(%struct.ath_hal* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @HALASSERT(i32 %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %47, %4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @HAL_INI_VAL(%struct.TYPE_4__* %25, i32 %26, i32 0)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @HAL_INI_VAL(%struct.TYPE_4__* %28, i32 %29, i32 %30)
  %32 = call i32 @OS_REG_WRITE(%struct.ath_hal* %24, i32 %27, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @HAL_INI_VAL(%struct.TYPE_4__* %33, i32 %34, i32 0)
  %36 = icmp sge i32 %35, 30720
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @HAL_INI_VAL(%struct.TYPE_4__* %38, i32 %39, i32 0)
  %41 = icmp slt i32 %40, 30976
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @OS_DELAY(i32 100)
  br label %44

44:                                               ; preds = %42, %37, %23
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @DMA_YIELD(i32 %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @HAL_INI_VAL(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

declare dso_local i32 @DMA_YIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

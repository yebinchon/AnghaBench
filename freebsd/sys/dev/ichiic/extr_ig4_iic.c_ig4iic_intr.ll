; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@FILTER_STRAY = common dso_local global i32 0, align 4
@IG4_REG_INTR_STAT = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ig4iic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ig4iic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = call i32 @mtx_lock_spin(i32* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = load i32, i32* @IG4_REG_INTR_STAT, align 4
  %18 = call i64 @reg_read(%struct.TYPE_5__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @ig4iic_set_intr_mask(%struct.TYPE_5__* %21, i32 0)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @wakeup(%struct.TYPE_5__* %23)
  %25 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %15, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = call i32 @mtx_unlock_spin(i32* %28)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @reg_read(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ig4iic_set_intr_mask(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_5__*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

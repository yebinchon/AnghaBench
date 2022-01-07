; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_tx_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_tx_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@A_TP_TX_MOD_Q1_Q0_RATE_LIMIT = common dso_local global i32 0, align 4
@A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_get_tx_sched(%struct.adapter* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %5
  %18 = load i32, i32* @A_TP_TX_MOD_Q1_Q0_RATE_LIMIT, align 4
  %19 = load i32, i32* %7, align 4
  %20 = udiv i32 %19, 2
  %21 = sub i32 %18, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @t4_tp_tm_pio_read(%struct.adapter* %22, i32* %11, i32 1, i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* %11, align 4
  %31 = lshr i32 %30, 16
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %11, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  store i32 0, i32* %41, align 4
  br label %56

42:                                               ; preds = %32
  %43 = load %struct.adapter*, %struct.adapter** %6, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 1000
  %49 = load i32, i32* %14, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = mul i32 %51, %52
  %54 = udiv i32 %53, 125
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %42, %40
  br label %57

57:                                               ; preds = %56, %5
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i32, i32* @A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR, align 4
  %62 = load i32, i32* %7, align 4
  %63 = udiv i32 %62, 2
  %64 = sub i32 %61, %63
  store i32 %64, i32* %12, align 4
  %65 = load %struct.adapter*, %struct.adapter** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @t4_tp_tm_pio_read(%struct.adapter* %65, i32* %11, i32 1, i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load i32, i32* %11, align 4
  %74 = lshr i32 %73, 16
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %60
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, 65535
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul i32 10000, %78
  %80 = load %struct.adapter*, %struct.adapter** %6, align 8
  %81 = call i32 @core_ticks_per_usec(%struct.adapter* %80)
  %82 = udiv i32 %79, %81
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %57
  ret void
}

declare dso_local i32 @t4_tp_tm_pio_read(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @core_ticks_per_usec(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

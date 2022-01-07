; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_set_sched_ipg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_set_sched_ipg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR = common dso_local global i32 0, align 4
@M_TXTIMERSEPQ0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_TP_TM_PIO_ADDR = common dso_local global i32 0, align 4
@A_TP_TM_PIO_DATA = common dso_local global i32 0, align 4
@M_TXTIMERSEPQ1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_sched_ipg(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @A_TP_TX_MOD_Q1_Q0_TIMER_SEPARATOR, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sdiv i32 %11, 2
  %13 = sub nsw i32 %10, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = call i32 @core_ticks_per_usec(%struct.adapter* %14)
  %16 = load i32, i32* %7, align 4
  %17 = mul i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, 5000
  %20 = udiv i32 %19, 10000
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @M_TXTIMERSEPQ0, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = load i32, i32* @A_TP_TM_PIO_ADDR, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @t4_write_reg(%struct.adapter* %28, i32 %29, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = load i32, i32* @A_TP_TM_PIO_DATA, align 4
  %34 = call i32 @t4_read_reg(%struct.adapter* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @M_TXTIMERSEPQ0, align 4
  %41 = call i32 @V_TXTIMERSEPQ0(i32 %40)
  %42 = and i32 %39, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @V_TXTIMERSEPQ1(i32 %43)
  %45 = or i32 %42, %44
  store i32 %45, i32* %8, align 4
  br label %54

46:                                               ; preds = %27
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @M_TXTIMERSEPQ1, align 4
  %49 = call i32 @V_TXTIMERSEPQ1(i32 %48)
  %50 = and i32 %47, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @V_TXTIMERSEPQ0(i32 %51)
  %53 = or i32 %50, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.adapter*, %struct.adapter** %5, align 8
  %56 = load i32, i32* @A_TP_TM_PIO_DATA, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @t4_write_reg(%struct.adapter* %55, i32 %56, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %5, align 8
  %60 = load i32, i32* @A_TP_TM_PIO_DATA, align 4
  %61 = call i32 @t4_read_reg(%struct.adapter* %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @core_ticks_per_usec(%struct.adapter*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @V_TXTIMERSEPQ0(i32) #1

declare dso_local i32 @V_TXTIMERSEPQ1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

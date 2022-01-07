; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }

@NICVF_INTR_CQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_SQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_RBDR_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_PKT_DROP_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_TCP_TIMER_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_MBOX_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_QS_ERR_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Failed to disable interrupt: unknown type\0A\00", align 1
@NIC_VF_ENA_W1C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_disable_intr(%struct.nicvf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %53 [
    i32 134, label %9
    i32 129, label %17
    i32 130, label %25
    i32 132, label %33
    i32 128, label %38
    i32 133, label %43
    i32 131, label %48
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = load i64, i64* @NICVF_INTR_CQ_SHIFT, align 8
  %14 = shl i64 %12, %13
  %15 = load i64, i64* %7, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %7, align 8
  br label %58

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = load i64, i64* @NICVF_INTR_SQ_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* %7, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %58

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = load i64, i64* @NICVF_INTR_RBDR_SHIFT, align 8
  %30 = shl i64 %28, %29
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %58

33:                                               ; preds = %3
  %34 = load i64, i64* @NICVF_INTR_PKT_DROP_SHIFT, align 8
  %35 = shl i64 1, %34
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %58

38:                                               ; preds = %3
  %39 = load i64, i64* @NICVF_INTR_TCP_TIMER_SHIFT, align 8
  %40 = shl i64 1, %39
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %58

43:                                               ; preds = %3
  %44 = load i64, i64* @NICVF_INTR_MBOX_SHIFT, align 8
  %45 = shl i64 1, %44
  %46 = load i64, i64* %7, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %58

48:                                               ; preds = %3
  %49 = load i64, i64* @NICVF_INTR_QS_ERR_SHIFT, align 8
  %50 = shl i64 1, %49
  %51 = load i64, i64* %7, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %58

53:                                               ; preds = %3
  %54 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %55 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48, %43, %38, %33, %25, %17, %9
  %59 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %60 = load i32, i32* @NIC_VF_ENA_W1C, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @nicvf_reg_write(%struct.nicvf* %59, i32 %60, i64 %61)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nicvf_reg_write(%struct.nicvf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

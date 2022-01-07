; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }

@NIC_VF_ENA_W1S = common dso_local global i32 0, align 4
@NICVF_INTR_CQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_SQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_RBDR_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_PKT_DROP_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_TCP_TIMER_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_MBOX_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_QS_ERR_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to enable interrupt: unknown type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_enable_intr(%struct.nicvf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %9 = load i32, i32* @NIC_VF_ENA_W1S, align 4
  %10 = call i64 @nicvf_reg_read(%struct.nicvf* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %56 [
    i32 134, label %12
    i32 129, label %20
    i32 130, label %28
    i32 132, label %36
    i32 128, label %41
    i32 133, label %46
    i32 131, label %51
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = shl i64 1, %14
  %16 = load i64, i64* @NICVF_INTR_CQ_SHIFT, align 8
  %17 = shl i64 %15, %16
  %18 = load i64, i64* %7, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %7, align 8
  br label %61

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = load i64, i64* @NICVF_INTR_SQ_SHIFT, align 8
  %25 = shl i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %61

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = load i64, i64* @NICVF_INTR_RBDR_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = load i64, i64* %7, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %61

36:                                               ; preds = %3
  %37 = load i64, i64* @NICVF_INTR_PKT_DROP_SHIFT, align 8
  %38 = shl i64 1, %37
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %61

41:                                               ; preds = %3
  %42 = load i64, i64* @NICVF_INTR_TCP_TIMER_SHIFT, align 8
  %43 = shl i64 1, %42
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %61

46:                                               ; preds = %3
  %47 = load i64, i64* @NICVF_INTR_MBOX_SHIFT, align 8
  %48 = shl i64 1, %47
  %49 = load i64, i64* %7, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %61

51:                                               ; preds = %3
  %52 = load i64, i64* @NICVF_INTR_QS_ERR_SHIFT, align 8
  %53 = shl i64 1, %52
  %54 = load i64, i64* %7, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %7, align 8
  br label %61

56:                                               ; preds = %3
  %57 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %58 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %51, %46, %41, %36, %28, %20, %12
  %62 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %63 = load i32, i32* @NIC_VF_ENA_W1S, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @nicvf_reg_write(%struct.nicvf* %62, i32 %63, i64 %64)
  ret void
}

declare dso_local i64 @nicvf_reg_read(%struct.nicvf*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nicvf_reg_write(%struct.nicvf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

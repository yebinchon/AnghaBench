; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_is_intr_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_is_intr_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }

@NIC_VF_ENA_W1S = common dso_local global i32 0, align 4
@NICVF_INTR_CQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_SQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_RBDR_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_PKT_DROP_MASK = common dso_local global i32 0, align 4
@NICVF_INTR_TCP_TIMER_MASK = common dso_local global i32 0, align 4
@NICVF_INTR_MBOX_MASK = common dso_local global i32 0, align 4
@NICVF_INTR_QS_ERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to check interrupt enable: unknown type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_is_intr_enabled(%struct.nicvf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 255, i32* %8, align 4
  %9 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %10 = load i32, i32* @NIC_VF_ENA_W1S, align 4
  %11 = call i32 @nicvf_reg_read(%struct.nicvf* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %42 [
    i32 134, label %13
    i32 129, label %20
    i32 130, label %27
    i32 132, label %34
    i32 128, label %36
    i32 133, label %38
    i32 131, label %40
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = load i64, i64* @NICVF_INTR_CQ_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = load i64, i64* @NICVF_INTR_SQ_SHIFT, align 8
  %25 = shl i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = load i64, i64* @NICVF_INTR_RBDR_SHIFT, align 8
  %32 = shl i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %47

34:                                               ; preds = %3
  %35 = load i32, i32* @NICVF_INTR_PKT_DROP_MASK, align 4
  store i32 %35, i32* %8, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load i32, i32* @NICVF_INTR_TCP_TIMER_MASK, align 4
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %3
  %39 = load i32, i32* @NICVF_INTR_MBOX_MASK, align 4
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load i32, i32* @NICVF_INTR_QS_ERR_MASK, align 4
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %3
  %43 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %44 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %40, %38, %36, %34, %27, %20, %13
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %48, %49
  ret i32 %50
}

declare dso_local i32 @nicvf_reg_read(%struct.nicvf*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

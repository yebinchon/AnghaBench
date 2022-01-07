; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_clear_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_clear_intr.c"
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
@.str = private unnamed_addr constant [41 x i8] c"Failed to clear interrupt: unknown type\0A\00", align 1
@NIC_VF_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_clear_intr(%struct.nicvf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %41 [
    i32 134, label %9
    i32 129, label %15
    i32 130, label %21
    i32 132, label %27
    i32 128, label %30
    i32 133, label %33
    i32 131, label %36
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = load i64, i64* @NICVF_INTR_CQ_SHIFT, align 8
  %14 = shl i64 %12, %13
  store i64 %14, i64* %7, align 8
  br label %46

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = load i64, i64* @NICVF_INTR_SQ_SHIFT, align 8
  %20 = shl i64 %18, %19
  store i64 %20, i64* %7, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = load i64, i64* @NICVF_INTR_RBDR_SHIFT, align 8
  %26 = shl i64 %24, %25
  store i64 %26, i64* %7, align 8
  br label %46

27:                                               ; preds = %3
  %28 = load i64, i64* @NICVF_INTR_PKT_DROP_SHIFT, align 8
  %29 = shl i64 1, %28
  store i64 %29, i64* %7, align 8
  br label %46

30:                                               ; preds = %3
  %31 = load i64, i64* @NICVF_INTR_TCP_TIMER_SHIFT, align 8
  %32 = shl i64 1, %31
  store i64 %32, i64* %7, align 8
  br label %46

33:                                               ; preds = %3
  %34 = load i64, i64* @NICVF_INTR_MBOX_SHIFT, align 8
  %35 = shl i64 1, %34
  store i64 %35, i64* %7, align 8
  br label %46

36:                                               ; preds = %3
  %37 = load i64, i64* @NICVF_INTR_QS_ERR_SHIFT, align 8
  %38 = shl i64 1, %37
  %39 = load i64, i64* %7, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %46

41:                                               ; preds = %3
  %42 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %43 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36, %33, %30, %27, %21, %15, %9
  %47 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %48 = load i32, i32* @NIC_VF_INT, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @nicvf_reg_write(%struct.nicvf* %47, i32 %48, i64 %49)
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

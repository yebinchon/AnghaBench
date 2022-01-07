; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_fcoe_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_fcoe_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.tp_fcoe_stats = type { i32, i32, i32 }

@A_TP_MIB_FCOE_DDP_0 = common dso_local global i64 0, align 8
@A_TP_MIB_FCOE_DROP_0 = common dso_local global i64 0, align 8
@A_TP_MIB_FCOE_BYTE_0_HI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_get_fcoe_stats(%struct.adapter* %0, i32 %1, %struct.tp_fcoe_stats* %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tp_fcoe_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tp_fcoe_stats* %2, %struct.tp_fcoe_stats** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = load %struct.tp_fcoe_stats*, %struct.tp_fcoe_stats** %7, align 8
  %12 = getelementptr inbounds %struct.tp_fcoe_stats, %struct.tp_fcoe_stats* %11, i32 0, i32 0
  %13 = load i64, i64* @A_TP_MIB_FCOE_DDP_0, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @t4_tp_mib_read(%struct.adapter* %10, i32* %12, i32 1, i64 %16, i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = load %struct.tp_fcoe_stats*, %struct.tp_fcoe_stats** %7, align 8
  %21 = getelementptr inbounds %struct.tp_fcoe_stats, %struct.tp_fcoe_stats* %20, i32 0, i32 1
  %22 = load i64, i64* @A_TP_MIB_FCOE_DROP_0, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @t4_tp_mib_read(%struct.adapter* %19, i32* %21, i32 1, i64 %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %30 = load i64, i64* @A_TP_MIB_FCOE_BYTE_0_HI, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul i32 2, %31
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @t4_tp_mib_read(%struct.adapter* %28, i32* %29, i32 2, i64 %34, i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 32
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %39, %41
  %43 = load %struct.tp_fcoe_stats*, %struct.tp_fcoe_stats** %7, align 8
  %44 = getelementptr inbounds %struct.tp_fcoe_stats, %struct.tp_fcoe_stats* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @t4_tp_mib_read(%struct.adapter*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

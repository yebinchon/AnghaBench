; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_handle_rsp_cntrl_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_handle_rsp_cntrl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TXQ_ETH = common dso_local global i64 0, align 8
@TXQ_CTRL = common dso_local global i64 0, align 8
@TXQ_OFLD = common dso_local global i64 0, align 8
@F_RSPD_TXQ0_GTS = common dso_local global i32 0, align 4
@F_RSPD_TXQ1_GTS = common dso_local global i32 0, align 4
@TXQ_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_qset*, i32)* @handle_rsp_cntrl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rsp_cntrl_info(%struct.sge_qset* %0, i32 %1) #0 {
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sge_qset* %0, %struct.sge_qset** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @G_RSPD_TXQ0_CR(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %13 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @TXQ_ETH, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %18, %11
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %10, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @G_RSPD_TXQ2_CR(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %28 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @TXQ_CTRL, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, %26
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %25, %20
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @G_RSPD_TXQ1_CR(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %43 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @TXQ_OFLD, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, %41
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @G_RSPD_TXQ0_CR(i32) #1

declare dso_local i32 @G_RSPD_TXQ2_CR(i32) #1

declare dso_local i32 @G_RSPD_TXQ1_CR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

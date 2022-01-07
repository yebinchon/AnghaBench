; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_set_params__post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_set_params__post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CPLFW4MSG_ENCAP = common dso_local global i32 0, align 4
@PORT_CAPS32 = common dso_local global i32 0, align 4
@A_TP_RSS_CONFIG_TNL = common dso_local global i64 0, align 8
@M_MASKFILTER = common dso_local global i32 0, align 4
@A_TP_KEEP_IDLE = common dso_local global i64 0, align 8
@A_TP_KEEP_INTVL = common dso_local global i64 0, align 8
@A_TP_RXT_MAX = common dso_local global i64 0, align 8
@A_TP_RXT_MIN = common dso_local global i64 0, align 8
@A_TP_SHIFT_CNT = common dso_local global i64 0, align 8
@A_TP_TCP_BACKOFF_REG0 = common dso_local global i64 0, align 8
@M_KEEPALIVEIDLE = common dso_local global i32 0, align 4
@M_KEEPALIVEINTVL = common dso_local global i32 0, align 4
@M_KEEPALIVEMAXR1 = common dso_local global i32 0, align 4
@M_KEEPALIVEMAXR2 = common dso_local global i32 0, align 4
@M_RXTMAX = common dso_local global i32 0, align 4
@M_RXTMIN = common dso_local global i32 0, align 4
@M_RXTSHIFTMAXR1 = common dso_local global i32 0, align 4
@M_RXTSHIFTMAXR2 = common dso_local global i32 0, align 4
@M_TIMERBACKOFFINDEX0 = common dso_local global i32 0, align 4
@t4_toe_keepalive_count = common dso_local global i32 0, align 4
@t4_toe_keepalive_idle = common dso_local global i64 0, align 8
@t4_toe_keepalive_interval = common dso_local global i64 0, align 8
@t4_toe_rexmt_backoff = common dso_local global i32* null, align 8
@t4_toe_rexmt_count = common dso_local global i32 0, align 4
@t4_toe_rexmt_max = common dso_local global i64 0, align 8
@t4_toe_rexmt_min = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @set_params__post_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_params__post_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load i32, i32* @CPLFW4MSG_ENCAP, align 4
  %6 = call i32 @FW_PARAM_PFVF(i32 %5)
  store i32 %6, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @t4_set_params(%struct.adapter* %7, i32 %10, i32 %13, i32 0, i32 1, i32* %3, i32* %4)
  %15 = load i32, i32* @PORT_CAPS32, align 4
  %16 = call i32 @FW_PARAM_PFVF(i32 %15)
  store i32 %16, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @t4_set_params(%struct.adapter* %17, i32 %20, i32 %23, i32 0, i32 1, i32* %3, i32* %4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i64, i64* @A_TP_RSS_CONFIG_TNL, align 8
  %33 = call i32 @t4_read_reg(%struct.adapter* %31, i64 %32)
  %34 = call i32 @G_MASKSIZE(i32 %33)
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 1, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = load i64, i64* @A_TP_RSS_CONFIG_TNL, align 8
  %39 = load i32, i32* @M_MASKFILTER, align 4
  %40 = call i32 @V_MASKFILTER(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @V_MASKFILTER(i32 %42)
  %44 = call i32 @t4_set_reg_field(%struct.adapter* %37, i64 %38, i32 %40, i32 %43)
  ret i32 0
}

declare dso_local i32 @FW_PARAM_PFVF(i32) #1

declare dso_local i64 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @G_MASKSIZE(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @V_MASKFILTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

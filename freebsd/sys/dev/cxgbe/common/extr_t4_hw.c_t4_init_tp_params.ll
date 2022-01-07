; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_init_tp_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_init_tp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tp_params }
%struct.tp_params = type { i32*, i8*, i32, i32 }

@A_TP_TIMER_RESOLUTION = common dso_local global i32 0, align 4
@MAX_NCHAN = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@A_TP_OUT_CONFIG = common dso_local global i32 0, align 4
@F_CRXPKTENC = common dso_local global i32 0, align 4
@M_T6_COMPR_RXERR_VEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_tp_params(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tp_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.tp_params* %10, %struct.tp_params** %7, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load i32, i32* @A_TP_TIMER_RESOLUTION, align 4
  %13 = call i32 @t4_read_reg(%struct.adapter* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @G_TIMERRESOLUTION(i32 %14)
  %16 = load %struct.tp_params*, %struct.tp_params** %7, align 8
  %17 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @G_DELAYEDACKRESOLUTION(i32 %18)
  %20 = load %struct.tp_params*, %struct.tp_params** %7, align 8
  %21 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %34, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MAX_NCHAN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.tp_params*, %struct.tp_params** %7, align 8
  %29 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @read_filter_mode_and_ingress_config(%struct.adapter* %38, i32 %39)
  %41 = call i8* @htobe16(i32 65535)
  %42 = load %struct.tp_params*, %struct.tp_params** %7, align 8
  %43 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = call i64 @chip_id(%struct.adapter* %44)
  %46 = load i64, i64* @CHELSIO_T5, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = load i32, i32* @A_TP_OUT_CONFIG, align 4
  %51 = call i32 @t4_read_reg(%struct.adapter* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @F_CRXPKTENC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* @M_T6_COMPR_RXERR_VEC, align 4
  %58 = call i32 @V_T6_COMPR_RXERR_VEC(i32 %57)
  %59 = call i8* @htobe16(i32 %58)
  %60 = load %struct.tp_params*, %struct.tp_params** %7, align 8
  %61 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62, %37
  ret i32 0
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_TIMERRESOLUTION(i32) #1

declare dso_local i32 @G_DELAYEDACKRESOLUTION(i32) #1

declare dso_local i32 @read_filter_mode_and_ingress_config(%struct.adapter*, i32) #1

declare dso_local i8* @htobe16(i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @V_T6_COMPR_RXERR_VEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

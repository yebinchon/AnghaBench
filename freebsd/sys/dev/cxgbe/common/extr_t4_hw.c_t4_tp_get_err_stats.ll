; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_tp_get_err_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_tp_get_err_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tp_err_stats = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@A_TP_MIB_MAC_IN_ERR_0 = common dso_local global i32 0, align 4
@A_TP_MIB_HDR_IN_ERR_0 = common dso_local global i32 0, align 4
@A_TP_MIB_TCP_IN_ERR_0 = common dso_local global i32 0, align 4
@A_TP_MIB_TNL_CNG_DROP_0 = common dso_local global i32 0, align 4
@A_TP_MIB_OFD_CHN_DROP_0 = common dso_local global i32 0, align 4
@A_TP_MIB_TNL_DROP_0 = common dso_local global i32 0, align 4
@A_TP_MIB_OFD_VLN_DROP_0 = common dso_local global i32 0, align 4
@A_TP_MIB_TCP_V6IN_ERR_0 = common dso_local global i32 0, align 4
@A_TP_MIB_OFD_ARP_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_tp_get_err_stats(%struct.adapter* %0, %struct.tp_err_stats* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.tp_err_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.tp_err_stats* %1, %struct.tp_err_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %15 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @A_TP_MIB_MAC_IN_ERR_0, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @t4_tp_mib_read(%struct.adapter* %13, i32* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %23 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @A_TP_MIB_HDR_IN_ERR_0, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @t4_tp_mib_read(%struct.adapter* %21, i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.adapter*, %struct.adapter** %4, align 8
  %30 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %31 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @A_TP_MIB_TCP_IN_ERR_0, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @t4_tp_mib_read(%struct.adapter* %29, i32* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %39 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @A_TP_MIB_TNL_CNG_DROP_0, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @t4_tp_mib_read(%struct.adapter* %37, i32* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %47 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @A_TP_MIB_OFD_CHN_DROP_0, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @t4_tp_mib_read(%struct.adapter* %45, i32* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.adapter*, %struct.adapter** %4, align 8
  %54 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %55 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @A_TP_MIB_TNL_DROP_0, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @t4_tp_mib_read(%struct.adapter* %53, i32* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %4, align 8
  %62 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %63 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @A_TP_MIB_OFD_VLN_DROP_0, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @t4_tp_mib_read(%struct.adapter* %61, i32* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.adapter*, %struct.adapter** %4, align 8
  %70 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %71 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @A_TP_MIB_TCP_V6IN_ERR_0, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @t4_tp_mib_read(%struct.adapter* %69, i32* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.adapter*, %struct.adapter** %4, align 8
  %78 = load %struct.tp_err_stats*, %struct.tp_err_stats** %5, align 8
  %79 = getelementptr inbounds %struct.tp_err_stats, %struct.tp_err_stats* %78, i32 0, i32 0
  %80 = load i32, i32* @A_TP_MIB_OFD_ARP_DROP, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @t4_tp_mib_read(%struct.adapter* %77, i32* %79, i32 2, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @t4_tp_mib_read(%struct.adapter*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

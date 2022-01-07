; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_sysctl_stats_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_sysctl_stats_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.atse_softc = type { i32 }

@atse_mac_stats_regs = common dso_local global %struct.TYPE_4__* null, align 8
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sysctl_atse_mac_stats_proc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@ATSE_RX_ERR_MAX = common dso_local global i32 0, align 4
@atse_rx_err_stats_regs = common dso_local global %struct.TYPE_5__* null, align 8
@sysctl_atse_rx_err_stats_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @atse_sysctl_stats_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atse_sysctl_stats_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.atse_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.atse_softc* @device_get_softc(i32 %7)
  store %struct.atse_softc* %8, %struct.atse_softc** %5, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %9)
  store %struct.sysctl_ctx_list* %10, %struct.sysctl_ctx_list** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %59, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @atse_mac_stats_regs, align 8
  %16 = call i32 @nitems(%struct.TYPE_4__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @atse_mac_stats_regs, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @atse_mac_stats_regs, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %18
  br label %59

35:                                               ; preds = %26
  %36 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %37 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %38 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %37)
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @atse_mac_stats_regs, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @CTLTYPE_UINT, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.atse_softc*, %struct.atse_softc** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @sysctl_atse_mac_stats_proc, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @atse_mac_stats_regs, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %36, i32 %38, i32 %39, i32* %45, i32 %48, %struct.atse_softc* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %57)
  br label %59

59:                                               ; preds = %35, %34
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %13

62:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %108, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ATSE_RX_ERR_MAX, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @atse_rx_err_stats_regs, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @atse_rx_err_stats_regs, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75, %67
  br label %108

84:                                               ; preds = %75
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %86 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %87 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %86)
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @atse_rx_err_stats_regs, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @CTLTYPE_UINT, align 4
  %96 = load i32, i32* @CTLFLAG_RD, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.atse_softc*, %struct.atse_softc** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @sysctl_atse_rx_err_stats_proc, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @atse_rx_err_stats_regs, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %85, i32 %87, i32 %88, i32* %94, i32 %97, %struct.atse_softc* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %106)
  br label %108

108:                                              ; preds = %84, %83
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %63

111:                                              ; preds = %63
  ret void
}

declare dso_local %struct.atse_softc* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_4__*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i32*, i32, %struct.atse_softc*, i32, i32, i8*, i32*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

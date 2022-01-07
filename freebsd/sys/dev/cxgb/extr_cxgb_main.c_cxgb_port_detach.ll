; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_port_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_port_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, i32*, i32*, %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.sge_qset* }
%struct.sge_qset = type { %struct.sge_txq* }
%struct.sge_txq = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"cxgbdtch\00", align 1
@TXQ_ETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cxgb_port_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_port_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sge_qset*, align 8
  %7 = alloca %struct.sge_txq*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.port_info* @device_get_softc(i32 %8)
  store %struct.port_info* %9, %struct.port_info** %3, align 8
  %10 = load %struct.port_info*, %struct.port_info** %3, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 4
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = call i32 @ADAPTER_LOCK(%struct.adapter* %13)
  %15 = load %struct.port_info*, %struct.port_info** %3, align 8
  %16 = call i32 @SET_DOOMED(%struct.port_info* %15)
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = call i32 @wakeup(i32* %18)
  br label %20

20:                                               ; preds = %24, %1
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = call i64 @IS_BUSY(%struct.adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 2
  %29 = call i32 @mtx_sleep(i32* %26, i32* %28, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %20

30:                                               ; preds = %20
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = call i32 @SET_BUSY(%struct.adapter* %31)
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %33)
  %35 = load %struct.port_info*, %struct.port_info** %3, align 8
  %36 = getelementptr inbounds %struct.port_info, %struct.port_info* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.port_info*, %struct.port_info** %3, align 8
  %41 = getelementptr inbounds %struct.port_info, %struct.port_info* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @destroy_dev(i32* %42)
  br label %44

44:                                               ; preds = %39, %30
  %45 = load %struct.port_info*, %struct.port_info** %3, align 8
  %46 = call i32 @cxgb_uninit_synchronized(%struct.port_info* %45)
  %47 = load %struct.port_info*, %struct.port_info** %3, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @ether_ifdetach(i32* %49)
  %51 = load %struct.port_info*, %struct.port_info** %3, align 8
  %52 = getelementptr inbounds %struct.port_info, %struct.port_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %83, %44
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.port_info*, %struct.port_info** %3, align 8
  %57 = getelementptr inbounds %struct.port_info, %struct.port_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.port_info*, %struct.port_info** %3, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = icmp slt i32 %55, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %54
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.sge_qset*, %struct.sge_qset** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %68, i64 %70
  store %struct.sge_qset* %71, %struct.sge_qset** %6, align 8
  %72 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %73 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %72, i32 0, i32 0
  %74 = load %struct.sge_txq*, %struct.sge_txq** %73, align 8
  %75 = load i64, i64* @TXQ_ETH, align 8
  %76 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %74, i64 %75
  store %struct.sge_txq* %76, %struct.sge_txq** %7, align 8
  %77 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %78 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %77, i32 0, i32 1
  %79 = call i32 @callout_drain(i32* %78)
  %80 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 0
  %82 = call i32 @callout_drain(i32* %81)
  br label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load %struct.port_info*, %struct.port_info** %3, align 8
  %88 = call i32 @PORT_LOCK_DEINIT(%struct.port_info* %87)
  %89 = load %struct.port_info*, %struct.port_info** %3, align 8
  %90 = getelementptr inbounds %struct.port_info, %struct.port_info* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @if_free(i32* %91)
  %93 = load %struct.port_info*, %struct.port_info** %3, align 8
  %94 = getelementptr inbounds %struct.port_info, %struct.port_info* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  %95 = load %struct.adapter*, %struct.adapter** %4, align 8
  %96 = call i32 @ADAPTER_LOCK(%struct.adapter* %95)
  %97 = load %struct.adapter*, %struct.adapter** %4, align 8
  %98 = call i32 @CLR_BUSY(%struct.adapter* %97)
  %99 = load %struct.adapter*, %struct.adapter** %4, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 0
  %101 = call i32 @wakeup_one(i32* %100)
  %102 = load %struct.adapter*, %struct.adapter** %4, align 8
  %103 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %102)
  ret i32 0
}

declare dso_local %struct.port_info* @device_get_softc(i32) #1

declare dso_local i32 @ADAPTER_LOCK(%struct.adapter*) #1

declare dso_local i32 @SET_DOOMED(%struct.port_info*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i64 @IS_BUSY(%struct.adapter*) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @SET_BUSY(%struct.adapter*) #1

declare dso_local i32 @ADAPTER_UNLOCK(%struct.adapter*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @cxgb_uninit_synchronized(%struct.port_info*) #1

declare dso_local i32 @ether_ifdetach(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @PORT_LOCK_DEINIT(%struct.port_info*) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @CLR_BUSY(%struct.adapter*) #1

declare dso_local i32 @wakeup_one(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_ctloutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, %struct.ng_btsocket_rfcomm_fc_info }
%struct.ng_btsocket_rfcomm_fc_info = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOL_RFCOMM = common dso_local global i64 0, align 8
@NG_BTSOCKET_RFCOMM_DLC_CFC = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_rfcomm_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.ng_btsocket_rfcomm_fc_info, align 4
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = call %struct.TYPE_3__* @so2rfcomm_pcb(%struct.socket* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %84

15:                                               ; preds = %2
  %16 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %17 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOL_RFCOMM, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %84

22:                                               ; preds = %15
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %27 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %77 [
    i32 131, label %29
    i32 130, label %70
  ]

29:                                               ; preds = %22
  %30 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %31 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %67 [
    i32 128, label %33
    i32 129, label %38
  ]

33:                                               ; preds = %29
  %34 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  %37 = call i32 @sooptcopyout(%struct.sockopt* %34, %struct.ng_btsocket_rfcomm_fc_info* %36, i32 24)
  store i32 %37, i32* %8, align 4
  br label %69

38:                                               ; preds = %29
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ng_btsocket_rfcomm_fc_info, %struct.ng_btsocket_rfcomm_fc_info* %7, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ng_btsocket_rfcomm_fc_info, %struct.ng_btsocket_rfcomm_fc_info* %7, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ng_btsocket_rfcomm_fc_info, %struct.ng_btsocket_rfcomm_fc_info* %7, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.ng_btsocket_rfcomm_fc_info, %struct.ng_btsocket_rfcomm_fc_info* %7, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NG_BTSOCKET_RFCOMM_DLC_CFC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = getelementptr inbounds %struct.ng_btsocket_rfcomm_fc_info, %struct.ng_btsocket_rfcomm_fc_info* %7, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.ng_btsocket_rfcomm_fc_info, %struct.ng_btsocket_rfcomm_fc_info* %7, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %66 = call i32 @sooptcopyout(%struct.sockopt* %65, %struct.ng_btsocket_rfcomm_fc_info* %7, i32 24)
  store i32 %66, i32* %8, align 4
  br label %69

67:                                               ; preds = %29
  %68 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %38, %33
  br label %79

70:                                               ; preds = %22
  %71 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %72 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %74 [
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74
  br label %79

77:                                               ; preds = %22
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %76, %69
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = call i32 @mtx_unlock(i32* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %21, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_3__* @so2rfcomm_pcb(%struct.socket*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, %struct.ng_btsocket_rfcomm_fc_info*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

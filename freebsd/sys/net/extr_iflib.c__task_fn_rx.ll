; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__task_fn_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__task_fn_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@task_fn_rxs = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFC_LEGACY = common dso_local global i32 0, align 4
@rx_intr_enables = common dso_local global i32 0, align 4
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@curcpu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_task_fn_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_task_fn_rx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* @task_fn_rxs, align 4
  %13 = call i32 @DBG_COUNTER_INC(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @if_getdrvflags(i32 %16)
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @__predict_false(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %80

26:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 16, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @iflib_rxeof(%struct.TYPE_6__* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36, %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFC_LEGACY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i32 @IFDI_INTR_ENABLE(%struct.TYPE_7__* %49)
  br label %57

51:                                               ; preds = %41
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IFDI_RX_QUEUE_INTR_ENABLE(%struct.TYPE_7__* %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* @rx_intr_enables, align 4
  %59 = call i32 @DBG_COUNTER_INC(i32 %58)
  br label %60

60:                                               ; preds = %57, %36
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @if_getdrvflags(i32 %63)
  %65 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @__predict_false(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %80

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = call i32 @GROUPTASK_ENQUEUE(i32* %78)
  br label %80

80:                                               ; preds = %25, %72, %76, %73
  ret void
}

declare dso_local i32 @DBG_COUNTER_INC(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @iflib_rxeof(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @IFDI_INTR_ENABLE(%struct.TYPE_7__*) #1

declare dso_local i32 @IFDI_RX_QUEUE_INTR_ENABLE(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GROUPTASK_ENQUEUE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

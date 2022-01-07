; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ng_device_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_device.c_ng_device_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@DBG = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NGDF_RWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_device_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_device_rcvdata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @NG_HOOK_NODE(i32 %8)
  %10 = call %struct.TYPE_4__* @NG_NODE_PRIVATE(i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load i32, i32* @DBG, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %14 = call i32 @NGI_GET_M(i32 %12, %struct.mbuf* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @NG_FREE_ITEM(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = call i32 @IF_LOCK(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = call i64 @_IF_QFULL(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @IF_UNLOCK(i32* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = call i32 @NG_FREE_M(%struct.mbuf* %28)
  %30 = load i32, i32* @ENOBUFS, align 4
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %35 = call i32 @_IF_ENQUEUE(i32* %33, %struct.mbuf* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = call i32 @IF_UNLOCK(i32* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = call i32 @mtx_lock(i32* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NGDF_RWAIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %31
  %49 = load i32, i32* @NGDF_RWAIT, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = call i32 @wakeup(%struct.TYPE_4__* %55)
  br label %57

57:                                               ; preds = %48, %31
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @mtx_unlock(i32* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %24
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_4__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @IF_LOCK(i32*) #1

declare dso_local i64 @_IF_QFULL(i32*) #1

declare dso_local i32 @IF_UNLOCK(i32*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @_IF_ENQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.TYPE_4__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

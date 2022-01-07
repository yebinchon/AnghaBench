; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_rtclean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_rtclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32, %struct.TYPE_14__*, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@ng_btsocket_sco_sockets_mtx = common dso_local global i32 0, align 4
@ng_btsocket_sco_sockets = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@NG_BTSOCKET_SCO_TIMO = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@NG_BTSOCKET_SCO_CLOSED = common dso_local global i32 0, align 4
@ng_btsocket_sco_rt_mtx = common dso_local global i32 0, align 4
@ng_btsocket_sco_rt = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_SCO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ng_btsocket_sco_rtclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_btsocket_sco_rtclean(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %9 = call i32 @mtx_lock(i32* @ng_btsocket_sco_sockets_mtx)
  %10 = call %struct.TYPE_13__* @LIST_FIRST(i32* @ng_btsocket_sco_sockets)
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  br label %11

11:                                               ; preds = %65, %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %70

14:                                               ; preds = %11
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = load i32, i32* @next, align 4
  %20 = call %struct.TYPE_13__* @LIST_NEXT(%struct.TYPE_13__* %18, i32 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %65

25:                                               ; preds = %14
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %25
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @NG_HOOK_NOT_VALID(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %32
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NG_BTSOCKET_SCO_TIMO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i32 @ng_btsocket_sco_untimeout(%struct.TYPE_13__* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %52, align 8
  %53 = load i32, i32* @ENETDOWN, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @NG_BTSOCKET_SCO_CLOSED, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = call i32 @soisdisconnected(%struct.TYPE_14__* %63)
  br label %65

65:                                               ; preds = %50, %32, %25, %14
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = call i32 @mtx_unlock(i32* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %5, align 8
  br label %11

70:                                               ; preds = %11
  %71 = call i32 @mtx_unlock(i32* @ng_btsocket_sco_sockets_mtx)
  %72 = call i32 @mtx_lock(i32* @ng_btsocket_sco_rt_mtx)
  %73 = call %struct.TYPE_13__* @LIST_FIRST(i32* @ng_btsocket_sco_rt)
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %7, align 8
  br label %74

74:                                               ; preds = %108, %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %110

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = load i32, i32* @next, align 4
  %80 = call %struct.TYPE_13__* @LIST_NEXT(%struct.TYPE_13__* %78, i32 %79)
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %8, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %108

85:                                               ; preds = %77
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @NG_HOOK_NOT_VALID(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = load i32, i32* @next, align 4
  %94 = call i32 @LIST_REMOVE(%struct.TYPE_13__* %92, i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @NG_HOOK_SET_PRIVATE(i32* %97, i32* null)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @NG_HOOK_UNREF(i32* %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = call i32 @bzero(%struct.TYPE_13__* %103, i32 48)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = load i32, i32* @M_NETGRAPH_BTSOCKET_SCO, align 4
  %107 = call i32 @free(%struct.TYPE_13__* %105, i32 %106)
  br label %108

108:                                              ; preds = %91, %85, %77
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %7, align 8
  br label %74

110:                                              ; preds = %74
  %111 = call i32 @mtx_unlock(i32* @ng_btsocket_sco_rt_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_13__* @LIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_13__* @LIST_NEXT(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #1

declare dso_local i32 @ng_btsocket_sco_untimeout(%struct.TYPE_13__*) #1

declare dso_local i32 @soisdisconnected(%struct.TYPE_14__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32*, i32*) #1

declare dso_local i32 @NG_HOOK_UNREF(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

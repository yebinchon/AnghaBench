; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_rtclean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_rtclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32, %struct.TYPE_12__*, i64, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32 }

@ng_btsocket_l2cap_rt_mtx = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_sockets_mtx = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_sockets = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_TIMO = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_CLOSED = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_rt = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_L2CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ng_btsocket_l2cap_rtclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_btsocket_l2cap_rtclean(i8* %0, i32 %1) #0 {
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
  %9 = call i32 @mtx_lock(i32* @ng_btsocket_l2cap_rt_mtx)
  %10 = call i32 @mtx_lock(i32* @ng_btsocket_l2cap_sockets_mtx)
  %11 = call %struct.TYPE_13__* @LIST_FIRST(i32* @ng_btsocket_l2cap_sockets)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  br label %12

12:                                               ; preds = %70, %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %75

15:                                               ; preds = %12
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = load i32, i32* @next, align 4
  %21 = call %struct.TYPE_13__* @LIST_NEXT(%struct.TYPE_13__* %19, i32 %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %70

26:                                               ; preds = %15
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %70

33:                                               ; preds = %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @NG_HOOK_NOT_VALID(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NG_BTSOCKET_L2CAP_TIMO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = call i32 @ng_btsocket_l2cap_untimeout(%struct.TYPE_13__* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @ENETDOWN, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @NG_BTSOCKET_L2CAP_CLOSED, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = call i32 @soisdisconnected(%struct.TYPE_14__* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %69, align 8
  br label %70

70:                                               ; preds = %51, %33, %26, %15
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = call i32 @mtx_unlock(i32* %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %5, align 8
  br label %12

75:                                               ; preds = %12
  %76 = call %struct.TYPE_13__* @LIST_FIRST(i32* @ng_btsocket_l2cap_rt)
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %7, align 8
  br label %77

77:                                               ; preds = %111, %75
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = load i32, i32* @next, align 4
  %83 = call %struct.TYPE_13__* @LIST_NEXT(%struct.TYPE_13__* %81, i32 %82)
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %8, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %111

88:                                               ; preds = %80
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @NG_HOOK_NOT_VALID(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = load i32, i32* @next, align 4
  %97 = call i32 @LIST_REMOVE(%struct.TYPE_13__* %95, i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @NG_HOOK_SET_PRIVATE(i32* %100, i32* null)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @NG_HOOK_UNREF(i32* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = call i32 @bzero(%struct.TYPE_13__* %106, i32 64)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = load i32, i32* @M_NETGRAPH_BTSOCKET_L2CAP, align 4
  %110 = call i32 @free(%struct.TYPE_13__* %108, i32 %109)
  br label %111

111:                                              ; preds = %94, %88, %80
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %7, align 8
  br label %77

113:                                              ; preds = %77
  %114 = call i32 @mtx_unlock(i32* @ng_btsocket_l2cap_sockets_mtx)
  %115 = call i32 @mtx_unlock(i32* @ng_btsocket_l2cap_rt_mtx)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_13__* @LIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_13__* @LIST_NEXT(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #1

declare dso_local i32 @ng_btsocket_l2cap_untimeout(%struct.TYPE_13__*) #1

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

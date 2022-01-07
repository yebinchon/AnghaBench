; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_new_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_new_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i32, i32, i32, i8*, i32, i8*, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@M_NETGRAPH_L2CAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NG_L2CAP_L2CA_IDTYPE_ATT = common dso_local global i32 0, align 4
@NG_L2CAP_ATT_CID = common dso_local global i64 0, align 8
@NG_L2CAP_L2CA_IDTYPE_SMP = common dso_local global i32 0, align 4
@NG_L2CAP_SMP_CID = common dso_local global i64 0, align 8
@NG_HCI_LINK_ACL = common dso_local global i64 0, align 8
@NG_L2CAP_NULL_CID = common dso_local global i64 0, align 8
@NG_L2CAP_CLOSED = common dso_local global i32 0, align 4
@NG_L2CAP_MTU_DEFAULT = common dso_local global i8* null, align 8
@NG_L2CAP_FLUSH_TIMO_DEFAULT = common dso_local global i32 0, align 4
@NG_L2CAP_LINK_TIMO_DEFAULT = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ng_l2cap_new_chan(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  %11 = load i32, i32* @M_NETGRAPH_L2CAP, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_15__* @malloc(i32 80, i32 %11, i32 %14)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = icmp eq %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %105

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NG_L2CAP_L2CA_IDTYPE_ATT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* @NG_L2CAP_ATT_CID, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  br label %51

29:                                               ; preds = %19
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NG_L2CAP_L2CA_IDTYPE_SMP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* @NG_L2CAP_SMP_CID, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i64 %34, i64* %38, align 8
  br label %50

39:                                               ; preds = %29
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NG_HCI_LINK_ACL, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @ng_l2cap_get_cid(%struct.TYPE_13__* %40, i32 %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %39, %33
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NG_L2CAP_NULL_CID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 10
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %66, align 8
  %67 = load i32, i32* @NG_L2CAP_CLOSED, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** @NG_L2CAP_MTU_DEFAULT, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = call i32 (...) @ng_l2cap_default_flow()
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 7
  %76 = call i32 @bcopy(i32 %73, i32* %75, i32 4)
  %77 = load i8*, i8** @NG_L2CAP_MTU_DEFAULT, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = call i32 (...) @ng_l2cap_default_flow()
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 5
  %83 = call i32 @bcopy(i32 %80, i32* %82, i32 4)
  %84 = load i32, i32* @NG_L2CAP_FLUSH_TIMO_DEFAULT, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @NG_L2CAP_LINK_TIMO_DEFAULT, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = load i32, i32* @next, align 4
  %94 = call i32 @LIST_INSERT_HEAD(i32* %91, %struct.TYPE_15__* %92, i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = call i32 @ng_l2cap_con_ref(%struct.TYPE_14__* %95)
  br label %103

97:                                               ; preds = %51
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = call i32 @bzero(%struct.TYPE_15__* %98, i32 80)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = load i32, i32* @M_NETGRAPH_L2CAP, align 4
  %102 = call i32 @free(%struct.TYPE_15__* %100, i32 %101)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  br label %103

103:                                              ; preds = %97, %60
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %5, align 8
  br label %105

105:                                              ; preds = %103, %18
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %106
}

declare dso_local %struct.TYPE_15__* @malloc(i32, i32, i32) #1

declare dso_local i64 @ng_l2cap_get_cid(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @ng_l2cap_default_flow(...) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ng_l2cap_con_ref(%struct.TYPE_14__*) #1

declare dso_local i32 @bzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

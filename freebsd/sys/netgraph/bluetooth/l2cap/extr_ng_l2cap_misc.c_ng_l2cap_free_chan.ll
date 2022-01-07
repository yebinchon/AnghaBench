; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_free_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_free_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }

@next = common dso_local global i32 0, align 4
@NG_L2CAP_CMD_PENDING = common dso_local global i32 0, align 4
@M_NETGRAPH_L2CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_l2cap_free_chan(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %8)
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %3, align 8
  br label %10

10:                                               ; preds = %37, %1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__* %14, i32 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = icmp eq %struct.TYPE_15__* %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i32 @ng_l2cap_unlink_cmd(%struct.TYPE_14__* %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NG_L2CAP_CMD_PENDING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = call i32 @ng_l2cap_command_untimeout(%struct.TYPE_14__* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i32 @ng_l2cap_free_cmd(%struct.TYPE_14__* %35)
  br label %37

37:                                               ; preds = %34, %13
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %3, align 8
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = load i32, i32* @next, align 4
  %42 = call i32 @LIST_REMOVE(%struct.TYPE_15__* %40, i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = call i32 @ng_l2cap_con_unref(%struct.TYPE_16__* %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = call i32 @bzero(%struct.TYPE_15__* %47, i32 8)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = load i32, i32* @M_NETGRAPH_L2CAP, align 4
  %51 = call i32 @free(%struct.TYPE_15__* %49, i32 %50)
  ret void
}

declare dso_local %struct.TYPE_14__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ng_l2cap_unlink_cmd(%struct.TYPE_14__*) #1

declare dso_local i32 @ng_l2cap_command_untimeout(%struct.TYPE_14__*) #1

declare dso_local i32 @ng_l2cap_free_cmd(%struct.TYPE_14__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ng_l2cap_con_unref(%struct.TYPE_16__*) #1

declare dso_local i32 @bzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

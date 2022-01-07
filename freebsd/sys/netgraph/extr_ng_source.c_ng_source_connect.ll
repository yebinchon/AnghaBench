; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.ng_mesg = type { i32 }

@NGM_ETHER_COOKIE = common dso_local global i32 0, align 4
@NGM_ETHER_GET_IFNAME = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ng_source_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_source_connect(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ng_mesg*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @NG_HOOK_NODE(i64 %7)
  %9 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load %struct.ng_mesg*, %struct.ng_mesg** %5, align 8
  %17 = load i32, i32* @NGM_ETHER_COOKIE, align 4
  %18 = load i32, i32* @NGM_ETHER_GET_IFNAME, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %16, i32 %17, i32 %18, i32 0, i32 %19)
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %5, align 8
  %22 = icmp eq %struct.ng_mesg* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOBUFS, align 4
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %5, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @NG_PEER_NODE(i64 %33)
  %35 = call i32 @NG_NODE_ID(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @NG_NODE_ID(i32 %38)
  %40 = call i32 @NG_SEND_MSG_ID(i32 %26, i32 %29, %struct.ng_mesg* %30, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %25, %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i64) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_ID(i32, i32, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @NG_NODE_ID(i32) #1

declare dso_local i32 @NG_PEER_NODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

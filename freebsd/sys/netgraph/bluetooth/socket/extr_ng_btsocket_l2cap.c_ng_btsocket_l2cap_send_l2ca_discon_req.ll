; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_send_l2ca_discon_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_send_l2ca_discon_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.ng_mesg = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@NGM_L2CAP_COOKIE = common dso_local global i32 0, align 4
@NGM_L2CAP_L2CA_DISCON = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @ng_btsocket_l2cap_send_l2ca_discon_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_btsocket_l2cap_send_l2ca_discon_req(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.ng_mesg*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @NG_HOOK_NOT_VALID(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24, %17, %2
  %33 = load i32, i32* @ENETDOWN, align 4
  store i32 %33, i32* %3, align 4
  br label %73

34:                                               ; preds = %24
  %35 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %36 = load i32, i32* @NGM_L2CAP_COOKIE, align 4
  %37 = load i32, i32* @NGM_L2CAP_L2CA_DISCON, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %35, i32 %36, i32 %37, i32 8, i32 %38)
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %41 = icmp eq %struct.ng_mesg* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %50 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %7, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ng_btsocket_l2cap_node, align 4
  %65 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @NG_SEND_MSG_HOOK(i32 %63, i32 %64, %struct.ng_mesg* %65, i32* %70, i32 0)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %44, %42, %32
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32, %struct.ng_mesg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

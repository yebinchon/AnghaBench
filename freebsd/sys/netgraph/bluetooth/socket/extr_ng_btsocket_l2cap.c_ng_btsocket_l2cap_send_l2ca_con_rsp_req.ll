; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_send_l2ca_con_rsp_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_send_l2ca_con_rsp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.ng_mesg = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@NGM_L2CAP_COOKIE = common dso_local global i32 0, align 4
@NGM_L2CAP_L2CA_CON_RSP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32)* @ng_btsocket_l2cap_send_l2ca_con_rsp_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_btsocket_l2cap_send_l2ca_con_rsp_req(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ng_mesg*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %16, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = icmp eq %struct.TYPE_7__* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %7
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @NG_HOOK_NOT_VALID(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %21, %7
  %33 = load i32, i32* @ENETDOWN, align 4
  store i32 %33, i32* %8, align 4
  br label %79

34:                                               ; preds = %26
  %35 = load %struct.ng_mesg*, %struct.ng_mesg** %16, align 8
  %36 = load i32, i32* @NGM_L2CAP_COOKIE, align 4
  %37 = load i32, i32* @NGM_L2CAP_L2CA_CON_RSP, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %35, i32 %36, i32 %37, i32 32, i32 %38)
  %40 = load %struct.ng_mesg*, %struct.ng_mesg** %16, align 8
  %41 = icmp eq %struct.ng_mesg* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %8, align 4
  br label %79

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %16, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.ng_mesg*, %struct.ng_mesg** %16, align 8
  %50 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %17, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = call i32 @bcopy(i32 %53, i32* %55, i32 4)
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @ng_btsocket_l2cap_node, align 4
  %73 = load %struct.ng_mesg*, %struct.ng_mesg** %16, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @NG_SEND_MSG_HOOK(i32 %71, i32 %72, %struct.ng_mesg* %73, i32* %76, i32 0)
  %78 = load i32, i32* %18, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %44, %42, %32
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32, %struct.ng_mesg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

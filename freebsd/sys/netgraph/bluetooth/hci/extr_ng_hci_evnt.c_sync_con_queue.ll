; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_evnt.c_sync_con_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/hci/extr_ng_hci_evnt.c_sync_con_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.ng_mesg = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@NG_HCI_LINK_SCO = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@NGM_HCI_COOKIE = common dso_local global i32 0, align 4
@NGM_HCI_SYNC_CON_QUEUE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32)* @sync_con_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_con_queue(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NG_HCI_LINK_SCO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32* [ %20, %17 ], [ %24, %21 ]
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @NG_HOOK_NOT_VALID(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @ENOTCONN, align 4
  store i32 %34, i32* %4, align 4
  br label %66

35:                                               ; preds = %29
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %37 = load i32, i32* @NGM_HCI_COOKIE, align 4
  %38 = load i32, i32* @NGM_HCI_SYNC_CON_QUEUE, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %36, i32 %37, i32 %38, i32 8, i32 %39)
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %42 = icmp eq %struct.ng_mesg* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %35
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %10, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @NG_SEND_MSG_HOOK(i32 %58, i32 %61, %struct.ng_mesg* %62, i32* %63, i32 0)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %45, %43, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @NG_HOOK_NOT_VALID(i32*) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32, %struct.ng_mesg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

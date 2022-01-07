; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap_raw.c_ng_btsocket_l2cap_raw_send_ngmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap_raw.c_ng_btsocket_l2cap_raw_send_ngmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i32 }

@NGM_L2CAP_COOKIE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_raw_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @ng_btsocket_l2cap_raw_send_ngmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_btsocket_l2cap_raw_send_ngmsg(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %13 = load i32, i32* @NGM_L2CAP_COOKIE, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %19 = icmp eq %struct.ng_mesg* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %31 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @bcopy(i8* %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %25, %22
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ng_btsocket_l2cap_raw_node, align 4
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @NG_SEND_MSG_HOOK(i32 %36, i32 %37, %struct.ng_mesg* %38, i32 %39, i32 0)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32, %struct.ng_mesg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

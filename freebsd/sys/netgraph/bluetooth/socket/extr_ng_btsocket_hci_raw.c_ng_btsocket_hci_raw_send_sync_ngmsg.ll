; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_send_sync_ngmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_send_sync_ngmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ng_mesg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NGM_HCI_COOKIE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ng_btsocket_hci_raw_node = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"hcictl\00", align 1
@ng_btsocket_hci_raw_ioctl_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i8*, i32)* @ng_btsocket_hci_raw_send_sync_ngmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_9__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ng_mesg*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @mtx_assert(i32* %15, i32 %16)
  %18 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %19 = load i32, i32* @NGM_HCI_COOKIE, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %18, i32 %19, i32 %20, i32 0, i32 %21)
  %23 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %24 = icmp eq %struct.ng_mesg* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %6, align 4
  br label %99

27:                                               ; preds = %5
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %29 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @ng_btsocket_hci_raw_get_token(i32* %30)
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %33 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @ng_btsocket_hci_raw_node, align 4
  %42 = load %struct.ng_mesg*, %struct.ng_mesg** %12, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @NG_SEND_MSG_PATH(i32 %40, i32 %41, %struct.ng_mesg* %42, i8* %43, i32 0)
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %27
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %99

51:                                               ; preds = %27
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* @PZERO, align 4
  %57 = load i32, i32* @PCATCH, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ng_btsocket_hci_raw_ioctl_timeout, align 4
  %60 = load i32, i32* @hz, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @msleep(%struct.TYPE_10__** %53, i32* %55, i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %99

69:                                               ; preds = %51
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = icmp ne %struct.TYPE_10__* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @bcopy(i32 %88, i8* %89, i32 %90)
  br label %94

92:                                               ; preds = %74, %69
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %83
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i32 @NG_FREE_MSG(%struct.TYPE_10__* %97)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %67, %47, %25
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @ng_btsocket_hci_raw_get_token(i32*) #1

declare dso_local i32 @NG_SEND_MSG_PATH(i32, i32, %struct.ng_mesg*, i8*, i32) #1

declare dso_local i32 @msleep(%struct.TYPE_10__**, i32*, i32, i8*, i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @NG_FREE_MSG(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

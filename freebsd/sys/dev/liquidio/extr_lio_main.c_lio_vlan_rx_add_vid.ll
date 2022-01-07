; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio_ctrl_pkt = type { i32, i32, %struct.lio*, i32, %struct.TYPE_7__ }
%struct.lio = type { %struct.octeon_device*, %struct.TYPE_10__ }
%struct.octeon_device = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@LIO_CMD_ADD_VLAN_FILTER = common dso_local global i32 0, align 4
@lio_ctrl_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Add VLAN filter failed in core (ret: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifnet*, i32)* @lio_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_vlan_rx_add_vid(i8* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lio_ctrl_pkt, align 8
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = call i8* @if_getsoftc(%struct.ifnet* %11)
  %13 = bitcast i8* %12 to %struct.lio*
  store %struct.lio* %13, %struct.lio** %8, align 8
  %14 = load %struct.lio*, %struct.lio** %8, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 0
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = call i8* @if_getsoftc(%struct.ifnet* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %65

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 4095
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  br label %65

29:                                               ; preds = %25
  %30 = call i32 @bzero(%struct.lio_ctrl_pkt* %7, i32 40)
  %31 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @LIO_CMD_ADD_VLAN_FILTER, align 4
  %34 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.lio*, %struct.lio** %8, align 8
  %42 = getelementptr inbounds %struct.lio, %struct.lio* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 0
  store i32 100, i32* %50, align 8
  %51 = load %struct.lio*, %struct.lio** %8, align 8
  %52 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 2
  store %struct.lio* %51, %struct.lio** %52, align 8
  %53 = load i32, i32* @lio_ctrl_cmd_completion, align 4
  %54 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.lio*, %struct.lio** %8, align 8
  %56 = getelementptr inbounds %struct.lio, %struct.lio* %55, i32 0, i32 0
  %57 = load %struct.octeon_device*, %struct.octeon_device** %56, align 8
  %58 = call i32 @lio_send_ctrl_pkt(%struct.octeon_device* %57, %struct.lio_ctrl_pkt* %7)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %29
  %62 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @lio_dev_err(%struct.octeon_device* %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %21, %28, %61, %29
  ret void
}

declare dso_local i8* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.lio_ctrl_pkt*, i32) #1

declare dso_local i32 @lio_send_ctrl_pkt(%struct.octeon_device*, %struct.lio_ctrl_pkt*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

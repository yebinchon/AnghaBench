; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio_ctrl_pkt = type { i32, i64*, i32, %struct.lio*, i32, %struct.TYPE_7__ }
%struct.lio = type { %struct.TYPE_10__, %struct.octeon_device* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@LIO_CMD_CHANGE_MACADDR = common dso_local global i32 0, align 4
@lio_ctrl_cmd_completion = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MAC Address change failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_set_mac(%struct.ifnet* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lio_ctrl_pkt, align 8
  %7 = alloca %struct.lio*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call %struct.lio* @if_getsoftc(%struct.ifnet* %10)
  store %struct.lio* %11, %struct.lio** %7, align 8
  %12 = load %struct.lio*, %struct.lio** %7, align 8
  %13 = getelementptr inbounds %struct.lio, %struct.lio* %12, i32 0, i32 1
  %14 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  store %struct.octeon_device* %14, %struct.octeon_device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @lio_is_valid_ether_addr(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = call i32 @bzero(%struct.lio_ctrl_pkt* %6, i32 72)
  %22 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @LIO_CMD_CHANGE_MACADDR, align 4
  %25 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.lio*, %struct.lio** %7, align 8
  %35 = getelementptr inbounds %struct.lio, %struct.lio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load %struct.lio*, %struct.lio** %7, align 8
  %44 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 3
  store %struct.lio* %43, %struct.lio** %44, align 8
  %45 = load i32, i32* @lio_ctrl_cmd_completion, align 4
  %46 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 0
  store i32 100, i32* %47, align 8
  %48 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = bitcast i64* %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @ETHER_HDR_LEN, align 4
  %58 = call i32 @memcpy(i32* %55, i32* %56, i32 %57)
  %59 = load %struct.lio*, %struct.lio** %7, align 8
  %60 = getelementptr inbounds %struct.lio, %struct.lio* %59, i32 0, i32 1
  %61 = load %struct.octeon_device*, %struct.octeon_device** %60, align 8
  %62 = call i32 @lio_send_ctrl_pkt(%struct.octeon_device* %61, %struct.lio_ctrl_pkt* %6)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %20
  %66 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %67 = call i32 @lio_dev_err(%struct.octeon_device* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %20
  %70 = load %struct.lio*, %struct.lio** %7, align 8
  %71 = getelementptr inbounds %struct.lio, %struct.lio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @ETHER_HDR_LEN, align 4
  %76 = call i32 @memcpy(i32* %73, i32* %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %65, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @lio_is_valid_ether_addr(i32*) #1

declare dso_local i32 @bzero(%struct.lio_ctrl_pkt*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lio_send_ctrl_pkt(%struct.octeon_device*, %struct.lio_ctrl_pkt*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

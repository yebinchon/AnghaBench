; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_send_queue_count_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_send_queue_count_update.c"
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
%struct.TYPE_6__ = type { i8*, i8*, i32 }

@LIO_CMD_QUEUE_COUNT_CTL = common dso_local global i32 0, align 4
@lio_ctrl_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to send Queue reset command (ret: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i8*)* @lio_send_queue_count_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_send_queue_count_update(%struct.ifnet* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lio_ctrl_pkt, align 8
  %7 = alloca %struct.lio*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call %struct.lio* @if_getsoftc(%struct.ifnet* %10)
  store %struct.lio* %11, %struct.lio** %7, align 8
  %12 = load %struct.lio*, %struct.lio** %7, align 8
  %13 = getelementptr inbounds %struct.lio, %struct.lio* %12, i32 0, i32 0
  %14 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  store %struct.octeon_device* %14, %struct.octeon_device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = call i32 @bzero(%struct.lio_ctrl_pkt* %6, i32 56)
  %16 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @LIO_CMD_QUEUE_COUNT_CTL, align 4
  %19 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.lio*, %struct.lio** %7, align 8
  %31 = getelementptr inbounds %struct.lio, %struct.lio* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 0
  store i32 100, i32* %39, align 8
  %40 = load %struct.lio*, %struct.lio** %7, align 8
  %41 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 2
  store %struct.lio* %40, %struct.lio** %41, align 8
  %42 = load i32, i32* @lio_ctrl_cmd_completion, align 4
  %43 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %6, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.lio*, %struct.lio** %7, align 8
  %45 = getelementptr inbounds %struct.lio, %struct.lio* %44, i32 0, i32 0
  %46 = load %struct.octeon_device*, %struct.octeon_device** %45, align 8
  %47 = call i32 @lio_send_ctrl_pkt(%struct.octeon_device* %46, %struct.lio_ctrl_pkt* %6)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @lio_dev_err(%struct.octeon_device* %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 -1, i32* %3, align 4
  br label %55

54:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.lio_ctrl_pkt*, i32) #1

declare dso_local i32 @lio_send_ctrl_pkt(%struct.octeon_device*, %struct.lio_ctrl_pkt*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

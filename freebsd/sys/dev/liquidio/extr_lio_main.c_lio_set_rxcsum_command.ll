; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_set_rxcsum_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_set_rxcsum_command.c"
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

@lio_ctrl_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"DEVFLAGS RXCSUM change failed in core(ret:0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @lio_set_rxcsum_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_rxcsum_command(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lio_ctrl_pkt, align 8
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.lio* @if_getsoftc(%struct.ifnet* %11)
  store %struct.lio* %12, %struct.lio** %8, align 8
  %13 = load %struct.lio*, %struct.lio** %8, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 0
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  store %struct.octeon_device* %15, %struct.octeon_device** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.lio*, %struct.lio** %8, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 0
  store i32 100, i32* %35, align 8
  %36 = load %struct.lio*, %struct.lio** %8, align 8
  %37 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 2
  store %struct.lio* %36, %struct.lio** %37, align 8
  %38 = load i32, i32* @lio_ctrl_cmd_completion, align 4
  %39 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.lio*, %struct.lio** %8, align 8
  %41 = getelementptr inbounds %struct.lio, %struct.lio* %40, i32 0, i32 0
  %42 = load %struct.octeon_device*, %struct.octeon_device** %41, align 8
  %43 = call i32 @lio_send_ctrl_pkt(%struct.octeon_device* %42, %struct.lio_ctrl_pkt* %7)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @lio_dev_err(%struct.octeon_device* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %3
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @lio_send_ctrl_pkt(%struct.octeon_device*, %struct.lio_ctrl_pkt*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

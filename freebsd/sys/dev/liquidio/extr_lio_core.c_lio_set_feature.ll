; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_set_feature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_set_feature.c"
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
@.str = private unnamed_addr constant [43 x i8] c"Feature change failed in core (ret: 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_set_feature(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
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
  %16 = call i32 @bzero(%struct.lio_ctrl_pkt* %7, i32 40)
  %17 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.lio*, %struct.lio** %8, align 8
  %28 = getelementptr inbounds %struct.lio, %struct.lio* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 0
  store i32 100, i32* %36, align 8
  %37 = load %struct.lio*, %struct.lio** %8, align 8
  %38 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 2
  store %struct.lio* %37, %struct.lio** %38, align 8
  %39 = load i32, i32* @lio_ctrl_cmd_completion, align 4
  %40 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %7, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.lio*, %struct.lio** %8, align 8
  %42 = getelementptr inbounds %struct.lio, %struct.lio* %41, i32 0, i32 0
  %43 = load %struct.octeon_device*, %struct.octeon_device** %42, align 8
  %44 = call i32 @lio_send_ctrl_pkt(%struct.octeon_device* %43, %struct.lio_ctrl_pkt* %7)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @lio_dev_err(%struct.octeon_device* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %3
  %52 = load i32, i32* %10, align 4
  ret i32 %52
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

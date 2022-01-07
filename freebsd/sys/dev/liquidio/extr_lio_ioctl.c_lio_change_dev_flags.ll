; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_change_dev_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_change_dev_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio_ctrl_pkt = type { i32, %struct.lio*, i32, %struct.TYPE_7__ }
%struct.lio = type { %struct.TYPE_10__, %struct.octeon_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@LIO_CMD_CHANGE_DEVFLAGS = common dso_local global i32 0, align 4
@lio_ctrl_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to change flags ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @lio_change_dev_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_change_dev_flags(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lio_ctrl_pkt, align 8
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = call %struct.lio* @if_getsoftc(%struct.ifnet* %7)
  store %struct.lio* %8, %struct.lio** %4, align 8
  %9 = load %struct.lio*, %struct.lio** %4, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 1
  %11 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  store %struct.octeon_device* %11, %struct.octeon_device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 @bzero(%struct.lio_ctrl_pkt* %3, i32 40)
  %13 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @LIO_CMD_CHANGE_DEVFLAGS, align 4
  %16 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %3, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %20 = call i32 @lio_get_new_flags(%struct.ifnet* %19)
  %21 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %3, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.lio*, %struct.lio** %4, align 8
  %25 = getelementptr inbounds %struct.lio, %struct.lio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %3, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.lio*, %struct.lio** %4, align 8
  %34 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %3, i32 0, i32 1
  store %struct.lio* %33, %struct.lio** %34, align 8
  %35 = load i32, i32* @lio_ctrl_cmd_completion, align 4
  %36 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %3, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %38 = call i32 @lio_send_ctrl_pkt(%struct.octeon_device* %37, %struct.lio_ctrl_pkt* %3)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %1
  %42 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @lio_dev_err(%struct.octeon_device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %1
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.lio_ctrl_pkt*, i32) #1

declare dso_local i32 @lio_get_new_flags(%struct.ifnet*) #1

declare dso_local i32 @lio_send_ctrl_pkt(%struct.octeon_device*, %struct.lio_ctrl_pkt*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

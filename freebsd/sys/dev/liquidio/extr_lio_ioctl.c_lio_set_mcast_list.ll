; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_mcast_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_mcast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { %struct.octeon_device*, %struct.TYPE_8__ }
%struct.octeon_device = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lio_ctrl_pkt = type { %struct.TYPE_10__, i64, i32*, i32, %struct.lio*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@LIO_CMD_SET_MULTI_LIST = common dso_local global i32 0, align 4
@lio_ctrl_cmd_completion = common dso_local global i32 0, align 4
@lio_copy_maddr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"DEVFLAGS change failed in core (ret: 0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @lio_set_mcast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_mcast_list(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lio*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.lio_ctrl_pkt, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call %struct.lio* @if_getsoftc(%struct.ifnet* %8)
  store %struct.lio* %9, %struct.lio** %3, align 8
  %10 = load %struct.lio*, %struct.lio** %3, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 0
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %4, align 8
  %13 = call i32 @bzero(%struct.lio_ctrl_pkt* %5, i32 64)
  %14 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @LIO_CMD_SET_MULTI_LIST, align 4
  %17 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %21 = call i32 @lio_get_new_flags(%struct.ifnet* %20)
  %22 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.lio*, %struct.lio** %3, align 8
  %26 = getelementptr inbounds %struct.lio, %struct.lio* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = load %struct.lio*, %struct.lio** %3, align 8
  %35 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 4
  store %struct.lio* %34, %struct.lio** %35, align 8
  %36 = load i32, i32* @lio_ctrl_cmd_completion, align 4
  %37 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %39 = load i32, i32* @lio_copy_maddr, align 4
  %40 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @if_foreach_llmaddr(%struct.ifnet* %38, i32 %39, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %struct.lio_ctrl_pkt, %struct.lio_ctrl_pkt* %5, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.lio*, %struct.lio** %3, align 8
  %54 = getelementptr inbounds %struct.lio, %struct.lio* %53, i32 0, i32 0
  %55 = load %struct.octeon_device*, %struct.octeon_device** %54, align 8
  %56 = call i32 @lio_send_ctrl_pkt(%struct.octeon_device* %55, %struct.lio_ctrl_pkt* %5)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %1
  %60 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @lio_dev_err(%struct.octeon_device* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %1
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  br label %69

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  ret i32 %70
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @bzero(%struct.lio_ctrl_pkt*, i32) #1

declare dso_local i32 @lio_get_new_flags(%struct.ifnet*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @lio_send_ctrl_pkt(%struct.octeon_device*, %struct.lio_ctrl_pkt*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { i32, %struct.TYPE_2__, %struct.octeon_device*, %struct.ifnet* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.ifnet = type { i32 }

@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Interface Open, ready for traffic\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MAC change failed, error: %d\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Interface is opened\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lio*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.lio*
  store %struct.lio* %11, %struct.lio** %3, align 8
  %12 = load %struct.lio*, %struct.lio** %3, align 8
  %13 = getelementptr inbounds %struct.lio, %struct.lio* %12, i32 0, i32 3
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load %struct.lio*, %struct.lio** %3, align 8
  %16 = getelementptr inbounds %struct.lio, %struct.lio* %15, i32 0, i32 2
  %17 = load %struct.octeon_device*, %struct.octeon_device** %16, align 8
  store %struct.octeon_device* %17, %struct.octeon_device** %5, align 8
  %18 = load i32, i32* @ETHER_HDR_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.lio*, %struct.lio** %3, align 8
  %23 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %24 = call i32 @lio_ifstate_set(%struct.lio* %22, i32 %23)
  %25 = load %struct.lio*, %struct.lio** %3, align 8
  %26 = getelementptr inbounds %struct.lio, %struct.lio* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %28 = call i32 @lio_dev_info(%struct.octeon_device* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.lio*, %struct.lio** %3, align 8
  %30 = call i32 @lio_send_rx_ctrl_cmd(%struct.lio* %29, i32 1)
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32* @IF_LLADDR(%struct.ifnet* %31)
  store i32* %32, i32** %6, align 8
  %33 = load %struct.lio*, %struct.lio** %3, align 8
  %34 = getelementptr inbounds %struct.lio, %struct.lio* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* @ETHER_HDR_LEN, align 4
  %38 = call i32 @memcpy(i32* %21, i32* %36, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @lio_is_mac_changed(i32* %39, i32* %21)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %1
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @lio_set_mac(%struct.ifnet* %43, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @lio_dev_err(%struct.octeon_device* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %56 = call i32 @if_setdrvflagbits(%struct.ifnet* %54, i32 %55, i32 0)
  %57 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %58 = call i32 @lio_dev_info(%struct.octeon_device* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lio_ifstate_set(%struct.lio*, i32) #2

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*) #2

declare dso_local i32 @lio_send_rx_ctrl_cmd(%struct.lio*, i32) #2

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @lio_is_mac_changed(i32*, i32*) #2

declare dso_local i32 @lio_set_mac(%struct.ifnet*, i32*) #2

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #2

declare dso_local i32 @if_setdrvflagbits(%struct.ifnet*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

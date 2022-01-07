; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_stop_nic_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_stop_nic_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.lio = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Stopping network interfaces\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Init for Octeon was not completed\0A\00", align 1
@LIO_DRV_OFFLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Network interface stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_stop_nic_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_stop_nic_module(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lio*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = call i32 @lio_dev_dbg(%struct.octeon_device* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %15 = call i32 @lio_dev_err(%struct.octeon_device* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 3
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load i32, i32* @LIO_DRV_OFFLINE, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 3
  %25 = call i32 @mtx_unlock(i32* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %61, %16
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.lio* @if_getsoftc(i32 %36)
  store %struct.lio* %37, %struct.lio** %6, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %57, %32
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %46 = load %struct.lio*, %struct.lio** %6, align 8
  %47 = getelementptr inbounds %struct.lio, %struct.lio* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lio_unregister_droq_ops(%struct.octeon_device* %45, i32 %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %26

64:                                               ; preds = %26
  %65 = load %struct.lio*, %struct.lio** %6, align 8
  %66 = getelementptr inbounds %struct.lio, %struct.lio* %65, i32 0, i32 0
  %67 = call i32 @callout_drain(i32* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %78, %64
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @lio_destroy_nic_device(%struct.octeon_device* %75, i32 %76)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %83 = call i32 @lio_dev_dbg(%struct.octeon_device* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.lio* @if_getsoftc(i32) #1

declare dso_local i32 @lio_unregister_droq_ops(%struct.octeon_device*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @lio_destroy_nic_device(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

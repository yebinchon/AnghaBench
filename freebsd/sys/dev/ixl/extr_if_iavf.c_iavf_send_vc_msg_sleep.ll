; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_send_vc_msg_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_send_vc_msg_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Error sending %b: %d\0A\00", align 1
@IAVF_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Sleeping for op %b\0A\00", align 1
@PRI_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"iavf_vc\00", align 1
@IAVF_AQ_TIMEOUT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%b timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_sc*, i32)* @iavf_send_vc_msg_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_send_vc_msg_sleep(%struct.iavf_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %9 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ixl_vc_send_cmd(%struct.iavf_sc* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IAVF_FLAGS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (%struct.iavf_sc*, i8*, i32, i32, ...) @iavf_dbg_vc(%struct.iavf_sc* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @iflib_in_detach(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IAVF_FLAGS, align 4
  %32 = call i32 (%struct.iavf_sc*, i8*, i32, i32, ...) @iavf_dbg_vc(%struct.iavf_sc* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ixl_vc_get_op_chan(%struct.iavf_sc* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @iflib_ctx_lock_get(i32 %36)
  %38 = load i32, i32* @PRI_MAX, align 4
  %39 = load i32, i32* @IAVF_AQ_TIMEOUT, align 4
  %40 = call i32 @sx_sleep(i32 %35, i32 %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @EWOULDBLOCK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %28
  %45 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %46 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IAVF_FLAGS, align 4
  %50 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %28
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ixl_vc_send_cmd(%struct.iavf_sc*, i32) #1

declare dso_local i32 @iavf_dbg_vc(%struct.iavf_sc*, i8*, i32, i32, ...) #1

declare dso_local i32 @iflib_in_detach(i32) #1

declare dso_local i32 @sx_sleep(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ixl_vc_get_op_chan(%struct.iavf_sc*, i32) #1

declare dso_local i32 @iflib_ctx_lock_get(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

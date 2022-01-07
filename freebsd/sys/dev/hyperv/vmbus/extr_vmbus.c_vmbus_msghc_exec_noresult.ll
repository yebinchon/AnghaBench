; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_msghc_exec_noresult.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_msghc_exec_noresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_msghc = type { %struct.hypercall_postmsg_in, i32 }
%struct.hypercall_postmsg_in = type { i32 }

@SBT_1MS = common dso_local global i32 0, align 4
@HYPERCALL_POSTMSGIN_SIZE = common dso_local global i32 0, align 4
@HYPERCALL_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"hcpmsg\00", align 1
@C_HARDCLOCK = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HC_RETRY_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_msghc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypercall_postmsg_in*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vmbus_msghc* %0, %struct.vmbus_msghc** %3, align 8
  %9 = load i32, i32* @SBT_1MS, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %3, align 8
  %11 = getelementptr inbounds %struct.vmbus_msghc, %struct.vmbus_msghc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hypercall_postmsg_in* @vmbus_xact_req_data(i32 %12)
  store %struct.hypercall_postmsg_in* %13, %struct.hypercall_postmsg_in** %5, align 8
  %14 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %3, align 8
  %15 = getelementptr inbounds %struct.vmbus_msghc, %struct.vmbus_msghc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vmbus_xact_req_paddr(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %3, align 8
  %19 = getelementptr inbounds %struct.vmbus_msghc, %struct.vmbus_msghc* %18, i32 0, i32 0
  %20 = load %struct.hypercall_postmsg_in*, %struct.hypercall_postmsg_in** %5, align 8
  %21 = load i32, i32* @HYPERCALL_POSTMSGIN_SIZE, align 4
  %22 = call i32 @memcpy(%struct.hypercall_postmsg_in* %19, %struct.hypercall_postmsg_in* %20, i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %50, %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 20
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @hypercall_post_message(i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @HYPERCALL_STATUS_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %55

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @C_HARDCLOCK, align 4
  %36 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34, i32 0, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SBT_1S, align 4
  %39 = mul nsw i32 %38, 2
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.hypercall_postmsg_in*, %struct.hypercall_postmsg_in** %5, align 8
  %46 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %3, align 8
  %47 = getelementptr inbounds %struct.vmbus_msghc, %struct.vmbus_msghc* %46, i32 0, i32 0
  %48 = load i32, i32* @HYPERCALL_POSTMSGIN_SIZE, align 4
  %49 = call i32 @memcpy(%struct.hypercall_postmsg_in* %45, %struct.hypercall_postmsg_in* %47, i32 %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load i32, i32* @EIO, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %32
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.hypercall_postmsg_in* @vmbus_xact_req_data(i32) #1

declare dso_local i32 @vmbus_xact_req_paddr(i32) #1

declare dso_local i32 @memcpy(%struct.hypercall_postmsg_in*, %struct.hypercall_postmsg_in*, i32) #1

declare dso_local i64 @hypercall_post_message(i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

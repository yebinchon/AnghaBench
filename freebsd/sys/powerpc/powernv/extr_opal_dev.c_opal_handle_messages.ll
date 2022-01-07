; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_handle_messages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_handle_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_msg = type { i32 }

@opal_handle_messages.msg = internal global %struct.opal_msg zeroinitializer, align 4
@OPAL_GET_MSG = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@OPAL_ASYNC_COMP = common dso_local global i32 0, align 4
@OPAL_EPOW = common dso_local global i32 0, align 4
@OPAL_SHUTDOWN = common dso_local global i32 0, align 4
@OPAL_HMI_EVT = common dso_local global i32 0, align 4
@OPAL_DPO = common dso_local global i32 0, align 4
@OPAL_OCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown OPAL message type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @opal_handle_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_handle_messages() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @OPAL_GET_MSG, align 4
  %4 = call i32 @vtophys(%struct.opal_msg* @opal_handle_messages.msg)
  %5 = call i64 @opal_call(i32 %3, i32 %4, i32 4)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @OPAL_SUCCESS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %35

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.opal_msg, %struct.opal_msg* @opal_handle_messages.msg, i32 0, i32 0), align 4
  %12 = call i32 @be32toh(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %32 [
    i32 133, label %14
    i32 131, label %17
    i32 128, label %20
    i32 130, label %23
    i32 132, label %26
    i32 129, label %29
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @OPAL_ASYNC_COMP, align 4
  %16 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %15, %struct.opal_msg* @opal_handle_messages.msg)
  br label %35

17:                                               ; preds = %10
  %18 = load i32, i32* @OPAL_EPOW, align 4
  %19 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %18, %struct.opal_msg* @opal_handle_messages.msg)
  br label %35

20:                                               ; preds = %10
  %21 = load i32, i32* @OPAL_SHUTDOWN, align 4
  %22 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %21, %struct.opal_msg* @opal_handle_messages.msg)
  br label %35

23:                                               ; preds = %10
  %24 = load i32, i32* @OPAL_HMI_EVT, align 4
  %25 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %24, %struct.opal_msg* @opal_handle_messages.msg)
  br label %35

26:                                               ; preds = %10
  %27 = load i32, i32* @OPAL_DPO, align 4
  %28 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %27, %struct.opal_msg* @opal_handle_messages.msg)
  br label %35

29:                                               ; preds = %10
  %30 = load i32, i32* @OPAL_OCC, align 4
  %31 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %30, %struct.opal_msg* @opal_handle_messages.msg)
  br label %35

32:                                               ; preds = %10
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %9, %32, %29, %26, %23, %20, %17, %14
  ret void
}

declare dso_local i64 @opal_call(i32, i32, i32) #1

declare dso_local i32 @vtophys(%struct.opal_msg*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32, %struct.opal_msg*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

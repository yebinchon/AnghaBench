; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { i32 }
%struct.vmbus_xact_ctx = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"invalid request size %zu\00", align 1
@VMBUS_XACT_CTXF_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmbus_xact* @vmbus_xact_get(%struct.vmbus_xact_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.vmbus_xact*, align 8
  %4 = alloca %struct.vmbus_xact_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmbus_xact*, align 8
  store %struct.vmbus_xact_ctx* %0, %struct.vmbus_xact_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ugt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %17 = load i32, i32* @VMBUS_XACT_CTXF_DESTROY, align 4
  %18 = call %struct.vmbus_xact* @vmbus_xact_get1(%struct.vmbus_xact_ctx* %16, i32 %17)
  store %struct.vmbus_xact* %18, %struct.vmbus_xact** %6, align 8
  %19 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %20 = icmp eq %struct.vmbus_xact* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %3, align 8
  br label %29

22:                                               ; preds = %15
  %23 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %24 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @memset(i32 %25, i32 0, i64 %26)
  %28 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  store %struct.vmbus_xact* %28, %struct.vmbus_xact** %3, align 8
  br label %29

29:                                               ; preds = %22, %21
  %30 = load %struct.vmbus_xact*, %struct.vmbus_xact** %3, align 8
  ret %struct.vmbus_xact* %30
}

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local %struct.vmbus_xact* @vmbus_xact_get1(%struct.vmbus_xact_ctx*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

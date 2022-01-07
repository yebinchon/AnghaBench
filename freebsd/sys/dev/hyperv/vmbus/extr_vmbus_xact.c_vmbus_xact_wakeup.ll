; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32, i32*, i32 }

@VMBUS_XACT_CTXF_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no active xact pending\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"vmbus: drop xact response\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_xact_wakeup(%struct.vmbus_xact* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.vmbus_xact*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmbus_xact_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.vmbus_xact* %0, %struct.vmbus_xact** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %10 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %9, i32 0, i32 0
  %11 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  store %struct.vmbus_xact_ctx* %11, %struct.vmbus_xact_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @vmbus_xact_save_resp(%struct.vmbus_xact* %20, i8* %21, i64 %22)
  store i32 1, i32* %8, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VMBUS_XACT_CTXF_DESTROY, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %33, i32 0, i32 2
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %39, i32 0, i32 1
  %41 = call i32 @wakeup(i32** %40)
  br label %42

42:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @vmbus_xact_save_resp(%struct.vmbus_xact*, i8*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

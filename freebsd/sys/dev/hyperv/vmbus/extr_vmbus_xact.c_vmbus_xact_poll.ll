; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { i32*, %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32, i32, %struct.vmbus_xact* }

@.str = private unnamed_addr constant [14 x i8] c"xact mismatch\00", align 1
@VMBUS_XACT_CTXF_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmbus_xact_poll(%struct.vmbus_xact* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmbus_xact*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.vmbus_xact_ctx*, align 8
  %7 = alloca i8*, align 8
  store %struct.vmbus_xact* %0, %struct.vmbus_xact** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %9 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %8, i32 0, i32 1
  %10 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %9, align 8
  store %struct.vmbus_xact_ctx* %10, %struct.vmbus_xact_ctx** %6, align 8
  %11 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %11, i32 0, i32 1
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %14, i32 0, i32 2
  %16 = load %struct.vmbus_xact*, %struct.vmbus_xact** %15, align 8
  %17 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %18 = icmp eq %struct.vmbus_xact* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %22 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VMBUS_XACT_CTXF_DESTROY, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %33, i32 0, i32 1
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load i64*, i64** %5, align 8
  store i64 0, i64* %36, align 8
  store i8* null, i8** %3, align 8
  br label %45

37:                                               ; preds = %25, %2
  %38 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = call i8* @vmbus_xact_return(%struct.vmbus_xact* %38, i64* %39)
  store i8* %40, i8** %7, align 8
  %41 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %41, i32 0, i32 1
  %43 = call i32 @mtx_unlock(i32* %42)
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i8* @vmbus_xact_return(%struct.vmbus_xact*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

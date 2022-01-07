; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_wait1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_wait1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { i32*, %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32, i32, %struct.vmbus_xact* }

@.str = private unnamed_addr constant [14 x i8] c"xact mismatch\00", align 1
@VMBUS_XACT_CTXF_DESTROY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"wxact\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vmbus_xact*, i64*, i32)* @vmbus_xact_wait1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vmbus_xact_wait1(%struct.vmbus_xact* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.vmbus_xact*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmbus_xact_ctx*, align 8
  %8 = alloca i8*, align 8
  store %struct.vmbus_xact* %0, %struct.vmbus_xact** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %10 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %9, i32 0, i32 1
  %11 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  store %struct.vmbus_xact_ctx* %11, %struct.vmbus_xact_ctx** %7, align 8
  %12 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %12, i32 0, i32 1
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %15, i32 0, i32 2
  %17 = load %struct.vmbus_xact*, %struct.vmbus_xact** %16, align 8
  %18 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %19 = icmp eq %struct.vmbus_xact* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %53, %3
  %23 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %24 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VMBUS_XACT_CTXF_DESTROY, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi i1 [ false, %22 ], [ %33, %27 ]
  br i1 %35, label %36, label %54

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %40, i32 0, i32 2
  %42 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %42, i32 0, i32 1
  %44 = call i32 @mtx_sleep(%struct.vmbus_xact** %41, i32* %43, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %53

45:                                               ; preds = %36
  %46 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %46, i32 0, i32 1
  %48 = call i32 @mtx_unlock(i32* %47)
  %49 = call i32 @DELAY(i32 1000)
  %50 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %50, i32 0, i32 1
  %52 = call i32 @mtx_lock(i32* %51)
  br label %53

53:                                               ; preds = %45, %39
  br label %22

54:                                               ; preds = %34
  %55 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = call i8* @vmbus_xact_return(%struct.vmbus_xact* %55, i64* %56)
  store i8* %57, i8** %8, align 8
  %58 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %58, i32 0, i32 1
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = load i8*, i8** %8, align 8
  ret i8* %61
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_sleep(%struct.vmbus_xact**, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i8* @vmbus_xact_return(%struct.vmbus_xact*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_save_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_save_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { i64, i32, i32, %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i64, %struct.vmbus_xact*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"vmbus: xact response truncated %zu -> %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"xact mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_xact*, i8*, i64)* @vmbus_xact_save_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_xact_save_resp(%struct.vmbus_xact* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.vmbus_xact*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmbus_xact_ctx*, align 8
  %8 = alloca i64, align 8
  store %struct.vmbus_xact* %0, %struct.vmbus_xact** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %10 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %9, i32 0, i32 3
  %11 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  store %struct.vmbus_xact_ctx* %11, %struct.vmbus_xact_ctx** %7, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @mtx_assert(i32* %14, i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26)
  %28 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %32, i32 0, i32 1
  %34 = load %struct.vmbus_xact*, %struct.vmbus_xact** %33, align 8
  %35 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %36 = icmp eq %struct.vmbus_xact* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %40 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @memcpy(i32 %41, i8* %42, i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %47 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %49 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %52 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

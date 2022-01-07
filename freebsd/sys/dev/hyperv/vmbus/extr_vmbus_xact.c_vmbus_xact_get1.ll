; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_get1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_get1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { i32* }
%struct.vmbus_xact_ctx = type { i32, i32, %struct.vmbus_xact* }

@.str = private unnamed_addr constant [6 x i8] c"gxact\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"no free xact\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"xact has pending response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmbus_xact* (%struct.vmbus_xact_ctx*, i32)* @vmbus_xact_get1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmbus_xact* @vmbus_xact_get1(%struct.vmbus_xact_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmbus_xact_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_xact*, align 8
  store %struct.vmbus_xact_ctx* %0, %struct.vmbus_xact_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  br label %9

9:                                                ; preds = %23, %2
  %10 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %17, i32 0, i32 2
  %19 = load %struct.vmbus_xact*, %struct.vmbus_xact** %18, align 8
  %20 = icmp eq %struct.vmbus_xact* %19, null
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i1 [ false, %9 ], [ %20, %16 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %24, i32 0, i32 2
  %26 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %26, i32 0, i32 1
  %28 = call i32 @mtx_sleep(%struct.vmbus_xact** %25, i32* %27, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %9

29:                                               ; preds = %21
  %30 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %5, align 8
  br label %53

37:                                               ; preds = %29
  %38 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %38, i32 0, i32 2
  %40 = load %struct.vmbus_xact*, %struct.vmbus_xact** %39, align 8
  store %struct.vmbus_xact* %40, %struct.vmbus_xact** %5, align 8
  %41 = load %struct.vmbus_xact*, %struct.vmbus_xact** %5, align 8
  %42 = icmp ne %struct.vmbus_xact* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.vmbus_xact*, %struct.vmbus_xact** %5, align 8
  %46 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %51, i32 0, i32 2
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %52, align 8
  br label %53

53:                                               ; preds = %37, %36
  %54 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %54, i32 0, i32 1
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load %struct.vmbus_xact*, %struct.vmbus_xact** %5, align 8
  ret %struct.vmbus_xact* %57
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_sleep(%struct.vmbus_xact**, i32*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

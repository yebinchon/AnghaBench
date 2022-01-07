; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_ctx_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_ctx_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact_ctx = type { i32, i32*, i32, i32, i32 }

@VMBUS_XACT_CTXF_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"can't get xact\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_xact_ctx_orphan(%struct.vmbus_xact_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_xact_ctx*, align 8
  store %struct.vmbus_xact_ctx* %0, %struct.vmbus_xact_ctx** %3, align 8
  %4 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %4, i32 0, i32 4
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VMBUS_XACT_CTXF_DESTROY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %14, i32 0, i32 4
  %16 = call i32 @mtx_unlock(i32* %15)
  store i32 0, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* @VMBUS_XACT_CTXF_DESTROY, align 4
  %19 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %23, i32 0, i32 4
  %25 = call i32 @mtx_unlock(i32* %24)
  %26 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %26, i32 0, i32 3
  %28 = call i32 @wakeup(i32* %27)
  %29 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %29, i32 0, i32 2
  %31 = call i32 @wakeup(i32* %30)
  %32 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %33 = call i32* @vmbus_xact_get1(%struct.vmbus_xact_ctx* %32, i32 0)
  %34 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %17
  %41 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %17
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32* @vmbus_xact_get1(%struct.vmbus_xact_ctx*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

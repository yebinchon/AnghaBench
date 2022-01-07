; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { i32*, %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32, %struct.vmbus_xact* }

@.str = private unnamed_addr constant [26 x i8] c"xact has pending response\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"pending active xact\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_xact_activate(%struct.vmbus_xact* %0) #0 {
  %2 = alloca %struct.vmbus_xact*, align 8
  %3 = alloca %struct.vmbus_xact_ctx*, align 8
  store %struct.vmbus_xact* %0, %struct.vmbus_xact** %2, align 8
  %4 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %5 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %4, i32 0, i32 1
  %6 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %5, align 8
  store %struct.vmbus_xact_ctx* %6, %struct.vmbus_xact_ctx** %3, align 8
  %7 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %8 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %16, i32 0, i32 1
  %18 = load %struct.vmbus_xact*, %struct.vmbus_xact** %17, align 8
  %19 = icmp eq %struct.vmbus_xact* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %23 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %23, i32 0, i32 1
  store %struct.vmbus_xact* %22, %struct.vmbus_xact** %24, align 8
  %25 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %25, i32 0, i32 0
  %27 = call i32 @mtx_unlock(i32* %26)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

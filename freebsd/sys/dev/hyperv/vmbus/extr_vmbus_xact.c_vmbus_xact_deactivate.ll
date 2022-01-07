; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32, %struct.vmbus_xact* }

@.str = private unnamed_addr constant [14 x i8] c"xact mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_xact_deactivate(%struct.vmbus_xact* %0) #0 {
  %2 = alloca %struct.vmbus_xact*, align 8
  %3 = alloca %struct.vmbus_xact_ctx*, align 8
  store %struct.vmbus_xact* %0, %struct.vmbus_xact** %2, align 8
  %4 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %5 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %4, i32 0, i32 0
  %6 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %5, align 8
  store %struct.vmbus_xact_ctx* %6, %struct.vmbus_xact_ctx** %3, align 8
  %7 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %10, i32 0, i32 1
  %12 = load %struct.vmbus_xact*, %struct.vmbus_xact** %11, align 8
  %13 = load %struct.vmbus_xact*, %struct.vmbus_xact** %2, align 8
  %14 = icmp eq %struct.vmbus_xact* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %17, i32 0, i32 1
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %18, align 8
  %19 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %19, i32 0, i32 0
  %21 = call i32 @mtx_unlock(i32* %20)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

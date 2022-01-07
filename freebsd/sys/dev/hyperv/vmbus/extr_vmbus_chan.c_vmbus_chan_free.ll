; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"still owns sub-channels\00", align 1
@VMBUS_CHAN_ST_OPENED = common dso_local global i32 0, align 4
@VMBUS_CHAN_ST_ONPRIL = common dso_local global i32 0, align 4
@VMBUS_CHAN_ST_ONSUBL = common dso_local global i32 0, align 4
@VMBUS_CHAN_ST_ONLIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"free busy channel\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"still has orphan xact installed\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"chan%u: invalid refcnt %d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"chan%u: polling is activated\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @vmbus_chan_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_chan_free(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %3 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %4 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %3, i32 0, i32 12
  %5 = call i64 @TAILQ_EMPTY(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VMBUS_CHAN_ST_OPENED, align 4
  %20 = load i32, i32* @VMBUS_CHAN_ST_ONPRIL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @VMBUS_CHAN_ST_ONSUBL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VMBUS_CHAN_ST_ONLIST, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %18, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %31 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %30, i32 0, i32 11
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %42 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %45 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @KASSERT(i32 %40, i8* %47)
  %49 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %50 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @KASSERT(i32 %53, i8* %58)
  %60 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %61 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %60, i32 0, i32 9
  %62 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %63 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @hyperv_dmamem_free(i32* %61, i32 %64)
  %66 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %67 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %66, i32 0, i32 7
  %68 = call i32 @mtx_destroy(i32* %67)
  %69 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %70 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %69, i32 0, i32 6
  %71 = call i32 @sx_destroy(i32* %70)
  %72 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %73 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %72, i32 0, i32 5
  %74 = call i32 @vmbus_rxbr_deinit(i32* %73)
  %75 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %76 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %75, i32 0, i32 4
  %77 = call i32 @vmbus_txbr_deinit(i32* %76)
  %78 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %79 = load i32, i32* @M_DEVBUF, align 4
  %80 = call i32 @free(%struct.vmbus_channel* %78, i32 %79)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @hyperv_dmamem_free(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @vmbus_rxbr_deinit(i32*) #1

declare dso_local i32 @vmbus_txbr_deinit(i32*) #1

declare dso_local i32 @free(%struct.vmbus_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

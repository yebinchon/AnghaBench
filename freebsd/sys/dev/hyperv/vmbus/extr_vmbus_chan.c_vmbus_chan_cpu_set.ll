; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_cpu_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_cpu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@mp_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"invalid cpu %d\00", align 1
@VMBUS_VERSION_WS2008 = common dso_local global i64 0, align 8
@VMBUS_VERSION_WIN7 = common dso_local global i64 0, align 8
@vcpuid = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"chan%u assigned to cpu%u [vcpu%u]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_chan_cpu_set(%struct.vmbus_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @mp_ncpus, align 4
  %10 = icmp slt i32 %8, %9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %13, i8* %16)
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VMBUS_VERSION_WS2008, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %11
  %26 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %27 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VMBUS_VERSION_WIN7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %11
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %39 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* @vcpuid, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @VMBUS_PCPU_GET(%struct.TYPE_2__* %40, i32 %41, i32 %42)
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %45 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  %49 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %50 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %51 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %54 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %57 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vmbus_chan_printf(%struct.vmbus_channel* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %48, %34
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VMBUS_PCPU_GET(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

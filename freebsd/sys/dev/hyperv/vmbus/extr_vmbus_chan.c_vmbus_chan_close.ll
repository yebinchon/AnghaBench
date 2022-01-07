; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_chan_close(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_channel**, align 8
  %5 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %7 = call i32 @VMBUS_CHAN_ISPRIMARY(%struct.vmbus_channel* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %12 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel* %17, i32 %18)
  store %struct.vmbus_channel** %19, %struct.vmbus_channel*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %37, %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %25, i64 %27
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %28, align 8
  %30 = call i32 @vmbus_chan_close_internal(%struct.vmbus_channel* %29)
  %31 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vmbus_channel*, %struct.vmbus_channel** %31, i64 %33
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %34, align 8
  %36 = call i32 @vmbus_chan_detach(%struct.vmbus_channel* %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.vmbus_channel**, %struct.vmbus_channel*** %4, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @vmbus_subchan_rel(%struct.vmbus_channel** %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %10
  %45 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %46 = call i32 @vmbus_chan_close_internal(%struct.vmbus_channel* %45)
  br label %47

47:                                               ; preds = %44, %9
  ret void
}

declare dso_local i32 @VMBUS_CHAN_ISPRIMARY(%struct.vmbus_channel*) #1

declare dso_local %struct.vmbus_channel** @vmbus_subchan_get(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @vmbus_chan_close_internal(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_detach(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_subchan_rel(%struct.vmbus_channel**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

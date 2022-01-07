; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xferwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xferwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtx }
%struct.mtx = type { i32 }

@FWXF_WAKE = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fw_xferwait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_xferwait(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  %3 = alloca %struct.mtx*, align 8
  %4 = alloca i32, align 4
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %5 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %6 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mtx* %8, %struct.mtx** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.mtx*, %struct.mtx** %3, align 8
  %10 = call i32 @mtx_lock(%struct.mtx* %9)
  br label %11

11:                                               ; preds = %18, %1
  %12 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FWXF_WAKE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %20 = load %struct.mtx*, %struct.mtx** %3, align 8
  %21 = load i32, i32* @PWAIT, align 4
  %22 = load i32, i32* @PCATCH, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @msleep(%struct.fw_xfer* %19, %struct.mtx* %20, i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %24, i32* %4, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.mtx*, %struct.mtx** %3, align 8
  %27 = call i32 @mtx_unlock(%struct.mtx* %26)
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @msleep(%struct.fw_xfer*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

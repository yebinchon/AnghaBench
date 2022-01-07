; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_xfer_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_xfer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i64 }
%struct.sbp_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_xfer*)* @sbp_xfer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_xfer_free(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  %3 = alloca %struct.sbp_dev*, align 8
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %4 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.sbp_dev*
  store %struct.sbp_dev* %7, %struct.sbp_dev** %3, align 8
  %8 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %9 = call i32 @fw_xfer_unload(%struct.fw_xfer* %8)
  %10 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SBP_LOCK_ASSERT(i32 %14)
  %16 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %17 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %21 = load i32, i32* @link, align 4
  %22 = call i32 @STAILQ_INSERT_TAIL(i32* %19, %struct.fw_xfer* %20, i32 %21)
  ret void
}

declare dso_local i32 @fw_xfer_unload(%struct.fw_xfer*) #1

declare dso_local i32 @SBP_LOCK_ASSERT(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

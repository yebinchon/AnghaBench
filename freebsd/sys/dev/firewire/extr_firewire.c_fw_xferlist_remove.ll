; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xferlist_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xferlist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xferlist = type { i32 }
%struct.fw_xfer = type { i32 }

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_xferlist_remove(%struct.fw_xferlist* %0) #0 {
  %2 = alloca %struct.fw_xferlist*, align 8
  %3 = alloca %struct.fw_xfer*, align 8
  %4 = alloca %struct.fw_xfer*, align 8
  store %struct.fw_xferlist* %0, %struct.fw_xferlist** %2, align 8
  %5 = load %struct.fw_xferlist*, %struct.fw_xferlist** %2, align 8
  %6 = call %struct.fw_xfer* @STAILQ_FIRST(%struct.fw_xferlist* %5)
  store %struct.fw_xfer* %6, %struct.fw_xfer** %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %9 = icmp ne %struct.fw_xfer* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %12 = load i32, i32* @link, align 4
  %13 = call %struct.fw_xfer* @STAILQ_NEXT(%struct.fw_xfer* %11, i32 %12)
  store %struct.fw_xfer* %13, %struct.fw_xfer** %4, align 8
  %14 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %15 = call i32 @fw_xfer_free_buf(%struct.fw_xfer* %14)
  br label %16

16:                                               ; preds = %10
  %17 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  store %struct.fw_xfer* %17, %struct.fw_xfer** %3, align 8
  br label %7

18:                                               ; preds = %7
  %19 = load %struct.fw_xferlist*, %struct.fw_xferlist** %2, align 8
  %20 = call i32 @STAILQ_INIT(%struct.fw_xferlist* %19)
  ret void
}

declare dso_local %struct.fw_xfer* @STAILQ_FIRST(%struct.fw_xferlist*) #1

declare dso_local %struct.fw_xfer* @STAILQ_NEXT(%struct.fw_xfer*, i32) #1

declare dso_local i32 @fw_xfer_free_buf(%struct.fw_xfer*) #1

declare dso_local i32 @STAILQ_INIT(%struct.fw_xferlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

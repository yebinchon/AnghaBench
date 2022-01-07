; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_change_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_domain.c_scif_cb_domain_change_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@DEVICE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_domain_change_notification(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ISCI_CONTROLLER*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @sci_object_get_association(i32 %6)
  %8 = inttoptr i64 %7 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %8, %struct.ISCI_CONTROLLER** %5, align 8
  %9 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %10 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TRUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @scif_domain_get_suggested_discover_timeout(i32 %16)
  %18 = load i32, i32* @DEVICE_TIMEOUT, align 4
  %19 = call i32 @scif_domain_discover(i32 %15, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %2
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @scif_domain_discover(i32, i32, i32) #1

declare dso_local i32 @scif_domain_get_suggested_discover_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_qp_link_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_qp_link_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32 (i32, i32)*, i32 }

@NTB_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*)* @ntb_qp_link_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_qp_link_cleanup(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %3 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %4 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %3, i32 0, i32 2
  %5 = call i32 @callout_drain(i32* %4)
  %6 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %7 = call i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp* %6)
  %8 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %9 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %8, i32 0, i32 1
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = icmp ne i32 (i32, i32)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %13, i32 0, i32 1
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NTB_LINK_DOWN, align 4
  %20 = call i32 %15(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ntb_qp_link_down_reset(%struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

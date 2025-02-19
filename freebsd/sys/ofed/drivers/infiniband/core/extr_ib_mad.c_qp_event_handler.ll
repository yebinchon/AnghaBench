; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_qp_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_qp_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32 }
%struct.ib_mad_qp_info = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Fatal error (%d) on MAD QP (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @qp_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qp_event_handler(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_mad_qp_info*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ib_mad_qp_info*
  store %struct.ib_mad_qp_info* %7, %struct.ib_mad_qp_info** %5, align 8
  %8 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %9 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %15 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %18 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

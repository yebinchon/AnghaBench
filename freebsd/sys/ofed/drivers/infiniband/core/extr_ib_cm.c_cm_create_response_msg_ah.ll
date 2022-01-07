; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_create_response_msg_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cm.c_cm_create_response_msg_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_port = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mad_send_buf = type { %struct.ib_ah* }
%struct.ib_ah = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_port*, %struct.ib_mad_recv_wc*, %struct.ib_mad_send_buf*)* @cm_create_response_msg_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_create_response_msg_ah(%struct.cm_port* %0, %struct.ib_mad_recv_wc* %1, %struct.ib_mad_send_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_port*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca %struct.ib_ah*, align 8
  store %struct.cm_port* %0, %struct.cm_port** %5, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %6, align 8
  store %struct.ib_mad_send_buf* %2, %struct.ib_mad_send_buf** %7, align 8
  %9 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %10 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %17 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %20 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cm_port*, %struct.cm_port** %5, align 8
  %24 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.ib_ah* @ib_create_ah_from_wc(i32 %15, i32 %18, i32 %22, i32 %25)
  store %struct.ib_ah* %26, %struct.ib_ah** %8, align 8
  %27 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %28 = call i64 @IS_ERR(%struct.ib_ah* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.ib_ah* %31)
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load %struct.ib_ah*, %struct.ib_ah** %8, align 8
  %35 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %36 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %35, i32 0, i32 0
  store %struct.ib_ah* %34, %struct.ib_ah** %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.ib_ah* @ib_create_ah_from_wc(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

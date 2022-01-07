; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_cq_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_cq_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_cq = type { i32*, i32 }
%struct.oce_mbx = type { i32 }
%struct.mbx_destroy_common_cq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@QTYPE_CQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.oce_cq*)* @oce_cq_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_cq_del(i32 %0, %struct.oce_cq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oce_cq*, align 8
  %5 = alloca %struct.oce_mbx, align 4
  %6 = alloca %struct.mbx_destroy_common_cq*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.oce_cq* %1, %struct.oce_cq** %4, align 8
  %7 = load %struct.oce_cq*, %struct.oce_cq** %4, align 8
  %8 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = call i32 @bzero(%struct.oce_mbx* %5, i32 4)
  %13 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %5, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.mbx_destroy_common_cq*
  store %struct.mbx_destroy_common_cq* %14, %struct.mbx_destroy_common_cq** %6, align 8
  %15 = load %struct.oce_cq*, %struct.oce_cq** %4, align 8
  %16 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mbx_destroy_common_cq*, %struct.mbx_destroy_common_cq** %6, align 8
  %19 = getelementptr inbounds %struct.mbx_destroy_common_cq, %struct.mbx_destroy_common_cq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @QTYPE_CQ, align 4
  %24 = call i32 @oce_destroy_q(i32 %22, %struct.oce_mbx* %5, i32 4, i32 %23, i32 0)
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.oce_cq*, %struct.oce_cq** %4, align 8
  %27 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @oce_destroy_ring_buffer(i32 %25, i32* %28)
  %30 = load %struct.oce_cq*, %struct.oce_cq** %4, align 8
  %31 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %11, %2
  %33 = load %struct.oce_cq*, %struct.oce_cq** %4, align 8
  %34 = load i32, i32* @M_DEVBUF, align 4
  %35 = call i32 @free(%struct.oce_cq* %33, i32 %34)
  store %struct.oce_cq* null, %struct.oce_cq** %4, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.oce_mbx*, i32) #1

declare dso_local i32 @oce_destroy_q(i32, %struct.oce_mbx*, i32, i32, i32) #1

declare dso_local i32 @oce_destroy_ring_buffer(i32, i32*) #1

declare dso_local i32 @free(%struct.oce_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

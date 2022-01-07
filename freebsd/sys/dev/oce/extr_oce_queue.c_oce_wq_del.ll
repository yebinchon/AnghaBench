; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_wq = type { i64, i32*, i32, i32 }
%struct.oce_mbx = type { i32 }
%struct.mbx_delete_nic_wq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QCREATED = common dso_local global i64 0, align 8
@QTYPE_WQ = common dso_local global i32 0, align 4
@QDELETED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_wq*)* @oce_wq_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_wq_del(%struct.oce_wq* %0) #0 {
  %2 = alloca %struct.oce_wq*, align 8
  %3 = alloca %struct.oce_mbx, align 4
  %4 = alloca %struct.mbx_delete_nic_wq*, align 8
  %5 = alloca i32, align 4
  store %struct.oce_wq* %0, %struct.oce_wq** %2, align 8
  %6 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %7 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %10 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QCREATED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = call i32 @bzero(%struct.oce_mbx* %3, i32 4)
  %16 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %3, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.mbx_delete_nic_wq*
  store %struct.mbx_delete_nic_wq* %17, %struct.mbx_delete_nic_wq** %4, align 8
  %18 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %19 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mbx_delete_nic_wq*, %struct.mbx_delete_nic_wq** %4, align 8
  %22 = getelementptr inbounds %struct.mbx_delete_nic_wq, %struct.mbx_delete_nic_wq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @QTYPE_WQ, align 4
  %27 = call i32 @oce_destroy_q(i32 %25, %struct.oce_mbx* %3, i32 4, i32 %26, i32 0)
  %28 = load i64, i64* @QDELETED, align 8
  %29 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %30 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %14, %1
  %32 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %33 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %39 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @oce_cq_del(i32 %37, i32* %40)
  %42 = load %struct.oce_wq*, %struct.oce_wq** %2, align 8
  %43 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @bzero(%struct.oce_mbx*, i32) #1

declare dso_local i32 @oce_destroy_q(i32, %struct.oce_mbx*, i32, i32, i32) #1

declare dso_local i32 @oce_cq_del(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

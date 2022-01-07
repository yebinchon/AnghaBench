; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_mq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_mq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_mq = type { i64, i32*, i32, i32*, i32 }
%struct.oce_mbx = type { i32 }
%struct.mbx_destroy_common_mq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QCREATED = common dso_local global i64 0, align 8
@QTYPE_MQ = common dso_local global i32 0, align 4
@QDELETED = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_mq*)* @oce_mq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_mq_free(%struct.oce_mq* %0) #0 {
  %2 = alloca %struct.oce_mq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.oce_mbx, align 4
  %5 = alloca %struct.mbx_destroy_common_mq*, align 8
  store %struct.oce_mq* %0, %struct.oce_mq** %2, align 8
  %6 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %7 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %10 = icmp ne %struct.oce_mq* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %14 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %20 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @oce_destroy_ring_buffer(i32 %18, i32* %21)
  %23 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %24 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %26 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QCREATED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %17
  %31 = call i32 @bzero(%struct.oce_mbx* %4, i32 4)
  %32 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %4, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.mbx_destroy_common_mq*
  store %struct.mbx_destroy_common_mq* %33, %struct.mbx_destroy_common_mq** %5, align 8
  %34 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %35 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mbx_destroy_common_mq*, %struct.mbx_destroy_common_mq** %5, align 8
  %38 = getelementptr inbounds %struct.mbx_destroy_common_mq, %struct.mbx_destroy_common_mq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @QTYPE_MQ, align 4
  %43 = call i32 @oce_destroy_q(i32 %41, %struct.oce_mbx* %4, i32 4, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %30, %17
  %45 = load i64, i64* @QDELETED, align 8
  %46 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %47 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %12
  %49 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %50 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %56 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @oce_cq_del(i32 %54, i32* %57)
  %59 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %60 = getelementptr inbounds %struct.oce_mq, %struct.oce_mq* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.oce_mq*, %struct.oce_mq** %2, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = call i32 @free(%struct.oce_mq* %62, i32 %63)
  store %struct.oce_mq* null, %struct.oce_mq** %2, align 8
  br label %65

65:                                               ; preds = %61, %11
  ret void
}

declare dso_local i32 @oce_destroy_ring_buffer(i32, i32*) #1

declare dso_local i32 @bzero(%struct.oce_mbx*, i32) #1

declare dso_local i32 @oce_destroy_q(i32, %struct.oce_mbx*, i32, i32, i32) #1

declare dso_local i32 @oce_cq_del(i32, i32*) #1

declare dso_local i32 @free(%struct.oce_mq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_complete_tx_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_complete_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_6__*, %struct.qlnxr_qp*, %struct.qlnxr_cq* }
%struct.TYPE_6__ = type { i32 }
%struct.qlnxr_qp = type { i32, i32 }
%struct.qlnxr_cq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32)* }
%struct.ecore_roce_ll2_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_ll2_complete_tx_packet(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qlnxr_dev*, align 8
  %14 = alloca %struct.ecore_roce_ll2_packet*, align 8
  %15 = alloca %struct.qlnxr_cq*, align 8
  %16 = alloca %struct.qlnxr_qp*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.qlnxr_dev*
  store %struct.qlnxr_dev* %19, %struct.qlnxr_dev** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.ecore_roce_ll2_packet*
  store %struct.ecore_roce_ll2_packet* %21, %struct.ecore_roce_ll2_packet** %14, align 8
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %23 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %22, i32 0, i32 2
  %24 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %23, align 8
  store %struct.qlnxr_cq* %24, %struct.qlnxr_cq** %15, align 8
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 1
  %27 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %26, align 8
  store %struct.qlnxr_qp* %27, %struct.qlnxr_qp** %16, align 8
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %29 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @QL_DPRINT12(%struct.TYPE_6__* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %14, align 8
  %37 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %14, align 8
  %41 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %14, align 8
  %45 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @qlnx_dma_free_coherent(i32* %35, i32 %39, i32 %43, i32 %47)
  %49 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %14, align 8
  %50 = call i32 @kfree(%struct.ecore_roce_ll2_packet* %49)
  %51 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %16, align 8
  %52 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %51, i32 0, i32 0
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %16, align 8
  %56 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %55, i32 0, i32 1
  %57 = call i32 @qlnxr_inc_sw_gsi_cons(i32* %56)
  %58 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %16, align 8
  %59 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %58, i32 0, i32 0
  %60 = load i64, i64* %17, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %15, align 8
  %63 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %64, align 8
  %66 = icmp ne i32 (%struct.TYPE_5__*, i32)* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %6
  %68 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %15, align 8
  %69 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %70, align 8
  %72 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %15, align 8
  %73 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %72, i32 0, i32 0
  %74 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %15, align 8
  %75 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %71(%struct.TYPE_5__* %73, i32 %77)
  br label %79

79:                                               ; preds = %67, %6
  %80 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  %81 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @QL_DPRINT12(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @qlnx_dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ecore_roce_ll2_packet*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qlnxr_inc_sw_gsi_cons(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

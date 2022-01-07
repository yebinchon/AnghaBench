; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_unreg_rdma_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_unreg_rdma_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_iser_pdu = type { %struct.TYPE_2__*, %struct.iser_mem_reg* }
%struct.TYPE_2__ = type { i32 }
%struct.iser_mem_reg = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_unreg_rdma_mem(%struct.icl_iser_pdu* %0, i32 %1) #0 {
  %3 = alloca %struct.icl_iser_pdu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_mem_reg*, align 8
  store %struct.icl_iser_pdu* %0, %struct.icl_iser_pdu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %3, align 8
  %7 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %6, i32 0, i32 1
  %8 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %8, i64 %10
  store %struct.iser_mem_reg* %11, %struct.iser_mem_reg** %5, align 8
  %12 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %13 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %3, align 8
  %19 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %23 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @iser_reg_desc_put(i32* %21, i32* %24)
  %26 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %27 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @iser_reg_desc_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_dma_map_task_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_dma_map_task_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_iser_pdu = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.iser_data_buf = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"dma_map_sg failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_dma_map_task_data(%struct.icl_iser_pdu* %0, %struct.iser_data_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icl_iser_pdu*, align 8
  %7 = alloca %struct.iser_data_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_device*, align 8
  store %struct.icl_iser_pdu* %0, %struct.icl_iser_pdu** %6, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %12 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 1, i32* %16, align 4
  %17 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %18 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.ib_device*, %struct.ib_device** %23, align 8
  store %struct.ib_device* %24, %struct.ib_device** %10, align 8
  %25 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %26 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %27 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %30 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ib_dma_map_sg(%struct.ib_device* %25, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %35 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %37 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = call i32 @ISER_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @ib_dma_map_sg(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @ISER_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

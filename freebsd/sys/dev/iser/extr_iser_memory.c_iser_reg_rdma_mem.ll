; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_reg_rdma_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_reg_rdma_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_iser_pdu = type { %struct.iser_mem_reg*, %struct.iser_data_buf*, %struct.TYPE_2__* }
%struct.iser_mem_reg = type { %struct.fast_reg_descriptor* }
%struct.fast_reg_descriptor = type { i32 }
%struct.iser_data_buf = type { i32 }
%struct.TYPE_2__ = type { %struct.ib_conn }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { %struct.ib_device* }
%struct.ib_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"bounce buffer is not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_reg_rdma_mem(%struct.icl_iser_pdu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_iser_pdu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_conn*, align 8
  %7 = alloca %struct.iser_device*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %struct.iser_data_buf*, align 8
  %10 = alloca %struct.iser_mem_reg*, align 8
  %11 = alloca %struct.fast_reg_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.icl_iser_pdu* %0, %struct.icl_iser_pdu** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %4, align 8
  %15 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ib_conn* %17, %struct.ib_conn** %6, align 8
  %18 = load %struct.ib_conn*, %struct.ib_conn** %6, align 8
  %19 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %18, i32 0, i32 0
  %20 = load %struct.iser_device*, %struct.iser_device** %19, align 8
  store %struct.iser_device* %20, %struct.iser_device** %7, align 8
  %21 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  %22 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %21, i32 0, i32 0
  %23 = load %struct.ib_device*, %struct.ib_device** %22, align 8
  store %struct.ib_device* %23, %struct.ib_device** %8, align 8
  %24 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %4, align 8
  %25 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %24, i32 0, i32 1
  %26 = load %struct.iser_data_buf*, %struct.iser_data_buf** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %26, i64 %28
  store %struct.iser_data_buf* %29, %struct.iser_data_buf** %9, align 8
  %30 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %4, align 8
  %31 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %30, i32 0, i32 0
  %32 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %32, i64 %34
  store %struct.iser_mem_reg* %35, %struct.iser_mem_reg** %10, align 8
  store %struct.fast_reg_descriptor* null, %struct.fast_reg_descriptor** %11, align 8
  %36 = load %struct.iser_data_buf*, %struct.iser_data_buf** %9, align 8
  %37 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %38 = call i32 @iser_data_buf_aligned_len(%struct.iser_data_buf* %36, %struct.ib_device* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.iser_data_buf*, %struct.iser_data_buf** %9, align 8
  %41 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = call i32 @ISER_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %83

46:                                               ; preds = %2
  %47 = load %struct.iser_data_buf*, %struct.iser_data_buf** %9, align 8
  %48 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.ib_conn*, %struct.ib_conn** %6, align 8
  %53 = call %struct.fast_reg_descriptor* @iser_reg_desc_get(%struct.ib_conn* %52)
  store %struct.fast_reg_descriptor* %53, %struct.fast_reg_descriptor** %11, align 8
  %54 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %11, align 8
  %55 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %56 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %55, i32 0, i32 0
  store %struct.fast_reg_descriptor* %54, %struct.fast_reg_descriptor** %56, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %4, align 8
  %59 = load %struct.iser_data_buf*, %struct.iser_data_buf** %9, align 8
  %60 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %11, align 8
  %61 = icmp ne %struct.fast_reg_descriptor* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %11, align 8
  %64 = getelementptr inbounds %struct.fast_reg_descriptor, %struct.fast_reg_descriptor* %63, i32 0, i32 0
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32* [ %64, %62 ], [ null, %65 ]
  %68 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %10, align 8
  %69 = call i32 @iser_fast_reg_mr(%struct.icl_iser_pdu* %58, %struct.iser_data_buf* %59, i32* %67, %struct.iser_mem_reg* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %83

74:                                               ; preds = %72
  %75 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %11, align 8
  %76 = icmp ne %struct.fast_reg_descriptor* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.ib_conn*, %struct.ib_conn** %6, align 8
  %79 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %11, align 8
  %80 = call i32 @iser_reg_desc_put(%struct.ib_conn* %78, %struct.fast_reg_descriptor* %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %73, %44
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @iser_data_buf_aligned_len(%struct.iser_data_buf*, %struct.ib_device*) #1

declare dso_local i32 @ISER_ERR(i8*) #1

declare dso_local %struct.fast_reg_descriptor* @iser_reg_desc_get(%struct.ib_conn*) #1

declare dso_local i32 @iser_fast_reg_mr(%struct.icl_iser_pdu*, %struct.iser_data_buf*, i32*, %struct.iser_mem_reg*) #1

declare dso_local i32 @iser_reg_desc_put(%struct.ib_conn*, %struct.fast_reg_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

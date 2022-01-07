; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_fast_reg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_fast_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_iser_pdu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_conn }
%struct.ib_conn = type { i32, %struct.iser_device* }
%struct.iser_device = type { i32 }
%struct.iser_data_buf = type { i32, i32, i32 }
%struct.iser_reg_resources = type { i64, %struct.ib_mr* }
%struct.ib_mr = type { i32, i32, i32, i32 }
%struct.iser_mem_reg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ib_reg_wr = type { i32, %struct.ib_send_wr, i32, %struct.ib_mr* }
%struct.ib_send_wr = type { %struct.ib_send_wr*, i64, i32, i32 }

@SIZE_4K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to map sg (%d/%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_WR_REG_MR = common dso_local global i32 0, align 4
@ISER_FASTREG_LI_WRID = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fast registration failed, ret:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_iser_pdu*, %struct.iser_data_buf*, %struct.iser_reg_resources*, %struct.iser_mem_reg*)* @iser_fast_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_fast_reg_mr(%struct.icl_iser_pdu* %0, %struct.iser_data_buf* %1, %struct.iser_reg_resources* %2, %struct.iser_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.icl_iser_pdu*, align 8
  %7 = alloca %struct.iser_data_buf*, align 8
  %8 = alloca %struct.iser_reg_resources*, align 8
  %9 = alloca %struct.iser_mem_reg*, align 8
  %10 = alloca %struct.ib_conn*, align 8
  %11 = alloca %struct.iser_device*, align 8
  %12 = alloca %struct.ib_mr*, align 8
  %13 = alloca %struct.ib_reg_wr, align 8
  %14 = alloca %struct.ib_send_wr, align 8
  %15 = alloca %struct.ib_send_wr*, align 8
  %16 = alloca %struct.ib_send_wr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.icl_iser_pdu* %0, %struct.icl_iser_pdu** %6, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %7, align 8
  store %struct.iser_reg_resources* %2, %struct.iser_reg_resources** %8, align 8
  store %struct.iser_mem_reg* %3, %struct.iser_mem_reg** %9, align 8
  %19 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %20 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.ib_conn* %22, %struct.ib_conn** %10, align 8
  %23 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %24 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %23, i32 0, i32 1
  %25 = load %struct.iser_device*, %struct.iser_device** %24, align 8
  store %struct.iser_device* %25, %struct.iser_device** %11, align 8
  %26 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %27 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %26, i32 0, i32 1
  %28 = load %struct.ib_mr*, %struct.ib_mr** %27, align 8
  store %struct.ib_mr* %28, %struct.ib_mr** %12, align 8
  store %struct.ib_send_wr* null, %struct.ib_send_wr** %16, align 8
  %29 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %30 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %35 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %36 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %37 = call i32 @iser_reg_dma(%struct.iser_device* %34, %struct.iser_data_buf* %35, %struct.iser_mem_reg* %36)
  store i32 %37, i32* %5, align 4
  br label %148

38:                                               ; preds = %4
  %39 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %40 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %45 = call i32 @iser_inv_rkey(%struct.ib_send_wr* %14, %struct.ib_mr* %44)
  store %struct.ib_send_wr* %14, %struct.ib_send_wr** %16, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %48 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %49 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %52 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SIZE_4K, align 4
  %55 = call i32 @ib_map_mr_sg(%struct.ib_mr* %47, i32 %50, i32 %53, i32* null, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %58 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %46
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.iser_data_buf*, %struct.iser_data_buf** %7, align 8
  %67 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @ISER_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %18, align 4
  br label %77

74:                                               ; preds = %64
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %76, %74 ]
  store i32 %78, i32* %5, align 4
  br label %148

79:                                               ; preds = %46
  %80 = call i32 @memset(%struct.ib_reg_wr* %13, i32 0, i32 48)
  %81 = load i32, i32* @IB_WR_REG_MR, align 4
  %82 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ISER_FASTREG_LI_WRID, align 4
  %85 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 1
  %86 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 1
  %88 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %90 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 3
  store %struct.ib_mr* %89, %struct.ib_mr** %90, align 8
  %91 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %92 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %96 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load %struct.ib_send_wr*, %struct.ib_send_wr** %16, align 8
  %102 = icmp ne %struct.ib_send_wr* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %79
  %104 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 1
  store %struct.ib_send_wr* %104, %struct.ib_send_wr** %16, align 8
  br label %109

105:                                              ; preds = %79
  %106 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %13, i32 0, i32 1
  %107 = load %struct.ib_send_wr*, %struct.ib_send_wr** %16, align 8
  %108 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %107, i32 0, i32 0
  store %struct.ib_send_wr* %106, %struct.ib_send_wr** %108, align 8
  br label %109

109:                                              ; preds = %105, %103
  %110 = load %struct.ib_conn*, %struct.ib_conn** %10, align 8
  %111 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ib_send_wr*, %struct.ib_send_wr** %16, align 8
  %114 = call i32 @ib_post_send(i32 %112, %struct.ib_send_wr* %113, %struct.ib_send_wr** %15)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* %17, align 4
  %119 = call i32 (i8*, i32, ...) @ISER_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %5, align 4
  br label %148

121:                                              ; preds = %109
  %122 = load %struct.iser_reg_resources*, %struct.iser_reg_resources** %8, align 8
  %123 = getelementptr inbounds %struct.iser_reg_resources, %struct.iser_reg_resources* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %125 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %128 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %131 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %134 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %136 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %139 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.ib_mr*, %struct.ib_mr** %12, align 8
  %142 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %9, align 8
  %145 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* %17, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %121, %117, %77, %33
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @iser_reg_dma(%struct.iser_device*, %struct.iser_data_buf*, %struct.iser_mem_reg*) #1

declare dso_local i32 @iser_inv_rkey(%struct.ib_send_wr*, %struct.ib_mr*) #1

declare dso_local i32 @ib_map_mr_sg(%struct.ib_mr*, i32, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ISER_ERR(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.ib_reg_wr*, i32, i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

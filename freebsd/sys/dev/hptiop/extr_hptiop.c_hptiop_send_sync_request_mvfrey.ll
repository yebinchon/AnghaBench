; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_send_sync_request_mvfrey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_send_sync_request_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hpt_iop_request_header = type { i32, i32, i32, i32 }

@IOP_REQUEST_FLAG_SYNC_REQUEST = common dso_local global i32 0, align 4
@IOP_REQUEST_FLAG_OUTPUT_CONTEXT = common dso_local global i32 0, align 4
@IOP_REQUEST_FLAG_ADDR_BITS = common dso_local global i32 0, align 4
@IOPMU_QUEUE_ADDR_HOST_BIT = common dso_local global i32 0, align 4
@CL_POINTER_TOGGLE = common dso_local global i32 0, align 4
@inbound_write_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, i8*, i64)* @hptiop_send_sync_request_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_send_sync_request_mvfrey(%struct.hpt_iop_hba* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpt_iop_hba*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpt_iop_request_header*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.hpt_iop_request_header*
  store %struct.hpt_iop_request_header* %13, %struct.hpt_iop_request_header** %11, align 8
  %14 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %15 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %17 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @IOP_REQUEST_FLAG_SYNC_REQUEST, align 4
  %20 = load i32, i32* @IOP_REQUEST_FLAG_OUTPUT_CONTEXT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IOP_REQUEST_FLAG_ADDR_BITS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, -65536
  %27 = or i32 %23, %26
  %28 = load %struct.hpt_iop_request_header*, %struct.hpt_iop_request_header** %11, align 8
  %29 = getelementptr inbounds %struct.hpt_iop_request_header, %struct.hpt_iop_request_header* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %30, 32
  %32 = load i32, i32* @IOPMU_QUEUE_ADDR_HOST_BIT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.hpt_iop_request_header*, %struct.hpt_iop_request_header** %11, align 8
  %35 = getelementptr inbounds %struct.hpt_iop_request_header, %struct.hpt_iop_request_header* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load %struct.hpt_iop_request_header*, %struct.hpt_iop_request_header** %11, align 8
  %39 = getelementptr inbounds %struct.hpt_iop_request_header, %struct.hpt_iop_request_header* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %41 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %47 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 16383
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %55 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %61 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %62 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -16384
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @CL_POINTER_TOGGLE, align 4
  %68 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %69 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = xor i32 %72, %67
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %60, %3
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %77 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %75, i32* %83, align 4
  %84 = load %struct.hpt_iop_request_header*, %struct.hpt_iop_request_header** %11, align 8
  %85 = getelementptr inbounds %struct.hpt_iop_request_header, %struct.hpt_iop_request_header* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 3
  %88 = sdiv i32 %87, 4
  %89 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %90 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %88, i32* %96, align 4
  %97 = load i32, i32* @inbound_write_ptr, align 4
  %98 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %99 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %97, i32 %102)
  %104 = load i32, i32* @inbound_write_ptr, align 4
  %105 = call i32 @BUS_SPACE_RD4_MVFREY2(i32 %104)
  store i64 0, i64* %8, align 8
  br label %106

106:                                              ; preds = %120, %74
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %112 = call i32 @hptiop_intr_mvfrey(%struct.hpt_iop_hba* %111)
  %113 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %114 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %124

118:                                              ; preds = %110
  %119 = call i32 @DELAY(i32 1000)
  br label %120

120:                                              ; preds = %118
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %8, align 8
  br label %106

123:                                              ; preds = %106
  store i32 -1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %117
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @BUS_SPACE_WRT4_MVFREY2(i32, i32) #1

declare dso_local i32 @BUS_SPACE_RD4_MVFREY2(i32) #1

declare dso_local i32 @hptiop_intr_mvfrey(%struct.hpt_iop_hba*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_missing_comp_in_tx_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_missing_comp_in_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i64, i32 }
%struct.ena_ring = type { i32, %struct.TYPE_2__, i32, i32, %struct.ena_tx_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.ena_tx_buffer = type { i32, i32 }
%struct.bintime = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Potential MSIX issue on Tx side Queue = %d. Reset the device\0A\00", align 1
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_REGS_RESET_MISS_INTERRUPT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENA_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Found a Tx that wasn't completed on time, qid %d, index %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"The number of lost tx completion is above the threshold (%d > %d). Reset the device\0A\00", align 1
@ENA_REGS_RESET_MISS_TX_CMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, %struct.ena_ring*)* @check_missing_comp_in_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_missing_comp_in_tx_queue(%struct.ena_adapter* %0, %struct.ena_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca %struct.bintime, align 4
  %7 = alloca %struct.bintime, align 4
  %8 = alloca %struct.ena_tx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %5, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 @getbinuptime(%struct.bintime* %6)
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %110, %2
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %113

20:                                               ; preds = %14
  %21 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %22 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %21, i32 0, i32 4
  %23 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %23, i64 %25
  store %struct.ena_tx_buffer* %26, %struct.ena_tx_buffer** %8, align 8
  %27 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %27, i32 0, i32 1
  %29 = call i64 @bintime_isset(i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %110

32:                                               ; preds = %20
  %33 = bitcast %struct.bintime* %7 to i8*
  %34 = bitcast %struct.bintime* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %35, i32 0, i32 1
  %37 = call i32 @bintime_sub(%struct.bintime* %7, i32* %36)
  %38 = getelementptr inbounds %struct.bintime, %struct.bintime* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bttosbt(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %42 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 2, %49
  %51 = icmp sgt i32 %46, %50
  br label %52

52:                                               ; preds = %45, %32
  %53 = phi i1 [ false, %32 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %62 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %67 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %68 = call i32 @ENA_FLAG_ISSET(i32 %66, %struct.ena_adapter* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %57
  %75 = load i32, i32* @ENA_REGS_RESET_MISS_INTERRUPT, align 4
  %76 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %79 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %80 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %78, %struct.ena_adapter* %79)
  br label %81

81:                                               ; preds = %74, %57
  %82 = load i32, i32* @EIO, align 4
  store i32 %82, i32* %3, align 4
  br label %156

83:                                               ; preds = %52
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %83
  %93 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %94 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @ENA_WARNING, align 4
  %99 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %100 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ena_trace(i32 %98, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %92
  %105 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %8, align 8
  %106 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %104, %83
  br label %110

110:                                              ; preds = %109, %31
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %14

113:                                              ; preds = %14
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %116 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %113
  %123 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i64 %126, i64 %129)
  %131 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %132 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %133 = call i32 @ENA_FLAG_ISSET(i32 %131, %struct.ena_adapter* %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i64 @likely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %122
  %140 = load i32, i32* @ENA_REGS_RESET_MISS_TX_CMPL, align 4
  %141 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %142 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %144 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %145 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %143, %struct.ena_adapter* %144)
  br label %146

146:                                              ; preds = %139, %122
  %147 = load i32, i32* @EIO, align 4
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %146, %113
  %149 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %150 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @counter_u64_add(i32 %152, i64 %153)
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %148, %81
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @getbinuptime(%struct.bintime*) #1

declare dso_local i64 @bintime_isset(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bintime_sub(%struct.bintime*, i32*) #1

declare dso_local i32 @bttosbt(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_trace(i32, i8*, i32, i32) #1

declare dso_local i32 @counter_u64_add(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

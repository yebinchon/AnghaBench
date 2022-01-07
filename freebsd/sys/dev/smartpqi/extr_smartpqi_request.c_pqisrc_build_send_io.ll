; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_build_send_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_request.c_pqisrc_build_send_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32*, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32 }

@AIO_PATH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" IN \00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@RAID_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"num_elem_needed :%d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"num_elem_avialable :%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Current queue is busy! Hop to next queue\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"num_elem_alloted :%d\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"OUT: IB Queues were full\0A\00", align 1
@PQI_STATUS_QFULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"ib_q->pi_local : %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"*ib_q->ci_virt_addr: %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" OUT \00", align 1
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_build_send_io(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca [16 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %7, align 8
  store i8* null, i8** %8, align 8
  %23 = load i64, i64* @AIO_PATH, align 8
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = call i32 @OS_GET_IO_REQ_QINDEX(%struct.TYPE_22__* %24, %struct.TYPE_21__* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %16, align 8
  %34 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = call i32* @OS_GET_CDBP(%struct.TYPE_21__* %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %40 = call i64 @IS_AIO_PATH(%struct.TYPE_23__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %77

48:                                               ; preds = %2
  %49 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %49, i32* %18, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %59 = call i32 @pqisrc_send_scsi_cmd_raidbypass(%struct.TYPE_22__* %55, %struct.TYPE_23__* %56, %struct.TYPE_21__* %57, i32* %58)
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i64, i64* @RAID_PATH, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %6, align 8
  br label %76

72:                                               ; preds = %60
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %72, %64
  br label %77

77:                                               ; preds = %76, %42
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = call i32 @OS_GET_IO_SG_COUNT(%struct.TYPE_21__* %79)
  %81 = call i32 @pqisrc_num_elem_needed(%struct.TYPE_22__* %78, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %130, %77
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i64 %87
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %7, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 5
  %91 = call i32 @PQI_LOCK(i32* %90)
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @pqisrc_contiguous_free_elem(i32 %94, i32 %98, i32 %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %84
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %15, align 4
  br label %133

110:                                              ; preds = %84
  %111 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 5
  %114 = call i32 @PQI_UNLOCK(i32* %113)
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32, i32* %13, align 4
  %118 = srem i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %110
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %133

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %126, %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %84, label %133

133:                                              ; preds = %130, %125, %108
  %134 = load i32, i32* %15, align 4
  %135 = call i32 (i8*, ...) @DBG_IO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = call i32 @DBG_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @PQI_STATUS_QFULL, align 4
  store i32 %140, i32* %3, align 4
  br label %210

141:                                              ; preds = %133
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %144, i64 %152
  store i8* %153, i8** %8, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* @AIO_PATH, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %141
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @pqisrc_build_aio_io(%struct.TYPE_22__* %158, %struct.TYPE_21__* %159, i32* %161, i32 %162)
  br label %171

164:                                              ; preds = %141
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @pqisrc_build_raid_io(%struct.TYPE_22__* %165, %struct.TYPE_21__* %166, i32* %168, i32 %169)
  br label %171

171:                                              ; preds = %164, %157
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %176, %177
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = srem i32 %178, %181
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @DBG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @DBG_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %192)
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @PCI_MEM_PUT32(%struct.TYPE_22__* %194, i32 %197, i32 %200, i32 %203)
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 5
  %207 = call i32 @PQI_UNLOCK(i32* %206)
  %208 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %209 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %171, %138
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @OS_GET_IO_REQ_QINDEX(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32* @OS_GET_CDBP(%struct.TYPE_21__*) #1

declare dso_local i64 @IS_AIO_PATH(%struct.TYPE_23__*) #1

declare dso_local i32 @pqisrc_send_scsi_cmd_raidbypass(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @pqisrc_num_elem_needed(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @OS_GET_IO_SG_COUNT(%struct.TYPE_21__*) #1

declare dso_local i32 @DBG_IO(i8*, ...) #1

declare dso_local i32 @PQI_LOCK(i32*) #1

declare dso_local i32 @pqisrc_contiguous_free_elem(i32, i32, i32) #1

declare dso_local i32 @PQI_UNLOCK(i32*) #1

declare dso_local i32 @DBG_WARN(i8*) #1

declare dso_local i32 @pqisrc_build_aio_io(%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @pqisrc_build_raid_io(%struct.TYPE_22__*, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @DBG_INFO(i8*, i32) #1

declare dso_local i32 @PCI_MEM_PUT32(%struct.TYPE_22__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

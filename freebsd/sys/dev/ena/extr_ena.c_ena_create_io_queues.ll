; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_create_io_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_create_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.ena_que*, %struct.ena_ring*, i32, %struct.ena_ring*, i32, %struct.ena_com_dev* }
%struct.ena_que = type { i32, i32 }
%struct.ena_ring = type { i32, i32 }
%struct.ena_com_dev = type { i32 }
%struct.ena_com_create_io_ctx = type { i8*, i8*, i32, i32, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to create io TX queue #%d rc: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to get TX queue handlers. TX queue num %d rc: %d\0A\00", align 1
@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i32 0, align 4
@ENA_COM_IO_QUEUE_DIRECTION_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to create io RX queue[%d] rc: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Failed to get RX queue handlers. RX queue num %d rc: %d\0A\00", align 1
@ena_cleanup = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ena cleanup\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"%s queue %d cleanup\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_create_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_create_io_queues(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_com_create_io_ctx, align 8
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca %struct.ena_que*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 7
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %13, align 8
  store %struct.ena_com_dev* %14, %struct.ena_com_dev** %4, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %78, %1
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %15
  %22 = load i32, i32* %11, align 4
  %23 = call i8* @ENA_IO_IRQ_IDX(i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @ENA_IO_TXQ_IDX(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %27 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 4
  %31 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %41 = call i32 @ena_com_create_io_queue(%struct.ena_com_dev* %40, %struct.ena_com_create_io_ctx* %5)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %21
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %205

51:                                               ; preds = %21
  %52 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %52, i32 0, i32 5
  %54 = load %struct.ena_ring*, %struct.ena_ring** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %54, i64 %56
  store %struct.ena_ring* %57, %struct.ena_ring** %6, align 8
  %58 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %61 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %60, i32 0, i32 1
  %62 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %63 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %62, i32 0, i32 0
  %64 = call i32 @ena_com_get_io_handlers(%struct.ena_com_dev* %58, i8* %59, i32* %61, i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %51
  %68 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @ena_com_destroy_io_queue(%struct.ena_com_dev* %74, i8* %75)
  br label %205

77:                                               ; preds = %51
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %15

81:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %149, %81
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %152

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = call i8* @ENA_IO_IRQ_IDX(i32 %89)
  store i8* %90, i8** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @ENA_IO_RXQ_IDX(i32 %91)
  store i8* %92, i8** %8, align 8
  %93 = load i32, i32* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 4
  %94 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* @ENA_COM_IO_QUEUE_DIRECTION_RX, align 4
  %96 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %5, i32 0, i32 0
  store i8* %103, i8** %104, align 8
  %105 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %106 = call i32 @ena_com_create_io_queue(%struct.ena_com_dev* %105, %struct.ena_com_create_io_ctx* %5)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %88
  %113 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117)
  br label %191

119:                                              ; preds = %88
  %120 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %120, i32 0, i32 3
  %122 = load %struct.ena_ring*, %struct.ena_ring** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %122, i64 %124
  store %struct.ena_ring* %125, %struct.ena_ring** %6, align 8
  %126 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %129 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %128, i32 0, i32 1
  %130 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %131 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %130, i32 0, i32 0
  %132 = call i32 @ena_com_get_io_handlers(%struct.ena_com_dev* %126, i8* %127, i32* %129, i32* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %119
  %139 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @ena_com_destroy_io_queue(%struct.ena_com_dev* %145, i8* %146)
  br label %191

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %82

152:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %187, %152
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %153
  %160 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %160, i32 0, i32 2
  %162 = load %struct.ena_que*, %struct.ena_que** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %162, i64 %164
  store %struct.ena_que* %165, %struct.ena_que** %7, align 8
  %166 = load %struct.ena_que*, %struct.ena_que** %7, align 8
  %167 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %166, i32 0, i32 1
  %168 = load i32, i32* @ena_cleanup, align 4
  %169 = load %struct.ena_que*, %struct.ena_que** %7, align 8
  %170 = call i32 @TASK_INIT(i32* %167, i32 0, i32 %168, %struct.ena_que* %169)
  %171 = load i32, i32* @M_WAITOK, align 4
  %172 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %173 = load %struct.ena_que*, %struct.ena_que** %7, align 8
  %174 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %173, i32 0, i32 0
  %175 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %171, i32 %172, i32* %174)
  %176 = load %struct.ena_que*, %struct.ena_que** %7, align 8
  %177 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load %struct.ena_que*, %struct.ena_que** %7, align 8
  %179 = getelementptr inbounds %struct.ena_que, %struct.ena_que* %178, i32 0, i32 0
  %180 = load i32, i32* @PI_NET, align 4
  %181 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @device_get_nameunit(i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @taskqueue_start_threads(i32* %179, i32 1, i32 %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %159
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %153

190:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %217

191:                                              ; preds = %138, %112
  br label %192

192:                                              ; preds = %196, %191
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %11, align 4
  %195 = icmp ne i32 %193, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i8* @ENA_IO_RXQ_IDX(i32 %198)
  %200 = call i32 @ena_com_destroy_io_queue(%struct.ena_com_dev* %197, i8* %199)
  br label %192

201:                                              ; preds = %192
  %202 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %203 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %201, %67, %44
  br label %206

206:                                              ; preds = %210, %205
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %11, align 4
  %209 = icmp ne i32 %207, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i8* @ENA_IO_TXQ_IDX(i32 %212)
  %214 = call i32 @ena_com_destroy_io_queue(%struct.ena_com_dev* %211, i8* %213)
  br label %206

215:                                              ; preds = %206
  %216 = load i32, i32* @ENXIO, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %190
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i8* @ENA_IO_IRQ_IDX(i32) #1

declare dso_local i8* @ENA_IO_TXQ_IDX(i32) #1

declare dso_local i32 @ena_com_create_io_queue(%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @ena_com_get_io_handlers(%struct.ena_com_dev*, i8*, i32*, i32*) #1

declare dso_local i32 @ena_com_destroy_io_queue(%struct.ena_com_dev*, i8*) #1

declare dso_local i8* @ENA_IO_RXQ_IDX(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ena_que*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

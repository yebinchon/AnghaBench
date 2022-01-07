; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_io_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_io_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64, i32*, i32, i32, %struct.TYPE_15__*, i64, i64 }

@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"allocate of IO pool failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"io_pool lock[%d]\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SCSI_CMD_BUF_LENGTH = common dso_local global i32 0, align 4
@OCS_MIN_DMA_ALIGNMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ocs_dma_alloc cmdbuf failed\0A\00", align 1
@SCSI_RSP_BUF_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"malloc sgl's failed\0A\00", align 1
@OCS_ELS_REQ_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"ocs_dma_alloc els_req failed\0A\00", align 1
@OCS_ELS_GID_PT_RSP_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"ocs_dma_alloc els_rsp failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ocs_io_pool_create(%struct.TYPE_15__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = load i32, i32* @OCS_M_ZERO, align 4
  %14 = load i32, i32* @OCS_M_NOWAIT, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @ocs_malloc(%struct.TYPE_15__* %12, i32 24, i32 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %10, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = call i32 @ocs_log_err(%struct.TYPE_15__* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %163

23:                                               ; preds = %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ocs_lock_init(%struct.TYPE_15__* %30, i32* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @ocs_pool_alloc(%struct.TYPE_15__* %37, i32 64, i64 %40, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %158, %23
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %161

51:                                               ; preds = %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call %struct.TYPE_16__* @ocs_pool_get_instance(i32 %54, i64 %55)
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 9
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 8
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 7
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %51
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 6
  %74 = load i32, i32* @SCSI_CMD_BUF_LENGTH, align 4
  %75 = load i32, i32* @OCS_MIN_DMA_ALIGNMENT, align 4
  %76 = call i32 @ocs_dma_alloc(%struct.TYPE_15__* %71, i32* %73, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = call i32 @ocs_log_err(%struct.TYPE_15__* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = call i32 @ocs_io_pool_free(%struct.TYPE_17__* %82)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %163

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %51
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 5
  %89 = load i32, i32* @SCSI_RSP_BUF_LENGTH, align 4
  %90 = load i32, i32* @OCS_MIN_DMA_ALIGNMENT, align 4
  %91 = call i32 @ocs_dma_alloc(%struct.TYPE_15__* %86, i32* %88, i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = call i32 @ocs_log_err(%struct.TYPE_15__* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %98 = call i32 @ocs_io_pool_free(%struct.TYPE_17__* %97)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %163

99:                                               ; preds = %85
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = mul i64 4, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @OCS_M_NOWAIT, align 4
  %105 = load i32, i32* @OCS_M_ZERO, align 4
  %106 = or i32 %104, %105
  %107 = call i8* @ocs_malloc(%struct.TYPE_15__* %100, i32 %103, i32 %106)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %99
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = call i32 @ocs_log_err(%struct.TYPE_15__* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = call i32 @ocs_io_pool_free(%struct.TYPE_17__* %118)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %163

120:                                              ; preds = %99
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %127 = call i32 @ocs_scsi_tgt_io_init(%struct.TYPE_16__* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %129 = call i32 @ocs_scsi_ini_io_init(%struct.TYPE_16__* %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* @OCS_ELS_REQ_LEN, align 4
  %134 = load i32, i32* @OCS_MIN_DMA_ALIGNMENT, align 4
  %135 = call i32 @ocs_dma_alloc(%struct.TYPE_15__* %130, i32* %132, i32 %133, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %120
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = call i32 @ocs_log_err(%struct.TYPE_15__* %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %142 = call i32 @ocs_io_pool_free(%struct.TYPE_17__* %141)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %163

143:                                              ; preds = %120
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* @OCS_ELS_GID_PT_RSP_LEN, align 4
  %148 = load i32, i32* @OCS_MIN_DMA_ALIGNMENT, align 4
  %149 = call i32 @ocs_dma_alloc(%struct.TYPE_15__* %144, i32* %146, i32 %147, i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = call i32 @ocs_log_err(%struct.TYPE_15__* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %156 = call i32 @ocs_io_pool_free(%struct.TYPE_17__* %155)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %163

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %8, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %8, align 8
  br label %45

161:                                              ; preds = %45
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %162, %struct.TYPE_17__** %4, align 8
  br label %163

163:                                              ; preds = %161, %152, %138, %115, %94, %79, %20
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %164
}

declare dso_local i8* @ocs_malloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @ocs_lock_init(%struct.TYPE_15__*, i32*, i8*, i32) #1

declare dso_local i32 @ocs_pool_alloc(%struct.TYPE_15__*, i32, i64, i32) #1

declare dso_local %struct.TYPE_16__* @ocs_pool_get_instance(i32, i64) #1

declare dso_local i32 @ocs_dma_alloc(%struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @ocs_io_pool_free(%struct.TYPE_17__*) #1

declare dso_local i32 @ocs_scsi_tgt_io_init(%struct.TYPE_16__*) #1

declare dso_local i32 @ocs_scsi_ini_io_init(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

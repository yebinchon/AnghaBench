; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xchan_seg_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_sg.c_xchan_seg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32* }
%struct.xdma_transfer_status = type { i32, i32 }
%struct.xdma_request = type { i64, i64, %struct.TYPE_9__, i32, i32, %struct.xchan_buf, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.xchan_buf = type { i64, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"request not found\0A\00", align 1
@XCHAN_CAP_BUSDMA = common dso_local global i32 0, align 4
@XDMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@XCHAN_CAP_BOUNCE = common dso_local global i32 0, align 4
@XR_TYPE_MBUF = common dso_local global i64 0, align 8
@XDMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@XCHAN_CAP_IOMMU = common dso_local global i32 0, align 4
@xr_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchan_seg_done(%struct.TYPE_10__* %0, %struct.xdma_transfer_status* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.xdma_transfer_status*, align 8
  %5 = alloca %struct.xdma_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xchan_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.xdma_transfer_status* %1, %struct.xdma_transfer_status** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = call %struct.xdma_request* @TAILQ_FIRST(i32* %13)
  store %struct.xdma_request* %14, %struct.xdma_request** %5, align 8
  %15 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %16 = icmp eq %struct.xdma_request* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %21 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %20, i32 0, i32 5
  store %struct.xchan_buf* %21, %struct.xchan_buf** %7, align 8
  %22 = load %struct.xchan_buf*, %struct.xchan_buf** %7, align 8
  %23 = getelementptr inbounds %struct.xchan_buf, %struct.xchan_buf* %22, i32 0, i32 0
  %24 = call i32 @atomic_subtract_int(i64* %23, i32 1)
  %25 = load %struct.xchan_buf*, %struct.xchan_buf** %7, align 8
  %26 = getelementptr inbounds %struct.xchan_buf, %struct.xchan_buf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %159

29:                                               ; preds = %19
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XCHAN_CAP_BUSDMA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %29
  %37 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %38 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XDMA_MEM_TO_DEV, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xchan_buf*, %struct.xchan_buf** %7, align 8
  %47 = getelementptr inbounds %struct.xchan_buf, %struct.xchan_buf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %50 = call i32 @bus_dmamap_sync(i32 %45, i32 %48, i32 %49)
  br label %60

51:                                               ; preds = %36
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xchan_buf*, %struct.xchan_buf** %7, align 8
  %56 = getelementptr inbounds %struct.xchan_buf, %struct.xchan_buf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %59 = call i32 @bus_dmamap_sync(i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xchan_buf*, %struct.xchan_buf** %7, align 8
  %65 = getelementptr inbounds %struct.xchan_buf, %struct.xchan_buf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bus_dmamap_unload(i32 %63, i32 %66)
  br label %128

68:                                               ; preds = %29
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @XCHAN_CAP_BOUNCE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %68
  %76 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %77 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @XR_TYPE_MBUF, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %83 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XDMA_DEV_TO_MEM, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %89 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.xdma_transfer_status*, %struct.xdma_transfer_status** %4, align 8
  %92 = getelementptr inbounds %struct.xdma_transfer_status, %struct.xdma_transfer_status* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %95 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.xchan_buf, %struct.xchan_buf* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @m_copyback(i32 %90, i32 0, i32 %93, i8* %98)
  br label %100

100:                                              ; preds = %87, %81, %75
  br label %127

101:                                              ; preds = %68
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @XCHAN_CAP_IOMMU, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %101
  %109 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %110 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @XDMA_MEM_TO_DEV, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %116 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %8, align 4
  br label %122

118:                                              ; preds = %108
  %119 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %120 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @xdma_iommu_remove_entry(%struct.TYPE_10__* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %101
  br label %127

127:                                              ; preds = %126, %100
  br label %128

128:                                              ; preds = %127, %60
  %129 = load %struct.xdma_transfer_status*, %struct.xdma_transfer_status** %4, align 8
  %130 = getelementptr inbounds %struct.xdma_transfer_status, %struct.xdma_transfer_status* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %133 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.xdma_transfer_status*, %struct.xdma_transfer_status** %4, align 8
  %136 = getelementptr inbounds %struct.xdma_transfer_status, %struct.xdma_transfer_status* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %139 = getelementptr inbounds %struct.xdma_request, %struct.xdma_request* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = call i32 @QUEUE_PROC_LOCK(%struct.TYPE_10__* %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %146 = load i32, i32* @xr_next, align 4
  %147 = call i32 @TAILQ_REMOVE(i32* %144, %struct.xdma_request* %145, i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = call i32 @QUEUE_PROC_UNLOCK(%struct.TYPE_10__* %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = call i32 @QUEUE_OUT_LOCK(%struct.TYPE_10__* %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load %struct.xdma_request*, %struct.xdma_request** %5, align 8
  %155 = load i32, i32* @xr_next, align 4
  %156 = call i32 @TAILQ_INSERT_TAIL(i32* %153, %struct.xdma_request* %154, i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %158 = call i32 @QUEUE_OUT_UNLOCK(%struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %128, %19
  ret void
}

declare dso_local %struct.xdma_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @atomic_subtract_int(i64*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_copyback(i32, i32, i32, i8*) #1

declare dso_local i32 @xdma_iommu_remove_entry(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @QUEUE_PROC_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.xdma_request*, i32) #1

declare dso_local i32 @QUEUE_PROC_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @QUEUE_OUT_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.xdma_request*, i32) #1

declare dso_local i32 @QUEUE_OUT_UNLOCK(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

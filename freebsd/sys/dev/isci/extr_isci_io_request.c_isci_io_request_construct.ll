; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ISCI_IO_REQUEST = type { i32, %struct.TYPE_3__, i32, %union.ccb*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CAM_TIME_INFINITY = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@isci_io_request_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @isci_io_request_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_io_request_construct(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ccb*, align 8
  %10 = alloca %struct.ISCI_IO_REQUEST*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ISCI_IO_REQUEST*
  store %struct.ISCI_IO_REQUEST* %14, %struct.ISCI_IO_REQUEST** %10, align 8
  %15 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %16 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %21 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %24 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %26 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %25, i32 0, i32 3
  %27 = load %union.ccb*, %union.ccb** %26, align 8
  store %union.ccb* %27, %union.ccb** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* @CAM_REQ_INVALID, align 4
  %32 = load %union.ccb*, %union.ccb** %9, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %union.ccb*, %union.ccb** %9, align 8
  %36 = call i32 @xpt_done(%union.ccb* %35)
  br label %129

37:                                               ; preds = %4
  %38 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %39 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %43 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %47 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %48 = bitcast %struct.ISCI_IO_REQUEST* %47 to i8*
  %49 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %50 = bitcast %struct.ISCI_IO_REQUEST* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 56
  %52 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %53 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %52, i32 0, i32 2
  %54 = call i64 @scif_io_request_construct(i32 %41, i32* %45, i32 %46, i8* %48, i8* %51, i32* %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @SCI_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %37
  %59 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %60 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @isci_io_request_complete(i32 %62, i32* %63, %struct.ISCI_IO_REQUEST* %64, i32 %66)
  br label %129

68:                                               ; preds = %37
  %69 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %70 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %73 = call i32 @sci_object_set_association(i32 %71, %struct.ISCI_IO_REQUEST* %72)
  %74 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %75 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %79 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %83 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @bus_dmamap_sync(i32 %77, i32 %81, i32 %84)
  %86 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %87 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %92 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %95 = call i64 @scif_controller_start_io(i32 %89, i32* %90, i32 %93, i32 %94)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* @SCI_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %68
  %100 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %101 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %106 = load i64, i64* %12, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @isci_io_request_complete(i32 %103, i32* %104, %struct.ISCI_IO_REQUEST* %105, i32 %107)
  br label %129

109:                                              ; preds = %68
  %110 = load %union.ccb*, %union.ccb** %9, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_4__*
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CAM_TIME_INFINITY, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %118 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* @SBT_1MS, align 4
  %121 = load %union.ccb*, %union.ccb** %9, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_4__*
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %120, %124
  %126 = load i32, i32* @isci_io_request_timeout, align 4
  %127 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %10, align 8
  %128 = call i32 @callout_reset_sbt(i32* %119, i32 %125, i32 0, i32 %126, %struct.ISCI_IO_REQUEST* %127, i32 0)
  br label %129

129:                                              ; preds = %30, %58, %99, %116, %109
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i64 @scif_io_request_construct(i32, i32*, i32, i8*, i8*, i32*) #1

declare dso_local i32 @isci_io_request_complete(i32, i32*, %struct.ISCI_IO_REQUEST*, i32) #1

declare dso_local i32 @sci_object_set_association(i32, %struct.ISCI_IO_REQUEST*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @scif_controller_start_io(i32, i32*, i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.ISCI_IO_REQUEST*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

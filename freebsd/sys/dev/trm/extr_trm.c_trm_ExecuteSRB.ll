; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_ExecuteSRB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_ExecuteSRB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i8*, i64, %struct.TYPE_12__*, %union.ccb* }
%struct.TYPE_12__ = type { i8*, i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"trm_ExecuteSRB..........\0A\00", align 1
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@PH_BUS_FREE = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_10__*, i32, i32)* @trm_ExecuteSRB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_ExecuteSRB(i8* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %union.ccb*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %13, align 8
  %17 = call i32 (...) @splcam()
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 14
  %22 = load %union.ccb*, %union.ccb** %21, align 8
  store %union.ccb* %22, %union.ccb** %12, align 8
  %23 = load %union.ccb*, %union.ccb** %12, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %10, align 8
  %28 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %15, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 13
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %14, align 8
  br label %39

39:                                               ; preds = %43, %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %42 = icmp ult %struct.TYPE_10__* %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr i8, i8* %58, i64 %57
  store i8* %59, i8** %13, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 1
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %14, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 1
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %6, align 8
  br label %39

64:                                               ; preds = %39
  %65 = load %union.ccb*, %union.ccb** %12, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_9__*
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CAM_DIR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CAM_DIR_IN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %74, i32* %16, align 4
  br label %77

75:                                               ; preds = %64
  %76 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @bus_dmamap_sync(i32 %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 12
  store i64 0, i64* %88, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 11
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 10
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 9
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 8
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 6
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @PH_BUS_FREE, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %union.ccb*, %union.ccb** %12, align 8
  %113 = bitcast %union.ccb* %112 to %struct.TYPE_9__*
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CAM_REQ_INPROG, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %86
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @bus_dmamap_unload(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %121, %118
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %137, align 8
  %138 = load %union.ccb*, %union.ccb** %12, align 8
  %139 = call i32 @xpt_done(%union.ccb* %138)
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @splx(i32 %140)
  br label %154

142:                                              ; preds = %86
  %143 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %144 = load %union.ccb*, %union.ccb** %12, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_9__*
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %151 = call i32 @trm_SendSRB(%struct.TYPE_13__* %149, %struct.TYPE_11__* %150)
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @splx(i32 %152)
  br label %154

154:                                              ; preds = %142, %129
  ret void
}

declare dso_local i32 @splcam(...) #1

declare dso_local i32 @TRM_DPRINTF(i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @trm_SendSRB(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

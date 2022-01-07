; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }

@MXGEFW_ETH_CMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mxge: command %d failed, result = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mxge: command %d timed outresult = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, %struct.TYPE_13__*)* @mxge_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_send_cmd(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca [56 x i8], align 16
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @MXGEFW_ETH_CMD, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %24 = getelementptr inbounds [56 x i8], [56 x i8]* %8, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 7
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, -8
  %28 = inttoptr i64 %27 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htobe32(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @htobe32(i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @htobe32(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @htobe32(i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @MXGE_LOWPART_TO_U32(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @MXGE_HIGHPART_TO_U32(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i8* @htobe32(i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i8* @htobe32(i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = call i32 @mtx_lock(i32* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store volatile i32 -1, i32* %75, align 4
  %76 = call i32 (...) @wmb()
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = call i32 @mxge_pio_copy(i8* %77, %struct.TYPE_14__* %78, i32 48)
  %80 = load i32, i32* @EAGAIN, align 4
  store i32 %80, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %134, %3
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 20
  br i1 %83, label %84, label %137

84:                                               ; preds = %81
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %94 = call i32 @bus_dmamap_sync(i32 %88, i32 %92, i32 %93)
  %95 = call i32 (...) @wmb()
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load volatile i32, i32* %97, align 4
  %99 = call i32 @be32toh(i32 %98)
  switch i32 %99, label %117 [
    i32 0, label %100
    i32 -1, label %107
    i32 128, label %109
    i32 129, label %111
    i32 131, label %113
    i32 130, label %115
  ]

100:                                              ; preds = %84
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load volatile i32, i32* %102, align 4
  %104 = call i32 @be32toh(i32 %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %13, align 4
  br label %128

107:                                              ; preds = %84
  %108 = call i32 @DELAY(i32 1000)
  br label %128

109:                                              ; preds = %84
  %110 = load i32, i32* @ENOSYS, align 4
  store i32 %110, i32* %13, align 4
  br label %128

111:                                              ; preds = %84
  %112 = load i32, i32* @E2BIG, align 4
  store i32 %112, i32* %13, align 4
  br label %128

113:                                              ; preds = %84
  %114 = load i32, i32* @EBUSY, align 4
  store i32 %114, i32* %13, align 4
  br label %128

115:                                              ; preds = %84
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %13, align 4
  br label %128

117:                                              ; preds = %84
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load volatile i32, i32* %123, align 4
  %125 = call i32 @be32toh(i32 %124)
  %126 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %125)
  %127 = load i32, i32* @ENXIO, align 4
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %117, %115, %113, %111, %109, %107, %100
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %137

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %81

137:                                              ; preds = %132, %81
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load volatile i32, i32* %147, align 4
  %149 = call i32 @be32toh(i32 %148)
  %150 = call i32 @device_printf(i32 %144, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %141, %137
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = call i32 @mtx_unlock(i32* %153)
  %155 = load i32, i32* %13, align 4
  ret i32 %155
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @MXGE_LOWPART_TO_U32(i32) #1

declare dso_local i32 @MXGE_HIGHPART_TO_U32(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mxge_pio_copy(i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

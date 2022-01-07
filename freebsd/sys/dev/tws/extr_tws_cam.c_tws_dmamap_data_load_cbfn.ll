; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_dmamap_data_load_cbfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_dmamap_data_load_cbfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { i32, i32, i64, %struct.tws_softc*, %struct.TYPE_12__*, i32, %struct.TYPE_8__* }
%struct.tws_softc = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.tws_cmd_generic }
%struct.tws_cmd_generic = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"SOMETHING BAD HAPPENED! error = %d\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"not enough data segs\00", align 1
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@TWS_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@TWS_DIR_OUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TWS_REQ_TYPE_PASSTHRU = common dso_local global i64 0, align 8
@TWS_FW_CMD_EXECUTE_SCSI = common dso_local global i64 0, align 8
@TWS_REQ_TYPE_GETSET_PARAM = common dso_local global i64 0, align 8
@tws_use_32bit_sgls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @tws_dmamap_data_load_cbfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_dmamap_data_load_cbfn(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tws_request*, align 8
  %10 = alloca %struct.tws_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tws_cmd_generic*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.tws_request*
  store %struct.tws_request* %15, %struct.tws_request** %9, align 8
  %16 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %17 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %16, i32 0, i32 3
  %18 = load %struct.tws_softc*, %struct.tws_softc** %17, align 8
  store %struct.tws_softc* %18, %struct.tws_softc** %10, align 8
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.tws_softc*, %struct.tws_softc** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @TWS_TRACE(%struct.tws_softc* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EFBIG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.tws_softc*, %struct.tws_softc** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @TWS_TRACE(%struct.tws_softc* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %36 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %38 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %39 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %38, i32 0, i32 6
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  br label %181

43:                                               ; preds = %26
  %44 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %45 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TWS_DIR_IN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %52 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %51, i32 0, i32 3
  %53 = load %struct.tws_softc*, %struct.tws_softc** %52, align 8
  %54 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %57 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %60 = call i32 @bus_dmamap_sync(i32 %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %50, %43
  %62 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %63 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TWS_DIR_OUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %70 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %69, i32 0, i32 3
  %71 = load %struct.tws_softc*, %struct.tws_softc** %70, align 8
  %72 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %75 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %78 = call i32 @bus_dmamap_sync(i32 %73, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %68, %61
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %173

82:                                               ; preds = %79
  %83 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %84 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TWS_REQ_TYPE_PASSTHRU, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %90 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %89, i32 0, i32 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @GET_OPCODE(i32 %95)
  %97 = load i64, i64* @TWS_FW_CMD_EXECUTE_SCSI, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %88, %82
  %100 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %101 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TWS_REQ_TYPE_GETSET_PARAM, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %148

105:                                              ; preds = %99, %88
  %106 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %107 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %106, i32 0, i32 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store %struct.tws_cmd_generic* %111, %struct.tws_cmd_generic** %13, align 8
  %112 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %13, align 8
  %113 = bitcast %struct.tws_cmd_generic* %112 to i32*
  %114 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %13, align 8
  %115 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = bitcast i32* %118 to i8*
  store i8* %119, i8** %12, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %122 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %121, i32 0, i32 3
  %123 = load %struct.tws_softc*, %struct.tws_softc** %122, align 8
  %124 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %105
  %128 = load i32, i32* @tws_use_32bit_sgls, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %127, %105
  %132 = phi i1 [ false, %105 ], [ %130, %127 ]
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 4, i32 2
  %135 = mul nsw i32 %120, %134
  %136 = load %struct.tws_cmd_generic*, %struct.tws_cmd_generic** %13, align 8
  %137 = getelementptr inbounds %struct.tws_cmd_generic, %struct.tws_cmd_generic* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %141 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %140, i32 0, i32 3
  %142 = load %struct.tws_softc*, %struct.tws_softc** %141, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = bitcast i32* %143 to i8*
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @tws_fill_sg_list(%struct.tws_softc* %142, i8* %144, i8* %145, i32 %146)
  br label %172

148:                                              ; preds = %99
  %149 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %150 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %149, i32 0, i32 3
  %151 = load %struct.tws_softc*, %struct.tws_softc** %150, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = bitcast i32* %152 to i8*
  %154 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %155 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %154, i32 0, i32 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = bitcast i32* %159 to i8*
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @tws_fill_sg_list(%struct.tws_softc* %151, i8* %153, i8* %160, i32 %161)
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %165 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %164, i32 0, i32 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %163
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %148, %131
  br label %173

173:                                              ; preds = %172, %79
  %174 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %175 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %174, i32 0, i32 3
  %176 = load %struct.tws_softc*, %struct.tws_softc** %175, align 8
  %177 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %178 = call i32 @tws_submit_command(%struct.tws_softc* %176, %struct.tws_request* %177)
  %179 = load %struct.tws_request*, %struct.tws_request** %9, align 8
  %180 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %173, %30
  ret void
}

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @GET_OPCODE(i32) #1

declare dso_local i32 @tws_fill_sg_list(%struct.tws_softc*, i8*, i8*, i32) #1

declare dso_local i32 @tws_submit_command(%struct.tws_softc*, %struct.tws_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

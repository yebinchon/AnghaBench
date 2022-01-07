; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_request_map_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_request_map_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.ciss_command = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.ciss_request = type { i32, i32, i32, i32, %struct.ciss_command*, %struct.ciss_softc* }
%struct.ciss_softc = type { i64, i32 }

@CISS_REQ_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@CISS_REQ_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CISS_SG_NONE = common dso_local global i32 0, align 4
@CISS_SG_1 = common dso_local global i32 0, align 4
@CISS_SG_2 = common dso_local global i32 0, align 4
@CISS_SG_4 = common dso_local global i32 0, align 4
@CISS_SG_8 = common dso_local global i32 0, align 4
@CISS_SG_16 = common dso_local global i32 0, align 4
@CISS_SG_32 = common dso_local global i32 0, align 4
@CISS_SG_MAX = common dso_local global i32 0, align 4
@CISS_REQ_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, i32, i32)* @ciss_request_map_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_request_map_helper(i8* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ciss_command*, align 8
  %10 = alloca %struct.ciss_request*, align 8
  %11 = alloca %struct.ciss_softc*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 @debug_called(i32 2)
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ciss_request*
  store %struct.ciss_request* %15, %struct.ciss_request** %10, align 8
  %16 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %17 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %16, i32 0, i32 5
  %18 = load %struct.ciss_softc*, %struct.ciss_softc** %17, align 8
  store %struct.ciss_softc* %18, %struct.ciss_softc** %11, align 8
  %19 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %20 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %19, i32 0, i32 4
  %21 = load %struct.ciss_command*, %struct.ciss_command** %20, align 8
  store %struct.ciss_command* %21, %struct.ciss_command** %9, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %60, %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ciss_command*, %struct.ciss_command** %9, align 8
  %34 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %32, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ciss_command*, %struct.ciss_command** %9, align 8
  %47 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 8
  %53 = load %struct.ciss_command*, %struct.ciss_command** %9, align 8
  %54 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %26
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %22

63:                                               ; preds = %22
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ciss_command*, %struct.ciss_command** %9, align 8
  %66 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ciss_command*, %struct.ciss_command** %9, align 8
  %70 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %73 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CISS_REQ_DATAIN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %80 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %83 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %86 = call i32 @bus_dmamap_sync(i32 %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %63
  %88 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %89 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CISS_REQ_DATAOUT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %96 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %99 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %102 = call i32 @bus_dmamap_sync(i32 %97, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %87
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @CISS_SG_NONE, align 4
  %108 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %109 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %162

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @CISS_SG_1, align 4
  %115 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %116 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  br label %161

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @CISS_SG_2, align 4
  %122 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %123 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %160

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  %126 = icmp sle i32 %125, 4
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @CISS_SG_4, align 4
  %129 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %130 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %159

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  %133 = icmp sle i32 %132, 8
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* @CISS_SG_8, align 4
  %136 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %137 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %158

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = icmp sle i32 %139, 16
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @CISS_SG_16, align 4
  %143 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %144 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %157

145:                                              ; preds = %138
  %146 = load i32, i32* %7, align 4
  %147 = icmp sle i32 %146, 32
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, i32* @CISS_SG_32, align 4
  %150 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %151 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  br label %156

152:                                              ; preds = %145
  %153 = load i32, i32* @CISS_SG_MAX, align 4
  %154 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %155 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %141
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %127
  br label %160

160:                                              ; preds = %159, %120
  br label %161

161:                                              ; preds = %160, %113
  br label %162

162:                                              ; preds = %161, %106
  %163 = load i32, i32* @CISS_REQ_BUSY, align 4
  %164 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %165 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %169 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %162
  %173 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %174 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %175 = call i32 @CISS_TL_PERF_POST_CMD(%struct.ciss_softc* %173, %struct.ciss_request* %174)
  br label %182

176:                                              ; preds = %162
  %177 = load %struct.ciss_softc*, %struct.ciss_softc** %11, align 8
  %178 = load %struct.ciss_request*, %struct.ciss_request** %10, align 8
  %179 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @CISS_TL_SIMPLE_POST_CMD(%struct.ciss_softc* %177, i32 %180)
  br label %182

182:                                              ; preds = %176, %172
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CISS_TL_PERF_POST_CMD(%struct.ciss_softc*, %struct.ciss_request*) #1

declare dso_local i32 @CISS_TL_SIMPLE_POST_CMD(%struct.ciss_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

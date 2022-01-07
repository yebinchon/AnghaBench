; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { i64*, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i64, i32, i32, i32, %struct.mxge_slice_state*, i64, i64* }

@mxge_deassert_wait = common dso_local global i64 0, align 8
@LINK_STATE_UP = common dso_local global i32 0, align 4
@mxge_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RDMA timed out! %d tags left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mxge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mxge_slice_state*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.mxge_slice_state*
  store %struct.mxge_slice_state* %11, %struct.mxge_slice_state** %3, align 8
  %12 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %13 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %16 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %15, i32 0, i32 3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %19 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %18, i32 0, i32 2
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  %20 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %21 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %20, i32 0, i32 1
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  %25 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %24, align 8
  %26 = icmp ne %struct.mxge_slice_state* %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %29 = call i32 @mxge_clean_rx_done(%struct.mxge_slice_state* %28)
  %30 = call i64 @be32toh(i32 3)
  %31 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %32 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  store i64 %30, i64* %33, align 8
  br label %246

34:                                               ; preds = %1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %246

40:                                               ; preds = %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  %51 = load i64*, i64** %50, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* @mxge_deassert_wait, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %48
  br label %61

58:                                               ; preds = %40
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %115, %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @be32toh(i32 %65)
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %97, %62
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %73, %67
  %85 = phi i1 [ true, %67 ], [ %83, %73 ]
  br i1 %85, label %86, label %104

86:                                               ; preds = %84
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %94 = load i64, i64* %8, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @mxge_tx_done(%struct.mxge_slice_state* %93, i32 %95)
  br label %97

97:                                               ; preds = %92, %86
  %98 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %99 = call i32 @mxge_clean_rx_done(%struct.mxge_slice_state* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @be32toh(i32 %102)
  store i64 %103, i64* %8, align 8
  br label %67

104:                                              ; preds = %84
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i64, i64* @mxge_deassert_wait, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (...) @wmb()
  br label %114

114:                                              ; preds = %112, %109, %104
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load volatile i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %62, label %120

120:                                              ; preds = %115
  %121 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 6
  %124 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %123, align 8
  %125 = icmp eq %struct.mxge_slice_state* %121, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %126, %120
  %132 = phi i1 [ false, %120 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = call i64 @__predict_false(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %231

136:                                              ; preds = %131
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %185

144:                                              ; preds = %136
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %144
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @LINK_STATE_UP, align 4
  %159 = call i32 @if_link_state_change(i32 %157, i32 %158)
  %160 = load i64, i64* @mxge_verbose, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %167

167:                                              ; preds = %162, %154
  br label %182

168:                                              ; preds = %144
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @LINK_STATE_DOWN, align 4
  %173 = call i32 @if_link_state_change(i32 %171, i32 %172)
  %174 = load i64, i64* @mxge_verbose, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %168
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @device_printf(i32 %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %181

181:                                              ; preds = %176, %168
  br label %182

182:                                              ; preds = %181, %167
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %136
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @be32toh(i32 %191)
  %193 = icmp ne i64 %188, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %185
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @be32toh(i32 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = call i32 (i32, i8*, ...) @device_printf(i32 %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %206)
  br label %208

208:                                              ; preds = %194, %185
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %208
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %216
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  store i64 0, i64* %224, align 8
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @LINK_STATE_DOWN, align 4
  %229 = call i32 @if_link_state_change(i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %213, %208
  br label %231

231:                                              ; preds = %230, %131
  %232 = load i32, i32* %9, align 4
  %233 = and i32 %232, 1
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = call i64 @be32toh(i32 3)
  %237 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %238 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %237, i32 0, i32 0
  %239 = load i64*, i64** %238, align 8
  store i64 %236, i64* %239, align 8
  br label %240

240:                                              ; preds = %235, %231
  %241 = call i64 @be32toh(i32 3)
  %242 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %3, align 8
  %243 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 1
  store i64 %241, i64* %245, align 8
  br label %246

246:                                              ; preds = %240, %39, %27
  ret void
}

declare dso_local i32 @mxge_clean_rx_done(%struct.mxge_slice_state*) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i32 @mxge_tx_done(%struct.mxge_slice_state*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

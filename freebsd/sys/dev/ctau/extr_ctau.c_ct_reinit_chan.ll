; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_reinit_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_reinit_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@CLK_LINE = common dso_local global i64 0, align 8
@M_ASYNC = common dso_local global i64 0, align 8
@M_HDLC = common dso_local global i64 0, align 8
@CFG_B = common dso_local global i32 0, align 4
@M_E1 = common dso_local global i64 0, align 8
@CFG_C = common dso_local global i32 0, align 4
@MD2_ENCOD_NRZ = common dso_local global i8* null, align 8
@BCR2_INVTXC1 = common dso_local global i32 0, align 4
@BCR2_INVRXC1 = common dso_local global i32 0, align 4
@BCR2_INVTXC0 = common dso_local global i32 0, align 4
@BCR2_INVRXC0 = common dso_local global i32 0, align 4
@M_G703 = common dso_local global i64 0, align 8
@MD2_ENCOD_NRZI = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_reinit_chan(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CLK_LINE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @M_ASYNC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %15
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @M_ASYNC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  store i32 9600, i32* %38, align 8
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @M_HDLC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 64000, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %239 [
    i32 130, label %55
    i32 131, label %64
    i32 128, label %168
    i32 129, label %177
  ]

55:                                               ; preds = %51
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CFG_B, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %239

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %51, %63
  %65 = load i64, i64* @M_E1, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* @CLK_LINE, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %64
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %4, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CFG_C, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = xor i64 %91, -1
  %93 = load i64, i64* %4, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %87, %76
  br label %101

96:                                               ; preds = %64
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %4, align 8
  br label %101

101:                                              ; preds = %96, %95
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i64, i64* %4, align 8
  %109 = and i64 %108, -65537
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 8
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %129, %110
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 32
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i64, i64* %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = ashr i64 %117, %119
  %121 = and i64 %120, 1
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 64000
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %123, %116
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %113

132:                                              ; preds = %113
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %135, 1000
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 8
  %140 = load i8*, i8** @MD2_ENCOD_NRZ, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i8* %140, i8** %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %132
  %150 = load i32, i32* @BCR2_INVTXC1, align 4
  %151 = load i32, i32* @BCR2_INVRXC1, align 4
  %152 = or i32 %150, %151
  %153 = xor i32 %152, -1
  br label %159

154:                                              ; preds = %132
  %155 = load i32, i32* @BCR2_INVTXC0, align 4
  %156 = load i32, i32* @BCR2_INVRXC0, align 4
  %157 = or i32 %155, %156
  %158 = xor i32 %157, -1
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i32 [ %153, %149 ], [ %158, %154 ]
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %160
  store i32 %167, i32* %165, align 8
  br label %239

168:                                              ; preds = %51
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @CFG_B, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %239

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %51, %176
  %178 = load i64, i64* @M_G703, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* @CLK_LINE, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i64 %181, i64* %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = mul nsw i64 %189, 1000
  %191 = trunc i64 %190 to i32
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** @MD2_ENCOD_NRZ, align 8
  %200 = icmp ne i8* %198, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %177
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** @MD2_ENCOD_NRZI, align 8
  %208 = icmp ne i8* %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load i8*, i8** @MD2_ENCOD_NRZ, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  store i8* %210, i8** %214, align 8
  br label %215

215:                                              ; preds = %209, %201, %177
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i32, i32* @BCR2_INVTXC1, align 4
  %222 = load i32, i32* @BCR2_INVRXC1, align 4
  %223 = or i32 %221, %222
  %224 = xor i32 %223, -1
  br label %230

225:                                              ; preds = %215
  %226 = load i32, i32* @BCR2_INVTXC0, align 4
  %227 = load i32, i32* @BCR2_INVRXC0, align 4
  %228 = or i32 %226, %227
  %229 = xor i32 %228, -1
  br label %230

230:                                              ; preds = %225, %220
  %231 = phi i32 [ %224, %220 ], [ %229, %225 ]
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 4
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, %231
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %51, %230, %175, %159, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

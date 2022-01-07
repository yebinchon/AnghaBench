; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_red_drops.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_red_drops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dn_queue = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.dn_fsk* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dn_fsk = type { i64, i32*, i64, i64, i8*, i8*, i32, %struct.TYPE_5__, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@DN_QSIZE_BYTES = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DN_IS_ECN = common dso_local global i32 0, align 4
@DN_IS_GENTLE_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_queue*, i32)* @red_drops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_drops(%struct.dn_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_fsk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %13 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %12, i32 0, i32 5
  %14 = load %struct.dn_fsk*, %struct.dn_fsk** %13, align 8
  store %struct.dn_fsk* %14, %struct.dn_fsk** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %16 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DN_QSIZE_BYTES, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %24 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %29 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i64 [ %26, %22 ], [ %31, %27 ]
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @SCALE(i32 %38)
  %40 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %41 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %46 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @SCALE_MUL(i32 %44, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %53 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %95

56:                                               ; preds = %32
  %57 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %58 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), align 4
  %63 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %64 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %68 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @div64(i32 %66, i32 %69)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %74 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %61
  %78 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %79 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %82 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @SCALE_MUL(i32 %80, i32 %86)
  br label %89

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88, %77
  %90 = phi i8* [ %87, %77 ], [ null, %88 ]
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %93 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %56
  br label %95

95:                                               ; preds = %94, %36
  %96 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %97 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %101 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %106 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %105, i32 0, i32 2
  store i32 -1, i32* %106, align 8
  store i32 0, i32* %3, align 4
  br label %238

107:                                              ; preds = %95
  %108 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %109 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %113 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %111, %114
  br i1 %115, label %116, label %153

116:                                              ; preds = %107
  %117 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %118 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @DN_IS_ECN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %238

125:                                              ; preds = %116
  %126 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %127 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @DN_IS_GENTLE_RED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %125
  %134 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %135 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %139 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @SCALE_MUL(i32 %137, i32 %140)
  %142 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %143 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = ptrtoint i8* %141 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %7, align 4
  br label %152

149:                                              ; preds = %125
  %150 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %151 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %150, i32 0, i32 2
  store i32 -1, i32* %151, align 8
  store i32 1, i32* %3, align 4
  br label %238

152:                                              ; preds = %133
  br label %188

153:                                              ; preds = %107
  %154 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %155 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %159 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %153
  %163 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %164 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DN_IS_ECN, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i32 1, i32* %3, align 4
  br label %238

171:                                              ; preds = %162
  %172 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %173 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %177 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @SCALE_MUL(i32 %175, i32 %178)
  %180 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %181 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  %183 = ptrtoint i8* %179 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %171, %153
  br label %188

188:                                              ; preds = %187, %152
  %189 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %190 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @DN_QSIZE_BYTES, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %188
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %5, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load %struct.dn_fsk*, %struct.dn_fsk** %6, align 8
  %201 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @div64(i32 %199, i32 %202)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %196, %188
  %206 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %207 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = call i32 (...) @random()
  %213 = and i32 %212, 65535
  %214 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %215 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  br label %237

216:                                              ; preds = %205
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %219 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @SCALE(i32 %220)
  %222 = call i8* @SCALE_MUL(i32 %217, i32 %221)
  %223 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %224 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = icmp ugt i8* %222, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %216
  %230 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %231 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %230, i32 0, i32 2
  store i32 0, i32* %231, align 8
  %232 = call i32 (...) @random()
  %233 = and i32 %232, 65535
  %234 = load %struct.dn_queue*, %struct.dn_queue** %4, align 8
  %235 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  store i32 1, i32* %3, align 4
  br label %238

236:                                              ; preds = %216
  br label %237

237:                                              ; preds = %236, %211
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %237, %229, %170, %149, %124, %104
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @SCALE(i32) #1

declare dso_local i8* @SCALE_MUL(i32, i32) #1

declare dso_local i8* @div64(i32, i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

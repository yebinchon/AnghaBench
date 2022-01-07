; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c___bbr_get_bw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c___bbr_get_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32 }

@BBR_STATE_STARTUP = common dso_local global i64 0, align 8
@BBR_SRTT = common dso_local global i32 0, align 4
@bbr_min_measurements_req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*)* @__bbr_get_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bbr_get_bw(%struct.tcp_bbr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %9 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BBR_STATE_STARTUP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %15 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  %17 = call i64 @get_filter_value_small(i32* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, -1
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %55, %24
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i64 @bbr_initial_cwnd(%struct.tcp_bbr* %26, %struct.TYPE_4__* %29)
  %31 = trunc i64 %30 to i32
  %32 = mul nsw i32 %31, 1000000
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %25
  br label %65

48:                                               ; preds = %21, %13
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %50 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %57 = load i32, i32* @BBR_SRTT, align 4
  %58 = call i32 @bbr_get_rtt(%struct.tcp_bbr* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %25

59:                                               ; preds = %48
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %47
  br label %67

66:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i64 @bbr_initial_cwnd(%struct.tcp_bbr* %77, %struct.TYPE_4__* %80)
  %82 = icmp sgt i64 %76, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %85 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %72, %67
  %87 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %88 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %93 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %91, %86
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %165

101:                                              ; preds = %98
  %102 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %103 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @bbr_min_measurements_req, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %110 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %165

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %220, %113
  %115 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %116 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 6
  %118 = call i64 @get_filter_value_small(i32* %117)
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = icmp ult i32 %123, -1
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %127 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %128 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = call i64 @bbr_initial_cwnd(%struct.tcp_bbr* %126, %struct.TYPE_4__* %129)
  %131 = trunc i64 %130 to i32
  %132 = mul nsw i32 %131, 1000000
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %4, align 4
  %135 = sdiv i32 %134, %133
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %138 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %125
  %143 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %144 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %142, %125
  br label %153

148:                                              ; preds = %122, %114
  %149 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %150 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %148, %147
  %154 = load i32, i32* %4, align 4
  %155 = icmp slt i32 %154, 1
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %233

163:                                              ; preds = %157
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %233

165:                                              ; preds = %108, %98
  %166 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %167 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %172 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %4, align 4
  br label %196

175:                                              ; preds = %165
  %176 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %177 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %182 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %187 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %4, align 4
  br label %195

190:                                              ; preds = %180, %175
  %191 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %192 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 5
  %194 = call i32 @get_filter_value(i32* %193)
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %190, %185
  br label %196

196:                                              ; preds = %195, %170
  %197 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %198 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %197, i32 0, i32 3
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %196
  %204 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %205 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %210 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %209, i32 0, i32 3
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @uqmin(i32 %214, i32 %215)
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %208, %203, %196
  %218 = load i32, i32* %4, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %114

221:                                              ; preds = %217
  %222 = load i32, i32* %4, align 4
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 1, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %221
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i32, i32* %5, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %229, %225
  %232 = load i32, i32* %4, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %231, %163, %161
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i64 @get_filter_value_small(i32*) #1

declare dso_local i64 @bbr_initial_cwnd(%struct.tcp_bbr*, %struct.TYPE_4__*) #1

declare dso_local i32 @bbr_get_rtt(%struct.tcp_bbr*, i32) #1

declare dso_local i32 @get_filter_value(i32*) #1

declare dso_local i32 @uqmin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

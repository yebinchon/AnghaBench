; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_measurement.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_google_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.bbr_sendmap = type { i32, i32, i32, i32*, i32, i64, i64, i64 }

@USECS_IN_SECOND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32)* @bbr_google_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_google_measurement(%struct.tcp_bbr* %0, %struct.bbr_sendmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store %struct.bbr_sendmap* %1, %struct.bbr_sendmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %215

21:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %22 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %27 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @TSTMP_GT(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %33 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %37 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  br label %41

40:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %47 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i64, i64* @USECS_IN_SECOND, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %60 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %41
  %65 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %65, i32 99, i32 %66, i32 %67, i32 %68, i32 %69, i32 %73, i32 0, i32 0, i32 0, i32 0)
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %64, %41
  %76 = load i32, i32* %10, align 4
  %77 = ashr i32 %76, 32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %81 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 4
  %83 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %84 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %179

87:                                               ; preds = %75
  %88 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %89 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %92 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %99 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @TSTMP_GT(i32 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %179

103:                                              ; preds = %87
  %104 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %105 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %15, align 4
  %108 = load i64, i64* @USECS_IN_SECOND, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %15, align 4
  %111 = mul nsw i32 %110, %109
  store i32 %111, i32* %15, align 4
  %112 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %113 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %116 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %123 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %121, %124
  store i32 %125, i32* %16, align 4
  %126 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %127 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sdiv i32 %134, %133
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %103
  %140 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %10, align 4
  %145 = ashr i32 %144, 32
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %148 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = ashr i32 %150, 32
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %140, i32 6, i32 %141, i32 %142, i32 %143, i32 %145, i32 %146, i32 %149, i32 0, i32 %151, i32 %152)
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %139, %103
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %155
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %162 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %160, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %173 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %167, i32 99, i32 %168, i32 %169, i32 %170, i32 %171, i32 %175, i32 0, i32 0, i32 0, i32 0)
  store i32 1, i32* %14, align 4
  br label %178

177:                                              ; preds = %159, %155
  store i32 0, i32* %14, align 4
  br label %178

178:                                              ; preds = %177, %166
  br label %179

179:                                              ; preds = %178, %87, %75
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %182 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 3
  store i32 %180, i32* %183, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %214

186:                                              ; preds = %179
  %187 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %188 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %194 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 4
  %196 = call i32 @get_filter_value(i32* %195)
  %197 = icmp sgt i32 %192, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %191, %186
  %199 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @tcp_bbr_commit_bw(%struct.tcp_bbr* %199, i32 %200)
  %202 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %207 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %211 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @bbr_log_type_bbrupd(%struct.tcp_bbr* %202, i32 10, i32 %203, i32 %204, i32 %205, i32 0, i32 0, i32 0, i32 0, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %198, %191, %179
  br label %215

215:                                              ; preds = %214, %4
  ret void
}

declare dso_local i64 @TSTMP_GT(i32, i32) #1

declare dso_local i32 @bbr_log_type_bbrupd(%struct.tcp_bbr*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_filter_value(i32*) #1

declare dso_local i32 @tcp_bbr_commit_bw(%struct.tcp_bbr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

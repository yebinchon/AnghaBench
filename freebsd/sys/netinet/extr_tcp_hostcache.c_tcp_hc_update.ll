; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.in_conninfo = type { i32 }
%struct.hc_metrics_lite = type { i64, i64, i32, i64, i64, i64 }
%struct.hc_metrics = type { i64, i64, i32, i64, i64, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@V_tcp_use_hostcache = common dso_local global i32 0, align 4
@V_tcp_hostcache = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@tcps_cachedrtt = common dso_local global i32 0, align 4
@tcps_cachedrttvar = common dso_local global i32 0, align 4
@tcps_cachedssthresh = common dso_local global i32 0, align 4
@rmx_q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_hc_update(%struct.in_conninfo* %0, %struct.hc_metrics_lite* %1) #0 {
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca %struct.hc_metrics_lite*, align 8
  %5 = alloca %struct.hc_metrics*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %3, align 8
  store %struct.hc_metrics_lite* %1, %struct.hc_metrics_lite** %4, align 8
  %6 = load i32, i32* @V_tcp_use_hostcache, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %237

9:                                                ; preds = %2
  %10 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %11 = call %struct.hc_metrics* @tcp_hc_lookup(%struct.in_conninfo* %10)
  store %struct.hc_metrics* %11, %struct.hc_metrics** %5, align 8
  %12 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %13 = icmp eq %struct.hc_metrics* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %16 = call %struct.hc_metrics* @tcp_hc_insert(%struct.in_conninfo* %15)
  store %struct.hc_metrics* %16, %struct.hc_metrics** %5, align 8
  %17 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %18 = icmp eq %struct.hc_metrics* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %237

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %9
  %22 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %23 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_tcp_hostcache, i32 0, i32 0), align 4
  %27 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %28 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %30 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %21
  %34 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %35 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %40 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %43 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %58

44:                                               ; preds = %33
  %45 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %46 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %50 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %48, %52
  %54 = sdiv i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %57 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %44, %38
  %59 = load i32, i32* @tcps_cachedrtt, align 4
  %60 = call i32 @TCPSTAT_INC(i32 %59)
  br label %61

61:                                               ; preds = %58, %21
  %62 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %63 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %68 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %73 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %76 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %91

77:                                               ; preds = %66
  %78 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %79 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %83 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = add nsw i32 %81, %85
  %87 = sdiv i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %90 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %77, %71
  %92 = load i32, i32* @tcps_cachedrttvar, align 4
  %93 = call i32 @TCPSTAT_INC(i32 %92)
  br label %94

94:                                               ; preds = %91, %61
  %95 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %96 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  %100 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %101 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %106 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %109 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %121

110:                                              ; preds = %99
  %111 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %112 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %115 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %113, %116
  %118 = sdiv i32 %117, 2
  %119 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %120 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %110, %104
  %122 = load i32, i32* @tcps_cachedssthresh, align 4
  %123 = call i32 @TCPSTAT_INC(i32 %122)
  br label %124

124:                                              ; preds = %121, %94
  %125 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %126 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %124
  %130 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %131 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %136 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %139 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  br label %154

140:                                              ; preds = %129
  %141 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %142 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %146 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = add nsw i32 %144, %148
  %150 = sdiv i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %153 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %140, %134
  br label %155

155:                                              ; preds = %154, %124
  %156 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %157 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %162 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %167 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %170 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  br label %185

171:                                              ; preds = %160
  %172 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %173 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %177 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = add nsw i32 %175, %179
  %181 = sdiv i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %184 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %183, i32 0, i32 4
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %171, %165
  br label %186

186:                                              ; preds = %185, %155
  %187 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %188 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %186
  %192 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %193 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %198 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %201 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %200, i32 0, i32 5
  store i64 %199, i64* %201, align 8
  br label %216

202:                                              ; preds = %191
  %203 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %204 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.hc_metrics_lite*, %struct.hc_metrics_lite** %4, align 8
  %208 = getelementptr inbounds %struct.hc_metrics_lite, %struct.hc_metrics_lite* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = add nsw i32 %206, %210
  %212 = sdiv i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %215 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %214, i32 0, i32 5
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %202, %196
  br label %217

217:                                              ; preds = %216, %186
  %218 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %219 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %218, i32 0, i32 6
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %223 = load i32, i32* @rmx_q, align 4
  %224 = call i32 @TAILQ_REMOVE(i32* %221, %struct.hc_metrics* %222, i32 %223)
  %225 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %226 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %225, i32 0, i32 6
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %230 = load i32, i32* @rmx_q, align 4
  %231 = call i32 @TAILQ_INSERT_HEAD(i32* %228, %struct.hc_metrics* %229, i32 %230)
  %232 = load %struct.hc_metrics*, %struct.hc_metrics** %5, align 8
  %233 = getelementptr inbounds %struct.hc_metrics, %struct.hc_metrics* %232, i32 0, i32 6
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = call i32 @THC_UNLOCK(i32* %235)
  br label %237

237:                                              ; preds = %217, %19, %8
  ret void
}

declare dso_local %struct.hc_metrics* @tcp_hc_lookup(%struct.in_conninfo*) #1

declare dso_local %struct.hc_metrics* @tcp_hc_insert(%struct.in_conninfo*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.hc_metrics*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.hc_metrics*, i32) #1

declare dso_local i32 @THC_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

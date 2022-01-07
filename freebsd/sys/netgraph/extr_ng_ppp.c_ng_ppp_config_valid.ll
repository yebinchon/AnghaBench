; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_config_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_config_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_ppp_node_conf = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@NG_PPP_MAX_LINKS = common dso_local global i32 0, align 4
@MP_MIN_LINK_MRU = common dso_local global i64 0, align 8
@NG_PPP_MAX_BANDWIDTH = common dso_local global i64 0, align 8
@NG_PPP_MAX_LATENCY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ng_ppp_node_conf*)* @ng_ppp_config_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_config_valid(i32 %0, %struct.ng_ppp_node_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ng_ppp_node_conf*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ng_ppp_node_conf* %1, %struct.ng_ppp_node_conf** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_11__* @NG_NODE_PRIVATE(i32 %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %97, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %100

15:                                               ; preds = %11
  %16 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %17 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %25, %15
  %39 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %40 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %97

49:                                               ; preds = %38
  %50 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %51 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MP_MIN_LINK_MRU, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %169

61:                                               ; preds = %49
  %62 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %63 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %169

72:                                               ; preds = %61
  %73 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %74 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NG_PPP_MAX_BANDWIDTH, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %169

84:                                               ; preds = %72
  %85 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %86 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @NG_PPP_MAX_LATENCY, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %169

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %48
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %11

100:                                              ; preds = %11
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %158

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %158

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %117 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = icmp ne i32 %115, %122
  br i1 %123, label %156, label %124

124:                                              ; preds = %108
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %133 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = icmp ne i32 %131, %138
  br i1 %139, label %156, label %140

140:                                              ; preds = %124
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %149 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = icmp ne i32 %147, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %140, %124, %108
  store i32 0, i32* %3, align 4
  br label %169

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157, %105, %100
  %159 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %5, align 8
  %160 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %8, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %169

168:                                              ; preds = %164, %158
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %167, %156, %95, %83, %71, %60
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_11__* @NG_NODE_PRIVATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

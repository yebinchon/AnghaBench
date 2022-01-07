; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_rx_equal_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_rx_equal_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_lm_context = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_9__*, i32)* }
%struct.al_serdes_adv_rx_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"score | dcgain | dfe3db | dfegain | tap1 | tap2 | tap3 | tap4 | low freq | high freq\0A\00", align 1
@AL_ETH_LM_MAX_DCGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"serdes rx equalization failed on error\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%6d|%8x|%8x|%9x|%6x|%6x|%6x|%6x|%10x|%10x|\0A\00", align 1
@AL_ETH_LM_EQ_ITERATIONS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"-------------------- best dcgain %d ------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_lm_context*)* @al_eth_rx_equal_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_rx_equal_run(%struct.al_eth_lm_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_eth_lm_context*, align 8
  %4 = alloca %struct.al_serdes_adv_rx_params, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.al_eth_lm_context* %0, %struct.al_eth_lm_context** %3, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 9
  store i32 %10, i32* %11, align 4
  %12 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %13 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)** %15, align 8
  %17 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %18 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %21 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %16(%struct.TYPE_9__* %19, i32 %22, %struct.al_serdes_adv_rx_params* %4)
  %24 = call i32 (i8*, ...) @lm_debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %97, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AL_ETH_LM_MAX_DCGAIN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %25
  %30 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %31 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %33, align 8
  %35 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %36 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 %34(%struct.TYPE_9__* %37, i32 %38)
  %40 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %41 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %43, align 8
  %45 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %46 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %49 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %44(%struct.TYPE_9__* %47, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %29
  %55 = call i32 @al_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %193

57:                                               ; preds = %29
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %66 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)** %68, align 8
  %70 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %71 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %74 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %69(%struct.TYPE_9__* %72, i32 %75, %struct.al_serdes_adv_rx_params* %4)
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @lm_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %91, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %64
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %25

100:                                              ; preds = %25
  %101 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %102 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %104, align 8
  %106 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %107 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %106, i32 0, i32 1
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 %105(%struct.TYPE_9__* %108, i32 %109)
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %152, %100
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @AL_ETH_LM_EQ_ITERATIONS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %111
  %116 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %117 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %119, align 8
  %121 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %122 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %125 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 %120(%struct.TYPE_9__* %123, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %115
  %131 = call i32 @al_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %2, align 4
  br label %193

133:                                              ; preds = %115
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %8, align 4
  %139 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %140 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %139, i32 0, i32 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)** %142, align 8
  %144 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %145 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %144, i32 0, i32 1
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %148 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 %143(%struct.TYPE_9__* %146, i32 %149, %struct.al_serdes_adv_rx_params* %4)
  br label %151

151:                                              ; preds = %137, %133
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %111

155:                                              ; preds = %111
  %156 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 10
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @TRUE, align 4
  %158 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 9
  store i32 %157, i32* %158, align 4
  %159 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %160 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_9__*, i32, %struct.al_serdes_adv_rx_params*)** %162, align 8
  %164 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %165 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %168 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 %163(%struct.TYPE_9__* %166, i32 %169, %struct.al_serdes_adv_rx_params* %4)
  %171 = load i32, i32* %6, align 4
  %172 = call i32 (i8*, ...) @lm_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 8
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %4, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i8*, ...) @lm_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %175, i32 %177, i32 %179, i32 %181, i32 %183, i32 %185, i32 %187, i32 %189, i32 %191)
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %155, %130, %54
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @lm_debug(i8*, ...) #1

declare dso_local i32 @al_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

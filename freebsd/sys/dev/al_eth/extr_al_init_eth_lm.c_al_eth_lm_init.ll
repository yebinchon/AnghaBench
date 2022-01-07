; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_lm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_lm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_lm_context = type { i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_2__, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.al_eth_lm_init_params = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@AL_ETH_AN_TECH_10GBASE_KR = common dso_local global i32 0, align 4
@AL_ETH_LM_MODE_DISCONNECTED = common dso_local global i32 0, align 4
@AL_ETH_LM_LINK_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_lm_init(%struct.al_eth_lm_context* %0, %struct.al_eth_lm_init_params* %1) #0 {
  %3 = alloca %struct.al_eth_lm_context*, align 8
  %4 = alloca %struct.al_eth_lm_init_params*, align 8
  store %struct.al_eth_lm_context* %0, %struct.al_eth_lm_context** %3, align 8
  store %struct.al_eth_lm_init_params* %1, %struct.al_eth_lm_init_params** %4, align 8
  %5 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %6 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %5, i32 0, i32 27
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %9 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %8, i32 0, i32 34
  store i32 %7, i32* %9, align 8
  %10 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %11 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %10, i32 0, i32 26
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %14 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %13, i32 0, i32 33
  store i32 %12, i32* %14, align 4
  %15 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %16 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %15, i32 0, i32 25
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %19 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %18, i32 0, i32 32
  store i32 %17, i32* %19, align 8
  %20 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %21 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %24 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %26 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %25, i32 0, i32 24
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %29 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %28, i32 0, i32 31
  store i32 %27, i32* %29, align 4
  %30 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %31 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %30, i32 0, i32 23
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %34 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %33, i32 0, i32 30
  store i32 %32, i32* %34, align 8
  %35 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %36 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %39 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %41 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %40, i32 0, i32 22
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %44 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %43, i32 0, i32 29
  store i32 %42, i32* %44, align 4
  %45 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %46 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %45, i32 0, i32 21
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %49 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %48, i32 0, i32 28
  store i32 %47, i32* %49, align 8
  %50 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %51 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %50, i32 0, i32 20
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %54 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %53, i32 0, i32 27
  store i32 %52, i32* %54, align 4
  %55 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %56 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %55, i32 0, i32 19
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %59 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %58, i32 0, i32 26
  store i32 %57, i32* %59, align 8
  %60 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %61 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %60, i32 0, i32 18
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %64 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %63, i32 0, i32 25
  store i32 %62, i32* %64, align 4
  %65 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %66 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %65, i32 0, i32 17
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %69 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %68, i32 0, i32 24
  store i32 %67, i32* %69, align 8
  %70 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %71 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %74 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %73, i32 0, i32 23
  store i32 %72, i32* %74, align 4
  %75 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %76 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %75, i32 0, i32 15
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %79 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %78, i32 0, i32 22
  store i32 %77, i32* %79, align 8
  %80 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %81 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %84 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %83, i32 0, i32 21
  store i32 %82, i32* %84, align 4
  %85 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %86 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %89 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %88, i32 0, i32 20
  store i32 %87, i32* %89, align 8
  %90 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %91 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %90, i32 0, i32 12
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %94 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %93, i32 0, i32 17
  store i32* %92, i32** %94, align 8
  %95 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %96 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %95, i32 0, i32 11
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %99 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %98, i32 0, i32 16
  store i32* %97, i32** %99, align 8
  %100 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %101 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %104 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %103, i32 0, i32 19
  store i32 %102, i32* %104, align 4
  %105 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %106 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %109 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %108, i32 0, i32 18
  store i32 %107, i32* %109, align 8
  %110 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %111 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @FALSE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %2
  %116 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %117 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %116, i32 0, i32 17
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br label %120

120:                                              ; preds = %115, %2
  %121 = phi i1 [ true, %2 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @al_assert(i32 %122)
  %124 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %125 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FALSE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %120
  %130 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %131 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %130, i32 0, i32 16
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br label %134

134:                                              ; preds = %129, %120
  %135 = phi i1 [ true, %120 ], [ %133, %129 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @al_assert(i32 %136)
  %138 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %139 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %142 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  %144 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %145 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 5
  store i64 0, i64* %146, align 8
  %147 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %148 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  store i64 0, i64* %149, align 8
  %150 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %151 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* @AL_ETH_AN_TECH_10GBASE_KR, align 4
  %154 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %155 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 8
  %157 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %158 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %161 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @AL_ETH_LM_MODE_DISCONNECTED, align 4
  %164 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %165 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %164, i32 0, i32 14
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* @FALSE, align 8
  %167 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %168 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %167, i32 0, i32 13
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* @FALSE, align 8
  %170 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %171 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %170, i32 0, i32 12
  store i64 %169, i64* %171, align 8
  %172 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %173 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  %174 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %175 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %174, i32 0, i32 3
  store i32 1, i32* %175, align 4
  %176 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %177 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %180 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %179, i32 0, i32 11
  store i32 %178, i32* %180, align 4
  %181 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %182 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %185 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 8
  %186 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %187 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %190 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %189, i32 0, i32 9
  store i32 %188, i32* %190, align 4
  %191 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %192 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %195 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %194, i32 0, i32 8
  store i32 %193, i32* %195, align 8
  %196 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %197 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %200 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 4
  %201 = load %struct.al_eth_lm_init_params*, %struct.al_eth_lm_init_params** %4, align 8
  %202 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %205 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 8
  %206 = load i64, i64* @FALSE, align 8
  %207 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %208 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %207, i32 0, i32 5
  store i64 %206, i64* %208, align 8
  %209 = load i32, i32* @AL_ETH_LM_LINK_DOWN, align 4
  %210 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %3, align 8
  %211 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

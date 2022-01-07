; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_cq.c_mlx4_en_activate_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_cq.c_mlx4_en_activate_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i64, i32, %struct.TYPE_12__**, %struct.mlx4_en_cq**, %struct.mlx4_en_dev* }
%struct.TYPE_12__ = type { i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_16__*, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.mlx4_en_cq = type { i64, i32, i64, %struct.TYPE_11__, %struct.TYPE_17__, %struct.TYPE_14__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i64*, i64* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i64* }

@RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed assigning an EQ to CQ vector %d\0A\00", align 1
@mlx4_en_tx_irq = common dso_local global i32 0, align 4
@mlx4_en_rx_irq = common dso_local global i32 0, align 4
@mlx4_en_cq_event = common dso_local global i32 0, align 4
@mlx4_en_poll_tx_cq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_en_cq*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_cq* %1, %struct.mlx4_en_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 4
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  store %struct.mlx4_en_dev* %15, %struct.mlx4_en_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 3
  store i64* %30, i64** %33, align 8
  %34 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  store i64* %39, i64** %42, align 8
  %43 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  store i64 0, i64* %50, align 8
  %51 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memset(i32 %53, i32 0, i32 %56)
  %58 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %105

63:                                               ; preds = %3
  %64 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mlx4_is_eq_vector_valid(%struct.TYPE_16__* %66, i64 %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %104, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %76, %82
  %84 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %92, i32 0, i32 1
  %94 = call i32 @mlx4_assign_eq(%struct.TYPE_16__* %88, i64 %91, i32* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %75
  %98 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %99 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @mlx4_err(%struct.mlx4_en_dev* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %204

103:                                              ; preds = %75
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %63
  br label %123

105:                                              ; preds = %3
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = srem i32 %106, %109
  store i32 %110, i32* %7, align 4
  %111 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %111, i32 0, i32 3
  %113 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %113, i64 %115
  %117 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %116, align 8
  store %struct.mlx4_en_cq* %117, %struct.mlx4_en_cq** %12, align 8
  %118 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %12, align 8
  %119 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %105, %104
  %124 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %123
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %130, align 8
  %132 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %133 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %131, i64 %134
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %140 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %128, %123
  %142 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %143 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %142, i32 0, i32 0
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %146 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %152 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %151, i32 0, i32 1
  %153 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %154 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %159 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %158, i32 0, i32 4
  %160 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @mlx4_cq_alloc(%struct.TYPE_16__* %144, i32 %147, i32* %150, i32* %152, i32 %157, %struct.TYPE_17__* %159, i32 %162, i32 0, i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %141
  br label %204

168:                                              ; preds = %141
  %169 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %170 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* @mlx4_en_tx_irq, align 4
  br label %177

175:                                              ; preds = %168
  %176 = load i32, i32* @mlx4_en_rx_irq, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  %179 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %180 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* @mlx4_en_cq_event, align 4
  %183 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %184 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %187 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %177
  %191 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %192 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %191, i32 0, i32 3
  %193 = call i32 @init_timer(%struct.TYPE_11__* %192)
  %194 = load i32, i32* @mlx4_en_poll_tx_cq, align 4
  %195 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 8
  %198 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %199 = ptrtoint %struct.mlx4_en_cq* %198 to i64
  %200 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %201 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  store i64 %199, i64* %202, align 8
  br label %203

203:                                              ; preds = %190, %177
  store i32 0, i32* %4, align 4
  br label %225

204:                                              ; preds = %167, %97
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %209 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %208, i32 0, i32 0
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %212 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @mlx4_release_eq(%struct.TYPE_16__* %210, i32 %213)
  br label %215

215:                                              ; preds = %207, %204
  %216 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %217 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %216, i32 0, i32 0
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %223 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %9, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %215, %203
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_is_eq_vector_valid(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @mlx4_assign_eq(%struct.TYPE_16__*, i64, i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_en_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_cq_alloc(%struct.TYPE_16__*, i32, i32*, i32*, i32, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_11__*) #1

declare dso_local i32 @mlx4_release_eq(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

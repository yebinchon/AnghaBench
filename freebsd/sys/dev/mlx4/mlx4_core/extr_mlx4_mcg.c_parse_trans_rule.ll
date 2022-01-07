; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_parse_trans_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_parse_trans_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_spec_list = type { i64, %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct._rule_hw = type { i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, i32 }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@__sw_id_hw = common dso_local global i32* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@__rule_hw_sz = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_spec_list*, %struct._rule_hw*)* @parse_trans_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_trans_rule(%struct.mlx4_dev* %0, %struct.mlx4_spec_list* %1, %struct._rule_hw* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_spec_list*, align 8
  %7 = alloca %struct._rule_hw*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_spec_list* %1, %struct.mlx4_spec_list** %6, align 8
  store %struct._rule_hw* %2, %struct._rule_hw** %7, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %9 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %10 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @mlx4_hw_rule_sz(%struct.mlx4_dev* %8, i64 %11)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %238

17:                                               ; preds = %3
  %18 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %20 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mlx4_hw_rule_sz(%struct.mlx4_dev* %19, i64 %22)
  %24 = call i32 @memset(%struct._rule_hw* %18, i32 0, i32 %23)
  %25 = load i32*, i32** @__sw_id_hw, align 8
  %26 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_be16(i32 %30)
  %32 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %33 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %35 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mlx4_hw_rule_sz(%struct.mlx4_dev* %34, i64 %37)
  %39 = ashr i32 %38, 2
  %40 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %41 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  switch i64 %44, label %228 [
    i64 134, label %45
    i64 133, label %117
    i64 131, label %146
    i64 132, label %149
    i64 130, label %178
    i64 129, label %178
    i64 128, label %207
  ]

45:                                               ; preds = %17
  %46 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %47 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32* %49, i32* %53, i32 %54)
  %56 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %57 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32* %59, i32* %63, i32 %64)
  %66 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %67 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = call i32 @memcpy(i32* %69, i32* %73, i32 %74)
  %76 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %77 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = call i32 @memcpy(i32* %79, i32* %83, i32 %84)
  %86 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %87 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %45
  %92 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %93 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %96 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %100 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %91, %45
  %103 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %104 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %108 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %111 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %115 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  br label %231

117:                                              ; preds = %17
  %118 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %119 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %123 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 4
  %125 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %126 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %130 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  store i32 %128, i32* %131, align 8
  %132 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %133 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %136 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = call i32 @memcpy(i32* %134, i32* %137, i32 16)
  %139 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %140 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %143 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = call i32 @memcpy(i32* %141, i32* %144, i32 16)
  br label %231

146:                                              ; preds = %17
  %147 = load i32, i32* @EOPNOTSUPP, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %238

149:                                              ; preds = %17
  %150 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %151 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %155 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  %157 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %158 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %162 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 8
  %164 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %165 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %169 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %172 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %176 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  br label %231

178:                                              ; preds = %17, %17
  %179 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %180 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %184 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  store i32 %182, i32* %185, align 4
  %186 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %187 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %191 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 8
  %193 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %194 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %198 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  store i32 %196, i32* %199, align 4
  %200 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %201 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %205 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  br label %231

207:                                              ; preds = %17
  %208 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %209 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @be32_to_cpu(i32 %211)
  %213 = shl i32 %212, 8
  %214 = call i8* @cpu_to_be32(i32 %213)
  %215 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %216 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  store i8* %214, i8** %217, align 8
  %218 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %219 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @be32_to_cpu(i32 %221)
  %223 = shl i32 %222, 8
  %224 = call i8* @cpu_to_be32(i32 %223)
  %225 = load %struct._rule_hw*, %struct._rule_hw** %7, align 8
  %226 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  store i8* %224, i8** %227, align 8
  br label %231

228:                                              ; preds = %17
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %4, align 4
  br label %238

231:                                              ; preds = %207, %178, %149, %117, %102
  %232 = load i32*, i32** @__rule_hw_sz, align 8
  %233 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %6, align 8
  %234 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %231, %228, %146, %14
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @mlx4_hw_rule_sz(%struct.mlx4_dev*, i64) #1

declare dso_local i32 @memset(%struct._rule_hw*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

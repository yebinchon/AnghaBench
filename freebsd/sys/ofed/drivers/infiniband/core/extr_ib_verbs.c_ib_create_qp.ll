; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, i32, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*, %struct.ib_pd*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i32, i32, i32*, %struct.ib_qp*, %struct.ib_device* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_device = type { %struct.TYPE_14__, %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*)* }
%struct.TYPE_14__ = type { i32 }
%struct.ib_pd = type { i32, %struct.ib_device* }
%struct.ib_qp_init_attr = type { i64, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.ib_device* }

@EINVAL = common dso_local global i32 0, align 4
@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @ib_create_qp(%struct.ib_pd* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %9 = icmp ne %struct.ib_pd* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 1
  %13 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %15, i32 0, i32 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.ib_device*, %struct.ib_device** %18, align 8
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi %struct.ib_device* [ %13, %10 ], [ %19, %14 ]
  store %struct.ib_device* %21, %struct.ib_device** %6, align 8
  %22 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %23 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %27, i32 0, i32 5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %32, i32 0, i32 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %38 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %44 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %36, %31, %26
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.ib_qp* @ERR_PTR(i32 %50)
  store %struct.ib_qp* %51, %struct.ib_qp** %3, align 8
  br label %207

52:                                               ; preds = %42, %20
  %53 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %54 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %53, i32 0, i32 1
  %55 = load %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*)*, %struct.ib_qp* (%struct.ib_pd*, %struct.ib_qp_init_attr*, i32*)** %54, align 8
  %56 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %57 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %58 = call %struct.ib_qp* %55(%struct.ib_pd* %56, %struct.ib_qp_init_attr* %57, i32* null)
  store %struct.ib_qp* %58, %struct.ib_qp** %7, align 8
  %59 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %60 = call i64 @IS_ERR(%struct.ib_qp* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  store %struct.ib_qp* %63, %struct.ib_qp** %3, align 8
  br label %207

64:                                               ; preds = %52
  %65 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %66 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %67 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %66, i32 0, i32 15
  store %struct.ib_device* %65, %struct.ib_device** %67, align 8
  %68 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %69 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %70 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %69, i32 0, i32 14
  store %struct.ib_qp* %68, %struct.ib_qp** %70, align 8
  %71 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %72 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %71, i32 0, i32 13
  store i32* null, i32** %72, align 8
  %73 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %74 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %77 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %79 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %82 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %81, i32 0, i32 3
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %82, align 8
  %83 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %84 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %83, i32 0, i32 12
  %85 = call i32 @atomic_set(i32* %84, i32 0)
  %86 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %87 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %86, i32 0, i32 11
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %90 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %64
  %95 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %96 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %97 = call %struct.ib_qp* @ib_create_xrc_qp(%struct.ib_qp* %95, %struct.ib_qp_init_attr* %96)
  store %struct.ib_qp* %97, %struct.ib_qp** %3, align 8
  br label %207

98:                                               ; preds = %64
  %99 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %100 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %103 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %105 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %108 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %107, i32 0, i32 9
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %110 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %98
  %115 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %116 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %115, i32 0, i32 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %116, align 8
  %117 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %118 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %117, i32 0, i32 7
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %118, align 8
  br label %152

119:                                              ; preds = %98
  %120 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %121 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %120, i32 0, i32 5
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %124 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %123, i32 0, i32 8
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %124, align 8
  %125 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %126 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %125, i32 0, i32 5
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = icmp ne %struct.TYPE_9__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %131 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %130, i32 0, i32 5
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = call i32 @atomic_inc(i32* %133)
  br label %135

135:                                              ; preds = %129, %119
  %136 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %137 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %136, i32 0, i32 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %140 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %139, i32 0, i32 7
  store %struct.TYPE_10__* %138, %struct.TYPE_10__** %140, align 8
  %141 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %142 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %141, i32 0, i32 7
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = icmp ne %struct.TYPE_10__* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %135
  %146 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %147 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %146, i32 0, i32 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = call i32 @atomic_inc(i32* %149)
  br label %151

151:                                              ; preds = %145, %135
  br label %152

152:                                              ; preds = %151, %114
  %153 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %154 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %155 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %154, i32 0, i32 6
  store %struct.ib_pd* %153, %struct.ib_pd** %155, align 8
  %156 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %157 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %156, i32 0, i32 3
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %160 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %159, i32 0, i32 5
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %160, align 8
  %161 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %162 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %161, i32 0, i32 4
  store i32* null, i32** %162, align 8
  %163 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %164 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %163, i32 0, i32 0
  %165 = call i32 @atomic_inc(i32* %164)
  %166 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %167 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %166, i32 0, i32 3
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = icmp ne %struct.TYPE_11__* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %152
  %171 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %172 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %171, i32 0, i32 3
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = call i32 @atomic_inc(i32* %174)
  br label %176

176:                                              ; preds = %170, %152
  %177 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %178 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %177, i32 0, i32 2
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = icmp ne %struct.TYPE_12__* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %183 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %182, i32 0, i32 3
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = call i32 @atomic_inc(i32* %185)
  br label %187

187:                                              ; preds = %181, %176
  %188 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %189 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %193 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @u32, align 4
  %195 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %196 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %200 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @min_t(i32 %194, i32 %198, i32 %202)
  %204 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %205 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 8
  %206 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  store %struct.ib_qp* %206, %struct.ib_qp** %3, align 8
  br label %207

207:                                              ; preds = %187, %94, %62, %48
  %208 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  ret %struct.ib_qp* %208
}

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.ib_qp* @ib_create_xrc_qp(%struct.ib_qp*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

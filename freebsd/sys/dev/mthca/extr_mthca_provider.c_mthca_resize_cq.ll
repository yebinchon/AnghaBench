; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_resize_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_provider.c_mthca_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.mthca_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mthca_cq = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.mthca_cq_buf, i64, i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.mthca_cq_buf }
%struct.TYPE_9__ = type { i32 }
%struct.mthca_cq_buf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mthca_resize_cq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CQ_RESIZE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cq*, i32, %struct.ib_udata*)* @mthca_resize_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_resize_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mthca_dev*, align 8
  %9 = alloca %struct.mthca_cq*, align 8
  %10 = alloca %struct.mthca_resize_cq, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mthca_cq_buf, align 4
  %14 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %15 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %16 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mthca_dev* @to_mdev(i32 %17)
  store %struct.mthca_dev* %18, %struct.mthca_dev** %8, align 8
  %19 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %20 = call %struct.mthca_cq* @to_mcq(%struct.ib_cq* %19)
  store %struct.mthca_cq* %20, %struct.mthca_cq** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %26 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %199

33:                                               ; preds = %23
  %34 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %35 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @roundup_pow_of_two(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %42 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %194

47:                                               ; preds = %33
  %48 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %49 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %54 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @mthca_alloc_resize_buf(%struct.mthca_dev* %53, %struct.mthca_cq* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %194

60:                                               ; preds = %52
  %61 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %62 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.mthca_cq_buf, %struct.mthca_cq_buf* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %11, align 4
  br label %79

69:                                               ; preds = %47
  %70 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %71 = call i64 @ib_copy_from_udata(%struct.mthca_resize_cq* %10, %struct.ib_udata* %70, i32 4)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %194

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.mthca_resize_cq, %struct.mthca_resize_cq* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %60
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %81 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %82 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ilog2(i32 %85)
  %87 = call i32 @mthca_RESIZE_CQ(%struct.mthca_dev* %80, i32 %83, i32 %84, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %79
  %91 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %92 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = icmp ne %struct.TYPE_10__* %93, null
  br i1 %94, label %95, label %119

95:                                               ; preds = %90
  %96 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %97 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %98 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %102 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mthca_free_cq_buf(%struct.mthca_dev* %96, %struct.mthca_cq_buf* %100, i32 %105)
  %107 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %108 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = call i32 @kfree(%struct.TYPE_10__* %109)
  %111 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %112 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %111, i32 0, i32 1
  %113 = call i32 @spin_lock_irq(i32* %112)
  %114 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %115 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %114, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %115, align 8
  %116 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %117 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock_irq(i32* %117)
  br label %119

119:                                              ; preds = %95, %90
  br label %194

120:                                              ; preds = %79
  %121 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %122 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %188

125:                                              ; preds = %120
  %126 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %127 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %126, i32 0, i32 1
  %128 = call i32 @spin_lock_irq(i32* %127)
  %129 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %130 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %129, i32 0, i32 2
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CQ_RESIZE_READY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %163

136:                                              ; preds = %125
  %137 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %138 = call i32 @mthca_cq_resize_copy_cqes(%struct.mthca_cq* %137)
  %139 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %140 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %139, i32 0, i32 4
  %141 = bitcast %struct.mthca_cq_buf* %13 to i8*
  %142 = bitcast %struct.mthca_cq_buf* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 4, i1 false)
  %143 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %144 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %14, align 4
  %147 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %148 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %147, i32 0, i32 4
  %149 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %150 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %149, i32 0, i32 2
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = bitcast %struct.mthca_cq_buf* %148 to i8*
  %154 = bitcast %struct.mthca_cq_buf* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 8 %154, i64 4, i1 false)
  %155 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %156 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %155, i32 0, i32 2
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %161 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %175

163:                                              ; preds = %125
  %164 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %165 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %164, i32 0, i32 2
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = bitcast %struct.mthca_cq_buf* %13 to i8*
  %169 = bitcast %struct.mthca_cq_buf* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 8 %169, i64 4, i1 false)
  %170 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %171 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %170, i32 0, i32 2
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %163, %136
  %176 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %177 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %176, i32 0, i32 2
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = call i32 @kfree(%struct.TYPE_10__* %178)
  %180 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %181 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %180, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %181, align 8
  %182 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %183 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %182, i32 0, i32 1
  %184 = call i32 @spin_unlock_irq(i32* %183)
  %185 = load %struct.mthca_dev*, %struct.mthca_dev** %8, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @mthca_free_cq_buf(%struct.mthca_dev* %185, %struct.mthca_cq_buf* %13, i32 %186)
  br label %193

188:                                              ; preds = %120
  %189 = load i32, i32* %6, align 4
  %190 = sub nsw i32 %189, 1
  %191 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %192 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %188, %175
  br label %194

194:                                              ; preds = %193, %119, %73, %59, %46
  %195 = load %struct.mthca_cq*, %struct.mthca_cq** %9, align 8
  %196 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %195, i32 0, i32 0
  %197 = call i32 @mutex_unlock(i32* %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %194, %30
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @mthca_alloc_resize_buf(%struct.mthca_dev*, %struct.mthca_cq*, i32) #1

declare dso_local i64 @ib_copy_from_udata(%struct.mthca_resize_cq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @mthca_RESIZE_CQ(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mthca_free_cq_buf(%struct.mthca_dev*, %struct.mthca_cq_buf*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mthca_cq_resize_copy_cqes(%struct.mthca_cq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

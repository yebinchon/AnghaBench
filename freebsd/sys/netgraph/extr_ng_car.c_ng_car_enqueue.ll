; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookinfo = type { i64, i32, i32, i32, i32, %struct.TYPE_5__, %struct.mbuf**, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@NG_CAR_QUEUE_SIZE = common dso_local global i32 0, align 4
@NG_CAR_QUEUE_MIN_TH = common dso_local global i32 0, align 4
@NG_CAR_COUNT_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hookinfo*, i32)* @ng_car_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_car_enqueue(%struct.hookinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.hookinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.hookinfo* %0, %struct.hookinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %9 = call i32 @NGI_GET_M(i32 %7, %struct.mbuf* %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @NG_FREE_ITEM(i32 %10)
  %12 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %13 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %12, i32 0, i32 4
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %16 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %19 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub i64 %17, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @NG_CAR_QUEUE_SIZE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NG_CAR_QUEUE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %37 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* @NG_CAR_QUEUE_SIZE, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %35, %30
  %44 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %45 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %50 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = call i32 @NG_FREE_M(%struct.mbuf* %54)
  %56 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %57 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  br label %128

58:                                               ; preds = %35
  %59 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %60 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %65 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %66 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %65, i32 0, i32 6
  %67 = load %struct.mbuf**, %struct.mbuf*** %66, align 8
  %68 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %69 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %67, i64 %70
  store %struct.mbuf* %64, %struct.mbuf** %71, align 8
  %72 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %73 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %77 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @NG_CAR_QUEUE_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %58
  %83 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %84 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %58
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @NG_CAR_QUEUE_MIN_TH, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @NG_CAR_QUEUE_MIN_TH, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %94 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89, %85
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %102 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @NG_CAR_COUNT_PACKETS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %110 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 128
  store i32 %112, i32* %110, align 8
  br label %124

113:                                              ; preds = %100
  %114 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %115 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %119 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  br label %124

124:                                              ; preds = %113, %108
  %125 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %126 = call i32 @ng_car_schedule(%struct.hookinfo* %125)
  br label %127

127:                                              ; preds = %124, %97
  br label %128

128:                                              ; preds = %127, %43
  %129 = load %struct.hookinfo*, %struct.hookinfo** %3, align 8
  %130 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %129, i32 0, i32 4
  %131 = call i32 @mtx_unlock(i32* %130)
  ret void
}

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @ng_car_schedule(%struct.hookinfo*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

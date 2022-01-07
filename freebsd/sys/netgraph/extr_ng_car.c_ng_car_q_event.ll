; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_q_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_q_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookinfo = type { i64, i64, i64, %struct.TYPE_5__, %struct.mbuf**, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@NG_CAR_QUEUE_SIZE = common dso_local global i64 0, align 8
@NG_CAR_COUNT_PACKETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_car_q_event(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hookinfo*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.hookinfo* @NG_HOOK_PRIVATE(i32 %12)
  store %struct.hookinfo* %13, %struct.hookinfo** %9, align 8
  %14 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %15 = call i32 @ng_car_refillhook(%struct.hookinfo* %14)
  br label %16

16:                                               ; preds = %101, %4
  %17 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %18 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %102

21:                                               ; preds = %16
  %22 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %23 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %22, i32 0, i32 4
  %24 = load %struct.mbuf**, %struct.mbuf*** %23, align 8
  %25 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %26 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %24, i64 %27
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  store %struct.mbuf* %29, %struct.mbuf** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %32 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = call i32 @NG_SEND_DATA_ONLY(i32 %30, i32 %33, %struct.mbuf* %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %40 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %21
  %45 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %46 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %51 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %55 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NG_CAR_QUEUE_SIZE, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %61 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %44
  %63 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %64 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %67 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %102

71:                                               ; preds = %62
  %72 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %73 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %72, i32 0, i32 4
  %74 = load %struct.mbuf**, %struct.mbuf*** %73, align 8
  %75 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %76 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %74, i64 %77
  %79 = load %struct.mbuf*, %struct.mbuf** %78, align 8
  store %struct.mbuf* %79, %struct.mbuf** %10, align 8
  %80 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %81 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NG_CAR_COUNT_PACKETS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %71
  %88 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %89 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 128
  store i64 %91, i64* %89, align 8
  br label %101

92:                                               ; preds = %71
  %93 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %98 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %92, %87
  br label %16

102:                                              ; preds = %70, %16
  %103 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %104 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %107 = getelementptr inbounds %struct.hookinfo, %struct.hookinfo* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.hookinfo*, %struct.hookinfo** %9, align 8
  %112 = call i32 @ng_car_schedule(%struct.hookinfo* %111)
  br label %113

113:                                              ; preds = %110, %102
  ret void
}

declare dso_local %struct.hookinfo* @NG_HOOK_PRIVATE(i32) #1

declare dso_local i32 @ng_car_refillhook(%struct.hookinfo*) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

declare dso_local i32 @ng_car_schedule(%struct.hookinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

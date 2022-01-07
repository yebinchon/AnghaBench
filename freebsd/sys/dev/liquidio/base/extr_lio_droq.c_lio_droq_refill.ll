; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_droq = type { i64, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.lio_droq_desc* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.lio_droq_desc = type { i32 }
%struct.mbuf = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lio_droq_refill(%struct.octeon_device* %0, %struct.lio_droq* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_droq*, align 8
  %5 = alloca %struct.lio_droq_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.lio_droq* %1, %struct.lio_droq** %4, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %10 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %9, i32 0, i32 6
  %11 = load %struct.lio_droq_desc*, %struct.lio_droq_desc** %10, align 8
  store %struct.lio_droq_desc* %11, %struct.lio_droq_desc** %5, align 8
  br label %12

12:                                               ; preds = %77, %2
  %13 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %14 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %20 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi i1 [ false, %12 ], [ %22, %17 ]
  br i1 %24, label %25, label %124

25:                                               ; preds = %23
  %26 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %27 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %26, i32 0, i32 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %30 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %64

36:                                               ; preds = %25
  %37 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %38 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @lio_recv_buffer_alloc(i32 %39)
  store i8* %40, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %45 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %124

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %53 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %56 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* %51, i32** %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = bitcast i8* %60 to %struct.mbuf*
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %8, align 8
  br label %77

64:                                               ; preds = %25
  %65 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %66 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %69 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to %struct.mbuf*
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %8, align 8
  br label %77

77:                                               ; preds = %64, %49
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %80 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %83 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32* %78, i32** %86, align 8
  %87 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %91 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %94 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %100 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @lio_map_ring(i32 %89, i32* %98, i32 %101)
  %103 = load %struct.lio_droq_desc*, %struct.lio_droq_desc** %5, align 8
  %104 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %105 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %103, i64 %106
  %108 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %107, i32 0, i32 0
  store i32 %102, i32* %108, align 4
  %109 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %110 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %113 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @lio_incr_index(i64 %111, i32 1, i64 %114)
  %116 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %117 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %7, align 8
  %120 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %121 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  br label %12

124:                                              ; preds = %43, %23
  %125 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %126 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.lio_droq*, %struct.lio_droq** %4, align 8
  %131 = load %struct.lio_droq_desc*, %struct.lio_droq_desc** %5, align 8
  %132 = call i64 @lio_droq_refill_pullup_descs(%struct.lio_droq* %130, %struct.lio_droq_desc* %131)
  %133 = load i64, i64* %7, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %7, align 8
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i64, i64* %7, align 8
  ret i64 %136
}

declare dso_local i8* @lio_recv_buffer_alloc(i32) #1

declare dso_local i32 @lio_map_ring(i32, i32*, i32) #1

declare dso_local i64 @lio_incr_index(i64, i32, i64) #1

declare dso_local i64 @lio_droq_refill_pullup_descs(%struct.lio_droq*, %struct.lio_droq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

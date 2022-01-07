; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_refill_pullup_descs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_refill_pullup_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_droq = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.lio_droq_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lio_droq*, %struct.lio_droq_desc*)* @lio_droq_refill_pullup_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lio_droq_refill_pullup_descs(%struct.lio_droq* %0, %struct.lio_droq_desc* %1) #0 {
  %3 = alloca %struct.lio_droq*, align 8
  %4 = alloca %struct.lio_droq_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lio_droq* %0, %struct.lio_droq** %3, align 8
  store %struct.lio_droq_desc* %1, %struct.lio_droq_desc** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %8 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %106, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %13 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %113

16:                                               ; preds = %10
  %17 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %18 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %106

25:                                               ; preds = %16
  %26 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %27 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %34 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %37 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* %32, i32** %40, align 8
  %41 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %42 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %49 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %52 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %47, i32* %55, align 8
  %56 = load %struct.lio_droq_desc*, %struct.lio_droq_desc** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %56, i64 %57
  %59 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.lio_droq_desc*, %struct.lio_droq_desc** %4, align 8
  %62 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %63 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %61, i64 %64
  %66 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %65, i32 0, i32 0
  store i64 %60, i64* %66, align 8
  %67 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %68 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  %73 = load %struct.lio_droq_desc*, %struct.lio_droq_desc** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %73, i64 %74
  %76 = getelementptr inbounds %struct.lio_droq_desc, %struct.lio_droq_desc* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %94, %25
  %78 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %79 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %82 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @lio_incr_index(i64 %80, i32 1, i32 %83)
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %87 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %5, align 8
  %90 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %91 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %77
  %95 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %96 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %99 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %77, label %105

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %16
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %109 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @lio_incr_index(i64 %107, i32 1, i32 %110)
  %112 = ptrtoint i8* %111 to i64
  store i64 %112, i64* %6, align 8
  br label %10

113:                                              ; preds = %10
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

declare dso_local i8* @lio_incr_index(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

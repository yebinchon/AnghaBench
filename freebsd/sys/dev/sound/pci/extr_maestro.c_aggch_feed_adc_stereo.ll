; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_feed_adc_stereo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_aggch_feed_adc_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_rchinfo = type { i32, i32, i32, i32, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@APUREG_CURPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_rchinfo*)* @aggch_feed_adc_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggch_feed_adc_stereo(%struct.agg_rchinfo* %0) #0 {
  %2 = alloca %struct.agg_rchinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.agg_rchinfo* %0, %struct.agg_rchinfo** %2, align 8
  %6 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %7 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %6, i32 0, i32 6
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @agg_lock(%struct.TYPE_4__* %8)
  %10 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %11 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %10, i32 0, i32 6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* @APUREG_CURPTR, align 4
  %14 = call i32 @wp_rdapu(%struct.TYPE_4__* %12, i32 0, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %16 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @agg_unlock(%struct.TYPE_4__* %17)
  %19 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %20 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %23 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = ashr i32 %25, 1
  %27 = and i32 65535, %26
  %28 = load i32, i32* %3, align 4
  %29 = sub i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %31 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  %33 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %34 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %37 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %36, i32 0, i32 6
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %35, i64 %42
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %1
  %48 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %49 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %59 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = mul i32 2, %61
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %66 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 2
  %69 = load i32, i32* %4, align 4
  %70 = sub i32 %68, %69
  %71 = call i32 @interleave(i32* %53, i32* %57, i64 %64, i32 %70)
  %72 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %73 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %77 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @interleave(i32* %74, i32* %75, i64 %78, i32 %79)
  br label %108

81:                                               ; preds = %1
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %87 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %97 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = mul i32 2, %99
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %98, %101
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %4, align 4
  %105 = sub i32 %103, %104
  %106 = call i32 @interleave(i32* %91, i32* %95, i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %85, %81
  br label %108

108:                                              ; preds = %107, %47
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.agg_rchinfo*, %struct.agg_rchinfo** %2, align 8
  %111 = getelementptr inbounds %struct.agg_rchinfo, %struct.agg_rchinfo* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  ret void
}

declare dso_local i32 @agg_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @wp_rdapu(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @agg_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @interleave(i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

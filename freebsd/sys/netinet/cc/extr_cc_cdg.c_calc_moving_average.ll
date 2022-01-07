; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cdg.c_calc_moving_average.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cdg.c_calc_moving_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdg = type { i64, i64, i32, i64, i32, i64 }
%struct.qdiff_sample = type { i64 }

@qdiff_lnk = common dso_local global i32 0, align 4
@qdiffsample_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdg*, i64, i64)* @calc_moving_average to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_moving_average(%struct.cdg* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cdg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qdiff_sample*, align 8
  store %struct.cdg* %0, %struct.cdg** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.cdg*, %struct.cdg** %4, align 8
  %9 = getelementptr inbounds %struct.cdg, %struct.cdg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.cdg*, %struct.cdg** %4, align 8
  %13 = getelementptr inbounds %struct.cdg, %struct.cdg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cdg*, %struct.cdg** %4, align 8
  %16 = getelementptr inbounds %struct.cdg, %struct.cdg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %3
  %20 = load %struct.cdg*, %struct.cdg** %4, align 8
  %21 = getelementptr inbounds %struct.cdg, %struct.cdg* %20, i32 0, i32 4
  %22 = call %struct.qdiff_sample* @STAILQ_FIRST(i32* %21)
  store %struct.qdiff_sample* %22, %struct.qdiff_sample** %7, align 8
  %23 = load %struct.cdg*, %struct.cdg** %4, align 8
  %24 = getelementptr inbounds %struct.cdg, %struct.cdg* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %28 = getelementptr inbounds %struct.qdiff_sample, %struct.qdiff_sample* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load %struct.cdg*, %struct.cdg** %4, align 8
  %32 = getelementptr inbounds %struct.cdg, %struct.cdg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sdiv i64 %30, %33
  %35 = add nsw i64 %25, %34
  %36 = load %struct.cdg*, %struct.cdg** %4, align 8
  %37 = getelementptr inbounds %struct.cdg, %struct.cdg* %36, i32 0, i32 5
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cdg*, %struct.cdg** %4, align 8
  %39 = getelementptr inbounds %struct.cdg, %struct.cdg* %38, i32 0, i32 4
  %40 = load i32, i32* @qdiff_lnk, align 4
  %41 = call i32 @STAILQ_REMOVE_HEAD(i32* %39, i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %44 = getelementptr inbounds %struct.qdiff_sample, %struct.qdiff_sample* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.cdg*, %struct.cdg** %4, align 8
  %46 = getelementptr inbounds %struct.cdg, %struct.cdg* %45, i32 0, i32 4
  %47 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %48 = load i32, i32* @qdiff_lnk, align 4
  %49 = call i32 @STAILQ_INSERT_TAIL(i32* %46, %struct.qdiff_sample* %47, i32 %48)
  %50 = load %struct.cdg*, %struct.cdg** %4, align 8
  %51 = getelementptr inbounds %struct.cdg, %struct.cdg* %50, i32 0, i32 2
  %52 = call %struct.qdiff_sample* @STAILQ_FIRST(i32* %51)
  store %struct.qdiff_sample* %52, %struct.qdiff_sample** %7, align 8
  %53 = load %struct.cdg*, %struct.cdg** %4, align 8
  %54 = getelementptr inbounds %struct.cdg, %struct.cdg* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %58 = getelementptr inbounds %struct.qdiff_sample, %struct.qdiff_sample* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load %struct.cdg*, %struct.cdg** %4, align 8
  %62 = getelementptr inbounds %struct.cdg, %struct.cdg* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sdiv i64 %60, %63
  %65 = add nsw i64 %55, %64
  %66 = load %struct.cdg*, %struct.cdg** %4, align 8
  %67 = getelementptr inbounds %struct.cdg, %struct.cdg* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cdg*, %struct.cdg** %4, align 8
  %69 = getelementptr inbounds %struct.cdg, %struct.cdg* %68, i32 0, i32 2
  %70 = load i32, i32* @qdiff_lnk, align 4
  %71 = call i32 @STAILQ_REMOVE_HEAD(i32* %69, i32 %70)
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %74 = getelementptr inbounds %struct.qdiff_sample, %struct.qdiff_sample* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.cdg*, %struct.cdg** %4, align 8
  %76 = getelementptr inbounds %struct.cdg, %struct.cdg* %75, i32 0, i32 2
  %77 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %78 = load i32, i32* @qdiff_lnk, align 4
  %79 = call i32 @STAILQ_INSERT_TAIL(i32* %76, %struct.qdiff_sample* %77, i32 %78)
  %80 = load %struct.cdg*, %struct.cdg** %4, align 8
  %81 = getelementptr inbounds %struct.cdg, %struct.cdg* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %137

84:                                               ; preds = %3
  %85 = load i32, i32* @qdiffsample_zone, align 4
  %86 = load i32, i32* @M_NOWAIT, align 4
  %87 = call %struct.qdiff_sample* @uma_zalloc(i32 %85, i32 %86)
  store %struct.qdiff_sample* %87, %struct.qdiff_sample** %7, align 8
  %88 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %89 = icmp ne %struct.qdiff_sample* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load %struct.cdg*, %struct.cdg** %4, align 8
  %92 = getelementptr inbounds %struct.cdg, %struct.cdg* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.cdg*, %struct.cdg** %4, align 8
  %96 = getelementptr inbounds %struct.cdg, %struct.cdg* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sdiv i64 %94, %97
  %99 = add nsw i64 %93, %98
  %100 = load %struct.cdg*, %struct.cdg** %4, align 8
  %101 = getelementptr inbounds %struct.cdg, %struct.cdg* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %104 = getelementptr inbounds %struct.qdiff_sample, %struct.qdiff_sample* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.cdg*, %struct.cdg** %4, align 8
  %106 = getelementptr inbounds %struct.cdg, %struct.cdg* %105, i32 0, i32 4
  %107 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %108 = load i32, i32* @qdiff_lnk, align 4
  %109 = call i32 @STAILQ_INSERT_TAIL(i32* %106, %struct.qdiff_sample* %107, i32 %108)
  br label %110

110:                                              ; preds = %90, %84
  %111 = load i32, i32* @qdiffsample_zone, align 4
  %112 = load i32, i32* @M_NOWAIT, align 4
  %113 = call %struct.qdiff_sample* @uma_zalloc(i32 %111, i32 %112)
  store %struct.qdiff_sample* %113, %struct.qdiff_sample** %7, align 8
  %114 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %115 = icmp ne %struct.qdiff_sample* %114, null
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = load %struct.cdg*, %struct.cdg** %4, align 8
  %118 = getelementptr inbounds %struct.cdg, %struct.cdg* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.cdg*, %struct.cdg** %4, align 8
  %122 = getelementptr inbounds %struct.cdg, %struct.cdg* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sdiv i64 %120, %123
  %125 = add nsw i64 %119, %124
  %126 = load %struct.cdg*, %struct.cdg** %4, align 8
  %127 = getelementptr inbounds %struct.cdg, %struct.cdg* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %130 = getelementptr inbounds %struct.qdiff_sample, %struct.qdiff_sample* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.cdg*, %struct.cdg** %4, align 8
  %132 = getelementptr inbounds %struct.cdg, %struct.cdg* %131, i32 0, i32 2
  %133 = load %struct.qdiff_sample*, %struct.qdiff_sample** %7, align 8
  %134 = load i32, i32* @qdiff_lnk, align 4
  %135 = call i32 @STAILQ_INSERT_TAIL(i32* %132, %struct.qdiff_sample* %133, i32 %134)
  br label %136

136:                                              ; preds = %116, %110
  br label %137

137:                                              ; preds = %136, %19
  ret void
}

declare dso_local %struct.qdiff_sample* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.qdiff_sample*, i32) #1

declare dso_local %struct.qdiff_sample* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

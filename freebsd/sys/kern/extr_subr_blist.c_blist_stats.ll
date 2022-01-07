; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blist_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_blist.c_blist_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sbuf = type { i32 }
%struct.gap_stats = type { i32 }

@BLIST_BMAP_RADIX = common dso_local global i64 0, align 8
@BLIST_META_MASK = common dso_local global i64 0, align 8
@BLIST_META_RADIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blist_stats(%struct.TYPE_5__* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.gap_stats, align 4
  %6 = alloca %struct.gap_stats*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  store %struct.gap_stats* %5, %struct.gap_stats** %6, align 8
  %13 = load %struct.gap_stats*, %struct.gap_stats** %6, align 8
  %14 = call i32 @init_gap_stats(%struct.gap_stats* %13)
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %111, %2
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = icmp ult i64 %19, %26
  br i1 %27, label %28, label %119

28:                                               ; preds = %18
  %29 = load i64, i64* @BLIST_BMAP_RADIX, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %37, %28
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = udiv i64 %31, %32
  %34 = load i64, i64* @BLIST_META_MASK, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* @BLIST_META_RADIX, align 8
  %39 = load i64, i64* %9, align 8
  %40 = mul i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %30

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @BLIST_BMAP_RADIX, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.gap_stats*, %struct.gap_stats** %6, align 8
  %57 = call i64 @gap_stats_counting(%struct.gap_stats* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.gap_stats*, %struct.gap_stats** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @update_gap_stats(%struct.gap_stats* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %70

64:                                               ; preds = %46
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* @BLIST_META_RADIX, align 8
  %68 = load i64, i64* %9, align 8
  %69 = udiv i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %42

70:                                               ; preds = %63, %42
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @BLIST_BMAP_RADIX, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %84, 1
  %86 = xor i32 %83, %85
  store i32 %86, i32* %10, align 4
  %87 = load %struct.gap_stats*, %struct.gap_stats** %6, align 8
  %88 = call i64 @gap_stats_counting(%struct.gap_stats* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i32, i32* %10, align 4
  %92 = xor i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %74
  br label %94

94:                                               ; preds = %97, %93
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @bitpos(i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.gap_stats*, %struct.gap_stats** %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %101, %103
  %105 = call i32 @update_gap_stats(%struct.gap_stats* %100, i64 %104)
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @bitrange(i32 %106, i32 1)
  %108 = load i32, i32* %10, align 4
  %109 = xor i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %94

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %70
  %112 = load i64, i64* %9, align 8
  %113 = call i64 @radix_to_skip(i64 %112)
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %7, align 8
  br label %18

119:                                              ; preds = %18
  %120 = load %struct.gap_stats*, %struct.gap_stats** %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 @update_gap_stats(%struct.gap_stats* %120, i64 %121)
  %123 = load %struct.gap_stats*, %struct.gap_stats** %6, align 8
  %124 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %125 = call i32 @dump_gap_stats(%struct.gap_stats* %123, %struct.sbuf* %124)
  ret void
}

declare dso_local i32 @init_gap_stats(%struct.gap_stats*) #1

declare dso_local i64 @gap_stats_counting(%struct.gap_stats*) #1

declare dso_local i32 @update_gap_stats(%struct.gap_stats*, i64) #1

declare dso_local i32 @bitpos(i32) #1

declare dso_local i32 @bitrange(i32, i32) #1

declare dso_local i64 @radix_to_skip(i64) #1

declare dso_local i32 @dump_gap_stats(%struct.gap_stats*, %struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

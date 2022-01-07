; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_blocks_overlap_or_meet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_blocks_overlap_or_meet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sackblk = type { i32, i32 }

@SACK_FILTER_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sack_filter*, %struct.sackblk*, i64)* @sack_blocks_overlap_or_meet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sack_blocks_overlap_or_meet(%struct.sack_filter* %0, %struct.sackblk* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sack_filter*, align 8
  %6 = alloca %struct.sackblk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sack_filter* %0, %struct.sack_filter** %5, align 8
  store %struct.sackblk* %1, %struct.sackblk** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %107, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @SACK_FILTER_BLOCKS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %110

13:                                               ; preds = %9
  %14 = load %struct.sack_filter*, %struct.sack_filter** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @sack_blk_used(%struct.sack_filter* %14, i64 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %107

19:                                               ; preds = %13
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %107

24:                                               ; preds = %19
  %25 = load %struct.sack_filter*, %struct.sack_filter** %5, align 8
  %26 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %33 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @SEQ_GEQ(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %24
  %38 = load %struct.sack_filter*, %struct.sack_filter** %5, align 8
  %39 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %46 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @SEQ_LEQ(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %37
  %51 = load %struct.sack_filter*, %struct.sack_filter** %5, align 8
  %52 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %59 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @SEQ_LEQ(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %111

65:                                               ; preds = %50, %37, %24
  %66 = load %struct.sack_filter*, %struct.sack_filter** %5, align 8
  %67 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %74 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @SEQ_LEQ(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %65
  %79 = load %struct.sack_filter*, %struct.sack_filter** %5, align 8
  %80 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %87 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @SEQ_GEQ(i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %78
  %92 = load %struct.sack_filter*, %struct.sack_filter** %5, align 8
  %93 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sackblk*, %struct.sackblk** %6, align 8
  %100 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @SEQ_GEQ(i32 %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %4, align 8
  br label %111

106:                                              ; preds = %91, %78, %65
  br label %107

107:                                              ; preds = %106, %23, %18
  %108 = load i64, i64* %8, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %8, align 8
  br label %9

110:                                              ; preds = %9
  store i64 -1, i64* %4, align 8
  br label %111

111:                                              ; preds = %110, %104, %63
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i64 @sack_blk_used(%struct.sack_filter*, i64) #1

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

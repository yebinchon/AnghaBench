; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_reject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sackblk = type { i64, i64 }

@SACK_FILTER_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sack_filter_reject(%struct.sack_filter* %0, %struct.sackblk* %1) #0 {
  %3 = alloca %struct.sack_filter*, align 8
  %4 = alloca %struct.sackblk*, align 8
  %5 = alloca i32, align 4
  store %struct.sack_filter* %0, %struct.sack_filter** %3, align 8
  store %struct.sackblk* %1, %struct.sackblk** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %115, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SACK_FILTER_BLOCKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %118

10:                                               ; preds = %6
  %11 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @sack_blk_used(%struct.sack_filter* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %115

16:                                               ; preds = %10
  %17 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %18 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sackblk*, %struct.sackblk** %4, align 8
  %26 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %16
  %30 = load %struct.sackblk*, %struct.sackblk** %4, align 8
  %31 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %34 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @SEQ_GT(i64 %32, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %29
  %44 = load %struct.sackblk*, %struct.sackblk** %4, align 8
  %45 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %48 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %46, i64* %53, align 8
  br label %64

54:                                               ; preds = %29
  %55 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i8* @sack_blk_clr(%struct.sack_filter* %55, i32 %56)
  %58 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %59 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %61 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %54, %43
  br label %115

65:                                               ; preds = %16
  %66 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %67 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sackblk*, %struct.sackblk** %4, align 8
  %75 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %65
  %79 = load %struct.sackblk*, %struct.sackblk** %4, align 8
  %80 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %83 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @SEQ_LT(i64 %81, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %78
  %93 = load %struct.sackblk*, %struct.sackblk** %4, align 8
  %94 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %97 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i64 %95, i64* %102, align 8
  br label %113

103:                                              ; preds = %78
  %104 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i8* @sack_blk_clr(%struct.sack_filter* %104, i32 %105)
  %107 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %108 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %110 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %103, %92
  br label %115

114:                                              ; preds = %65
  br label %115

115:                                              ; preds = %114, %113, %64, %15
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %6

118:                                              ; preds = %6
  ret void
}

declare dso_local i64 @sack_blk_used(%struct.sack_filter*, i32) #1

declare dso_local i64 @SEQ_GT(i64, i64) #1

declare dso_local i8* @sack_blk_clr(%struct.sack_filter*, i32) #1

declare dso_local i64 @SEQ_LT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

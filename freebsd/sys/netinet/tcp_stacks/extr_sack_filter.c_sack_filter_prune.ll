; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_prune.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_filter_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i8*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@SACK_FILTER_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sack_filter*, i8*)* @sack_filter_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sack_filter_prune(%struct.sack_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.sack_filter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.sack_filter* %0, %struct.sack_filter** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %58, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @SACK_FILTER_BLOCKS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  %11 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @sack_blk_used(%struct.sack_filter* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %18 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @SEQ_GT(i8* %16, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %15
  %27 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @sack_blk_clr(%struct.sack_filter* %27, i64 %28)
  %30 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %31 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %33 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  br label %56

36:                                               ; preds = %15
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %39 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @SEQ_GT(i8* %37, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %50 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %48, i8** %54, align 8
  br label %55

55:                                               ; preds = %47, %36
  br label %56

56:                                               ; preds = %55, %26
  br label %57

57:                                               ; preds = %56, %10
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %6

61:                                               ; preds = %6
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %64 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local i64 @sack_blk_used(%struct.sack_filter*, i64) #1

declare dso_local i64 @SEQ_GT(i8*, i8*) #1

declare dso_local i32 @sack_blk_clr(%struct.sack_filter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

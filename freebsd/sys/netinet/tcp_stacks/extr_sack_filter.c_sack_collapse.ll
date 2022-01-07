; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_collapse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sack_filter*, i64, i64)* @sack_collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sack_collapse(%struct.sack_filter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sack_filter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sack_filter* %0, %struct.sack_filter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %8 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %15 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @SEQ_LT(i32 %13, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %25 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %32 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %23, %3
  %38 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %39 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %46 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @SEQ_GT(i32 %44, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %37
  %55 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %56 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %63 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %54, %37
  %69 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @sack_blk_clr(%struct.sack_filter* %69, i64 %70)
  %72 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %73 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sack_filter*, %struct.sack_filter** %4, align 8
  %75 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  ret void
}

declare dso_local i64 @SEQ_LT(i32, i32) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @sack_blk_clr(%struct.sack_filter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_move_to_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_move_to_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i32, i32* }

@SACK_FILTER_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sack_filter*, i32)* @sack_move_to_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sack_move_to_empty(%struct.sack_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.sack_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sack_filter* %0, %struct.sack_filter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* @SACK_FILTER_BLOCKS, align 4
  %10 = srem i32 %8, %9
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %51, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SACK_FILTER_BLOCKS, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @sack_blk_used(%struct.sack_filter* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %23 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %29 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @memcpy(i32* %27, i32* %33, i32 4)
  %35 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sack_blk_clr(%struct.sack_filter* %35, i32 %36)
  %38 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %39 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @sack_blk_set(%struct.sack_filter* %40, i32 %41)
  %43 = load %struct.sack_filter*, %struct.sack_filter** %3, align 8
  %44 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %54

45:                                               ; preds = %16
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @SACK_FILTER_BLOCKS, align 4
  %49 = load i32, i32* %5, align 4
  %50 = srem i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %11

54:                                               ; preds = %21, %11
  ret void
}

declare dso_local i64 @sack_blk_used(%struct.sack_filter*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sack_blk_clr(%struct.sack_filter*, i32) #1

declare dso_local i32 @sack_blk_set(%struct.sack_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_board_collapse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_sack_filter.c_sack_board_collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sack_filter = type { i64, i32* }

@SACK_FILTER_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sack_filter*)* @sack_board_collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sack_board_collapse(%struct.sack_filter* %0) #0 {
  %2 = alloca %struct.sack_filter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sack_filter* %0, %struct.sack_filter** %2, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %80, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @SACK_FILTER_BLOCKS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %83

11:                                               ; preds = %7
  %12 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @sack_blk_used(%struct.sack_filter* %12, i64 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %80

17:                                               ; preds = %11
  %18 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %19 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %20 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @sack_blocks_overlap_or_meet(%struct.sack_filter* %18, i32* %23, i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %80

29:                                               ; preds = %17
  %30 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %31 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %37 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %5, align 8
  br label %47

41:                                               ; preds = %29
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %44 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %49 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %55 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %6, align 8
  br label %65

59:                                               ; preds = %47
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %62 = getelementptr inbounds %struct.sack_filter, %struct.sack_filter* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @sack_collapse(%struct.sack_filter* %70, i64 %71, i64 %72)
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.sack_filter*, %struct.sack_filter** %2, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @sack_collapse(%struct.sack_filter* %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %28, %16
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %7

83:                                               ; preds = %7
  ret void
}

declare dso_local i64 @sack_blk_used(%struct.sack_filter*, i64) #1

declare dso_local i64 @sack_blocks_overlap_or_meet(%struct.sack_filter*, i32*, i64) #1

declare dso_local i32 @sack_collapse(%struct.sack_filter*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

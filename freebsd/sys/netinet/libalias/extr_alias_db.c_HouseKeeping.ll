; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_HouseKeeping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_HouseKeeping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32, i32 }
%struct.timeval = type { i32 }

@LINK_TABLE_OUT_SIZE = common dso_local global i32 0, align 4
@ALIAS_CLEANUP_INTERVAL_SECS = common dso_local global i32 0, align 4
@ALIAS_CLEANUP_MAX_SPOKES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HouseKeeping(%struct.libalias* %0) #0 {
  %2 = alloca %struct.libalias*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  store %struct.libalias* %0, %struct.libalias** %2, align 8
  %6 = load %struct.libalias*, %struct.libalias** %2, align 8
  %7 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %6)
  %8 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.libalias*, %struct.libalias** %2, align 8
  %12 = getelementptr inbounds %struct.libalias, %struct.libalias* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @LINK_TABLE_OUT_SIZE, align 4
  %14 = load %struct.libalias*, %struct.libalias** %2, align 8
  %15 = getelementptr inbounds %struct.libalias, %struct.libalias* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.libalias*, %struct.libalias** %2, align 8
  %18 = getelementptr inbounds %struct.libalias, %struct.libalias* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = mul nsw i32 %13, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @ALIAS_CLEANUP_INTERVAL_SECS, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ALIAS_CLEANUP_MAX_SPOKES, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ALIAS_CLEANUP_MAX_SPOKES, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.libalias*, %struct.libalias** %2, align 8
  %35 = getelementptr inbounds %struct.libalias, %struct.libalias* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.libalias*, %struct.libalias** %2, align 8
  %38 = getelementptr inbounds %struct.libalias, %struct.libalias* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %46, %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.libalias*, %struct.libalias** %2, align 8
  %45 = call i32 @IncrementalCleanup(%struct.libalias* %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %39

49:                                               ; preds = %39
  br label %60

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.libalias*, %struct.libalias** %2, align 8
  %55 = getelementptr inbounds %struct.libalias, %struct.libalias* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.libalias*, %struct.libalias** %2, align 8
  %58 = getelementptr inbounds %struct.libalias, %struct.libalias* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %50
  br label %60

60:                                               ; preds = %59, %49
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @IncrementalCleanup(%struct.libalias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

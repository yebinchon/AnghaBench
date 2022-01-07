; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_rx_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_rx_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_rx_post(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %71, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 %19
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %7, align 8
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %63, %15
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %23, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  %36 = trunc i64 %34 to i32
  %37 = call %struct.TYPE_9__* @ocs_array_get(i32 %33, i32 %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ocs_hw_assert(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = call i64 @ocs_hw_sequence_free(%struct.TYPE_8__* %56, %struct.TYPE_9__* %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %30
  br label %66

62:                                               ; preds = %30
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %3, align 8
  br label %22

66:                                               ; preds = %61, %22
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %74

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %9

74:                                               ; preds = %69, %9
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local %struct.TYPE_9__* @ocs_array_get(i32, i32) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i64 @ocs_hw_sequence_free(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

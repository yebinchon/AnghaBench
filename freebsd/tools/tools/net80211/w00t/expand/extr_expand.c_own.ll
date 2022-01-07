; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_own.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/expand/extr_expand.c_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timeval = type { i32, i32 }

@S_WAIT_RELAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@S_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"select()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @own(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  store %struct.timeval* null, %struct.timeval** %4, align 8
  store i32 10000, i32* %6, align 4
  %8 = load %struct.params*, %struct.params** %2, align 8
  %9 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @S_WAIT_RELAY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  %14 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.params*, %struct.params** %2, align 8
  %20 = getelementptr inbounds %struct.params, %struct.params* %19, i32 0, i32 3
  %21 = call i32 @elapsed(i32* %20, %struct.timeval* %3)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.params*, %struct.params** %2, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.params*, %struct.params** %2, align 8
  %32 = getelementptr inbounds %struct.params, %struct.params* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.params*, %struct.params** %2, align 8
  %39 = call i32 @send_queue(%struct.params* %38)
  store i32 0, i32* %7, align 4
  br label %44

40:                                               ; preds = %30, %25
  %41 = load i64, i64* @S_START, align 8
  %42 = load %struct.params*, %struct.params** %2, align 8
  %43 = getelementptr inbounds %struct.params, %struct.params* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %84

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sdiv i32 %49, 1000
  %51 = sdiv i32 %50, 1000
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 1000
  %57 = mul nsw i32 %56, 1000
  %58 = sub nsw i32 %53, %57
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  store %struct.timeval* %3, %struct.timeval** %4, align 8
  br label %60

60:                                               ; preds = %45, %1
  %61 = call i32 @FD_ZERO(i32* %5)
  %62 = load %struct.params*, %struct.params** %2, align 8
  %63 = getelementptr inbounds %struct.params, %struct.params* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @FD_SET(i64 %64, i32* %5)
  %66 = load %struct.params*, %struct.params** %2, align 8
  %67 = getelementptr inbounds %struct.params, %struct.params* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = load %struct.timeval*, %struct.timeval** %4, align 8
  %71 = call i32 @select(i64 %69, i32* %5, i32* null, i32* null, %struct.timeval* %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %60
  %76 = load %struct.params*, %struct.params** %2, align 8
  %77 = getelementptr inbounds %struct.params, %struct.params* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @FD_ISSET(i64 %78, i32* %5)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.params*, %struct.params** %2, align 8
  %83 = call i32 @read_wifi(%struct.params* %82)
  br label %84

84:                                               ; preds = %40, %81, %75
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elapsed(i32*, %struct.timeval*) #1

declare dso_local i32 @send_queue(%struct.params*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @read_wifi(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

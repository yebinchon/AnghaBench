; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_check_seen.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_check_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_info = type { %struct.node_info*, i64, i32 }
%struct.timeval = type { i32, i32 }

@nodes = common dso_local global %struct.node_info* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@sig_reset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_seen(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.node_info*, align 8
  %9 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = load %struct.timeval*, %struct.timeval** %2, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 1000
  %14 = load %struct.timeval*, %struct.timeval** %2, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 1000
  %18 = add nsw i32 %13, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.node_info*, %struct.node_info** @nodes, align 8
  store %struct.node_info* %21, %struct.node_info** %8, align 8
  %22 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @die(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  br label %27

27:                                               ; preds = %58, %26
  %28 = load %struct.node_info*, %struct.node_info** %8, align 8
  %29 = icmp ne %struct.node_info* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load %struct.node_info*, %struct.node_info** %8, align 8
  %32 = getelementptr inbounds %struct.node_info, %struct.node_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load %struct.node_info*, %struct.node_info** %8, align 8
  %37 = getelementptr inbounds %struct.node_info, %struct.node_info* %36, i32 0, i32 2
  %38 = call i64 @elapsed_ms(%struct.timeval* %4, i32* %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @sig_reset, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.node_info*, %struct.node_info** %8, align 8
  %44 = getelementptr inbounds %struct.node_info, %struct.node_info* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.node_info*, %struct.node_info** %8, align 8
  %46 = call i32 @display_node(%struct.node_info* %45)
  store i32 1, i32* %5, align 4
  br label %57

47:                                               ; preds = %35
  %48 = load i64, i64* @sig_reset, align 8
  %49 = load i64, i64* %3, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %47
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %30
  %59 = load %struct.node_info*, %struct.node_info** %8, align 8
  %60 = getelementptr inbounds %struct.node_info, %struct.node_info* %59, i32 0, i32 0
  %61 = load %struct.node_info*, %struct.node_info** %60, align 8
  store %struct.node_info* %61, %struct.node_info** %8, align 8
  br label %27

62:                                               ; preds = %27
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @refresh()
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = udiv i64 %72, 1000
  %74 = trunc i64 %73 to i32
  %75 = load %struct.timeval*, %struct.timeval** %2, align 8
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.timeval*, %struct.timeval** %2, align 8
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 1000
  %82 = sext i32 %81 to i64
  %83 = sub i64 %77, %82
  %84 = mul i64 %83, 1000
  %85 = trunc i64 %84 to i32
  %86 = load %struct.timeval*, %struct.timeval** %2, align 8
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %71, %67
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i64 @elapsed_ms(%struct.timeval*, i32*) #1

declare dso_local i32 @display_node(%struct.node_info*) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

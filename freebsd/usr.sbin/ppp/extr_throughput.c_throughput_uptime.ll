; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_uptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i64, i64, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @throughput_uptime(%struct.pppThroughput* %0) #0 {
  %2 = alloca %struct.pppThroughput*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.pppThroughput* %0, %struct.pppThroughput** %2, align 8
  %5 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %6 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %11 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  br label %15

13:                                               ; preds = %1
  %14 = call i64 @time(i32* null)
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i64 [ %12, %9 ], [ %14, %13 ]
  store i64 %16, i64* %3, align 8
  %17 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %18 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %24 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %31 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %36 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 0, i64* %41, align 8
  %42 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %43 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %54 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %57 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %21, %15
  %59 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %60 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64, i64* %3, align 8
  %65 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %66 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i64 [ %68, %63 ], [ 0, %69 ]
  %72 = trunc i64 %71 to i32
  ret i32 %72
}

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

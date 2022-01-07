; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i32, i32, i64, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64* }
%struct.TYPE_3__ = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throughput_start(%struct.pppThroughput* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pppThroughput*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pppThroughput* %0, %struct.pppThroughput** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %9 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %8, i32 0, i32 12
  %10 = call i32 @timer_Stop(i32* %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %32, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %14 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %19 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %26 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %37 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %36, i32 0, i32 11
  store i64 0, i64* %37, align 8
  %38 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %39 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %41 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %43 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %42, i32 0, i32 9
  store i64 0, i64* %43, align 8
  %44 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %45 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %44, i32 0, i32 10
  store i64 0, i64* %45, align 8
  %46 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %47 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %49 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %52 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %55 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %54, i32 0, i32 3
  %56 = call i32 @time(i32* %55)
  %57 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %58 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %60 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %59, i32 0, i32 1
  %61 = call i32 @time(i32* %60)
  %62 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @throughput_restart(%struct.pppThroughput* %62, i8* %63, i32 %64)
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @throughput_restart(%struct.pppThroughput*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_restart.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.pppThroughput*, i32*, i64 }

@SECTICKS = common dso_local global i64 0, align 8
@throughput_sampler = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throughput_restart(%struct.pppThroughput* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.pppThroughput*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pppThroughput* %0, %struct.pppThroughput** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %8 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %7, i32 0, i32 1
  %9 = call i32 @timer_Stop(%struct.TYPE_3__* %8)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %15 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %17 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load i64, i64* @SECTICKS, align 8
  %22 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %23 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i64 %21, i64* %24, align 8
  %25 = load i32*, i32** @throughput_sampler, align 8
  %26 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %27 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32* %25, i32** %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %31 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %34 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %35 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.pppThroughput* %33, %struct.pppThroughput** %36, align 8
  %37 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %38 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %37, i32 0, i32 1
  %39 = call i32 @timer_Start(%struct.TYPE_3__* %38)
  br label %53

40:                                               ; preds = %3
  %41 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %42 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %45 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %48 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* null, i8** %49, align 8
  %50 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %51 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store %struct.pppThroughput* null, %struct.pppThroughput** %52, align 8
  br label %53

53:                                               ; preds = %40, %20
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_3__*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i32, %struct.TYPE_7__, i64, i64, i64, %struct.TYPE_8__, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i64*, i64 }
%struct.TYPE_5__ = type { i64*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"throughput\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throughput_init(%struct.pppThroughput* %0, i32 %1) #0 {
  %3 = alloca %struct.pppThroughput*, align 8
  %4 = alloca i32, align 4
  store %struct.pppThroughput* %0, %struct.pppThroughput** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %6 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %5, i32 0, i32 11
  store i64 0, i64* %6, align 8
  %7 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %8 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %7, i32 0, i32 12
  store i64 0, i64* %8, align 8
  %9 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %10 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %9, i32 0, i32 13
  store i64 0, i64* %10, align 8
  %11 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %12 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %11, i32 0, i32 14
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %15 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @calloc(i32 %16, i32 8)
  %18 = inttoptr i64 %17 to i64*
  %19 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %20 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %19, i32 0, i32 10
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64* %18, i64** %21, align 8
  %22 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %23 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @calloc(i32 %25, i32 8)
  %27 = inttoptr i64 %26 to i64*
  %28 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %29 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i64* %27, i64** %30, align 8
  %31 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %32 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %35 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %37 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %39 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %38, i32 0, i32 6
  %40 = call i32 @time(i32* %39)
  %41 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %42 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %41, i32 0, i32 5
  %43 = call i32 @memset(%struct.TYPE_8__* %42, i8 signext 0, i32 8)
  %44 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %45 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %48 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %50 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %52 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %54 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %57 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %60 = call i32 @throughput_stop(%struct.pppThroughput* %59)
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i8 signext, i32) #1

declare dso_local i32 @throughput_stop(%struct.pppThroughput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

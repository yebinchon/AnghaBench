; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_tally.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_tally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawarc = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@kflag = common dso_local global i64 0, align 8
@kfromlist = common dso_local global i32 0, align 4
@ktolist = common dso_local global i32 0, align 4
@TALLYDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tally(%struct.rawarc* %0) #0 {
  %2 = alloca %struct.rawarc*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.rawarc* %0, %struct.rawarc** %2, align 8
  %5 = load %struct.rawarc*, %struct.rawarc** %2, align 8
  %6 = getelementptr inbounds %struct.rawarc, %struct.rawarc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_5__* @nllookup(i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.rawarc*, %struct.rawarc** %2, align 8
  %10 = getelementptr inbounds %struct.rawarc, %struct.rawarc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_5__* @nllookup(i32 %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %1
  br label %51

19:                                               ; preds = %15
  %20 = load i64, i64* @kflag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i32, i32* @kfromlist, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @onlist(i32 %23, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i32, i32* @ktolist, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @onlist(i32 %30, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %51

37:                                               ; preds = %29, %22, %19
  %38 = load %struct.rawarc*, %struct.rawarc** %2, align 8
  %39 = getelementptr inbounds %struct.rawarc, %struct.rawarc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = load %struct.rawarc*, %struct.rawarc** %2, align 8
  %48 = getelementptr inbounds %struct.rawarc, %struct.rawarc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @addarc(%struct.TYPE_5__* %45, %struct.TYPE_5__* %46, i32 %49)
  br label %51

51:                                               ; preds = %37, %36, %18
  ret void
}

declare dso_local %struct.TYPE_5__* @nllookup(i32) #1

declare dso_local i64 @onlist(i32, i8*) #1

declare dso_local i32 @addarc(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

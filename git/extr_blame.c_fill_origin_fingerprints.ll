; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_fill_origin_fingerprints.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_fill_origin_fingerprints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_origin*)* @fill_origin_fingerprints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_origin_fingerprints(%struct.blame_origin* %0) #0 {
  %2 = alloca %struct.blame_origin*, align 8
  %3 = alloca i32*, align 8
  store %struct.blame_origin* %0, %struct.blame_origin** %2, align 8
  %4 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %5 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %11 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %15 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @find_line_starts(i32** %3, i32 %13, i32 %17)
  %19 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %20 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %22 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @xcalloc(i32 4, i32 %23)
  %25 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %26 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %28 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %31 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %36 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @get_line_fingerprints(i64 %29, i32 %33, i32* %34, i32 0, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @free(i32* %39)
  br label %41

41:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @find_line_starts(i32**, i32, i32) #1

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local i32 @get_line_fingerprints(i64, i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

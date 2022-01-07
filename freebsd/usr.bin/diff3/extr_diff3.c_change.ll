; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@last = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.range*, i32)* @change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change(i32 %0, %struct.range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.range*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.range* %1, %struct.range** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.range*, %struct.range** %5, align 8
  %10 = getelementptr inbounds %struct.range, %struct.range* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** @last, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32 %11, i32* %15, align 4
  %16 = load %struct.range*, %struct.range** %5, align 8
  %17 = call i32 @prange(%struct.range* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.range*, %struct.range** %5, align 8
  %26 = getelementptr inbounds %struct.range, %struct.range* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @skip(i32 %24, i32 %27, i8* null)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.range*, %struct.range** %5, align 8
  %31 = getelementptr inbounds %struct.range, %struct.range* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @skip(i32 %29, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @prange(%struct.range*) #1

declare dso_local i32 @skip(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

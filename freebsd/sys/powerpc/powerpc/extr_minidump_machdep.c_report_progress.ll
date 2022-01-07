; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_minidump_machdep.c_report_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_minidump_machdep.c_report_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@progress = common dso_local global i32 0, align 4
@dumpsize = common dso_local global i32 0, align 4
@progress_track = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"..%d%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @report_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_progress() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @progress, align 4
  %4 = mul nsw i32 %3, 100
  %5 = load i32, i32* @dumpsize, align 4
  %6 = sdiv i32 %4, %5
  %7 = sub nsw i32 100, %6
  store i32 %7, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %49, %0
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %11 = call i32 @nitems(%struct.TYPE_3__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %1, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %23, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %13
  br label %49

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %52

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progress_track, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %52

49:                                               ; preds = %31
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %8

52:                                               ; preds = %40, %41, %8
  ret void
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

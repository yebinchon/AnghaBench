; ModuleID = '/home/carl/AnghaBench/git/compat/extr_gmtime.c_git_gmtime_r.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_gmtime.c_git_gmtime_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @git_gmtime_r(i32* %0, %struct.tm* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %6 = load %struct.tm*, %struct.tm** %4, align 8
  %7 = call i32 @memset(%struct.tm* %6, i32 0, i32 4)
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.tm*, %struct.tm** %4, align 8
  %10 = call %struct.tm* @gmtime_r(i32* %8, %struct.tm* %9)
  store %struct.tm* %10, %struct.tm** %5, align 8
  %11 = load %struct.tm*, %struct.tm** %5, align 8
  %12 = icmp ne %struct.tm* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.tm*, %struct.tm** %5, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  store %struct.tm* null, %struct.tm** %5, align 8
  %19 = load i32, i32* @EOVERFLOW, align 4
  store i32 %19, i32* @errno, align 4
  br label %20

20:                                               ; preds = %18, %13, %2
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  ret %struct.tm* %21
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

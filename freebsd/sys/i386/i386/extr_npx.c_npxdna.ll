; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxdna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxdna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@hw_float = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@fpcurthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"npxdna: fpcurthread = %p (%d), curthread = %p (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"npxdna\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npxdna() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.thread*, align 8
  %3 = load i32, i32* @hw_float, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %50

6:                                                ; preds = %0
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %2, align 8
  %8 = call i32 (...) @critical_enter()
  %9 = load i32, i32* @fpcurthread, align 4
  %10 = call %struct.thread* @PCPU_GET(i32 %9)
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = icmp eq %struct.thread* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @__predict_false(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = call i32 (...) @stop_emulating()
  br label %48

18:                                               ; preds = %6
  %19 = load i32, i32* @fpcurthread, align 4
  %20 = call %struct.thread* @PCPU_GET(i32 %19)
  %21 = icmp ne %struct.thread* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @__predict_false(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = load i32, i32* @fpcurthread, align 4
  %27 = call %struct.thread* @PCPU_GET(i32 %26)
  %28 = load i32, i32* @fpcurthread, align 4
  %29 = call %struct.thread* @PCPU_GET(i32 %28)
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.thread*, %struct.thread** %2, align 8
  %35 = load %struct.thread*, %struct.thread** %2, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.thread* %27, i32 %33, %struct.thread* %34, i32 %39)
  %41 = call i32 @panic(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %25, %18
  %43 = load %struct.thread*, %struct.thread** %2, align 8
  %44 = load %struct.thread*, %struct.thread** %2, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @restore_npx_curthread(%struct.thread* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %16
  %49 = call i32 (...) @critical_exit()
  store i32 1, i32* %1, align 4
  br label %50

50:                                               ; preds = %48, %5
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @printf(i8*, %struct.thread*, i32, %struct.thread*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @restore_npx_curthread(%struct.thread*, i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

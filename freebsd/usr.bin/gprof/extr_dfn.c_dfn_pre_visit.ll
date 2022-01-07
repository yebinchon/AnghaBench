; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_dfn.c_dfn_pre_visit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_dfn.c_dfn_pre_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@dfn_depth = common dso_local global i32 0, align 4
@DFN_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[dfn] out of my depth (dfn_stack overflow)\00", align 1
@dfn_stack = common dso_local global %struct.TYPE_6__* null, align 8
@DFN_BUSY = common dso_local global i32 0, align 4
@DFNDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfn_pre_visit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load i32, i32* @dfn_depth, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @dfn_depth, align 4
  %5 = load i32, i32* @dfn_depth, align 4
  %6 = load i32, i32* @DFN_DEPTH, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dfn_stack, align 8
  %13 = load i32, i32* @dfn_depth, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %16, align 8
  %17 = load i32, i32* @dfn_depth, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dfn_stack, align 8
  %19 = load i32, i32* @dfn_depth, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 8
  %23 = load i32, i32* @DFN_BUSY, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

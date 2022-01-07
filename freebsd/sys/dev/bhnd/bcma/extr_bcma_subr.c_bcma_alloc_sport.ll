; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_alloc_sport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_subr.c_bcma_alloc_sport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_sport = type { i32, i64, i32, i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bcma_sport* @bcma_alloc_sport(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_sport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcma_sport*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @M_BHND, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = call %struct.bcma_sport* @malloc(i32 24, i32 %7, i32 %8)
  store %struct.bcma_sport* %9, %struct.bcma_sport** %6, align 8
  %10 = load %struct.bcma_sport*, %struct.bcma_sport** %6, align 8
  %11 = icmp eq %struct.bcma_sport* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.bcma_sport* null, %struct.bcma_sport** %3, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bcma_sport*, %struct.bcma_sport** %6, align 8
  %16 = getelementptr inbounds %struct.bcma_sport, %struct.bcma_sport* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.bcma_sport*, %struct.bcma_sport** %6, align 8
  %19 = getelementptr inbounds %struct.bcma_sport, %struct.bcma_sport* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.bcma_sport*, %struct.bcma_sport** %6, align 8
  %21 = getelementptr inbounds %struct.bcma_sport, %struct.bcma_sport* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.bcma_sport*, %struct.bcma_sport** %6, align 8
  %23 = getelementptr inbounds %struct.bcma_sport, %struct.bcma_sport* %22, i32 0, i32 0
  %24 = call i32 @STAILQ_INIT(i32* %23)
  %25 = load %struct.bcma_sport*, %struct.bcma_sport** %6, align 8
  store %struct.bcma_sport* %25, %struct.bcma_sport** %3, align 8
  br label %26

26:                                               ; preds = %13, %12
  %27 = load %struct.bcma_sport*, %struct.bcma_sport** %3, align 8
  ret %struct.bcma_sport* %27
}

declare dso_local %struct.bcma_sport* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

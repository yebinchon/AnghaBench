; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_delta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehands = type { i32, %struct.timecounter* }
%struct.timecounter = type { i32 (%struct.timecounter*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timehands*)* @tc_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_delta(%struct.timehands* %0) #0 {
  %2 = alloca %struct.timehands*, align 8
  %3 = alloca %struct.timecounter*, align 8
  store %struct.timehands* %0, %struct.timehands** %2, align 8
  %4 = load %struct.timehands*, %struct.timehands** %2, align 8
  %5 = getelementptr inbounds %struct.timehands, %struct.timehands* %4, i32 0, i32 1
  %6 = load %struct.timecounter*, %struct.timecounter** %5, align 8
  store %struct.timecounter* %6, %struct.timecounter** %3, align 8
  %7 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %8 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %7, i32 0, i32 0
  %9 = load i32 (%struct.timecounter*)*, i32 (%struct.timecounter*)** %8, align 8
  %10 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %11 = call i32 %9(%struct.timecounter* %10)
  %12 = load %struct.timehands*, %struct.timehands** %2, align 8
  %13 = getelementptr inbounds %struct.timehands, %struct.timehands* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  %16 = load %struct.timecounter*, %struct.timecounter** %3, align 8
  %17 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %15, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

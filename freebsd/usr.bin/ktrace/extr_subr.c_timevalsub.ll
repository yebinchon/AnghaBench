; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ktrace/extr_subr.c_timevalsub.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ktrace/extr_subr.c_timevalsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timevalsub(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %4, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timeval*, %struct.timeval** %3, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.timeval*, %struct.timeval** %4, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.timeval*, %struct.timeval** %3, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.timeval*, %struct.timeval** %3, align 8
  %20 = call i32 @timevalfix(%struct.timeval* %19)
  ret void
}

declare dso_local i32 @timevalfix(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

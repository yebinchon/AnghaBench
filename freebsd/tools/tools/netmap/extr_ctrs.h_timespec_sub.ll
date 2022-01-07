; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_ctrs.h_timespec_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_ctrs.h_timespec_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*, %struct.timespec*, %struct.timespec*)* @timespec_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timespec_sub(%struct.timespec* noalias sret %0, %struct.timespec* byval(%struct.timespec) align 8 %1, %struct.timespec* byval(%struct.timespec) align 8 %2) #0 {
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i32 0, i32 0
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %6, %8
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %12, %14
  store i64 %15, i64* %10, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1000000000
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %21, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_TQ_SLEEP.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_TQ_SLEEP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i32, i64 }
%struct.mtx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gtaskqueue*, i8*, i8*)* @TQ_SLEEP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TQ_SLEEP(%struct.gtaskqueue* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gtaskqueue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.gtaskqueue* %0, %struct.gtaskqueue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.gtaskqueue*, %struct.gtaskqueue** %5, align 8
  %9 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.gtaskqueue*, %struct.gtaskqueue** %5, align 8
  %15 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.mtx*
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @msleep_spin(i8* %13, %struct.mtx* %16, i8* %17, i32 0)
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.gtaskqueue*, %struct.gtaskqueue** %5, align 8
  %22 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %21, i32 0, i32 0
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @msleep(i8* %20, i32* %22, i32 0, i8* %23, i32 0)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @msleep_spin(i8*, %struct.mtx*, i8*, i32) #1

declare dso_local i32 @msleep(i8*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

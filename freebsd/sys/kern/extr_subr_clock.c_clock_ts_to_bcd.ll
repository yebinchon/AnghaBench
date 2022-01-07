; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_ts_to_bcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_clock.c_clock_ts_to_bcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clock_ts_to_bcd(%struct.timespec* %0, %struct.bcd_clocktime* %1, i32 %2) #0 {
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.bcd_clocktime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clocktime, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.bcd_clocktime* %1, %struct.bcd_clocktime** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.timespec*, %struct.timespec** %4, align 8
  %9 = call i32 @clock_ts_to_ct(%struct.timespec* %8, %struct.clocktime* %7)
  %10 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %11 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 12
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 12
  store i32 %21, i32* %19, align 4
  %22 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %23 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  store i32 12, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %3
  %32 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %33, 100
  %35 = call i32 @TOBCD(i32 %34)
  %36 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 100
  %39 = call i32 @TOBCD(i32 %38)
  %40 = shl i32 %39, 8
  %41 = or i32 %35, %40
  %42 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %43 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @TOBCD(i32 %45)
  %47 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %48 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @TOBCD(i32 %50)
  %52 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %53 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @TOBCD(i32 %55)
  %57 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %58 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TOBCD(i32 %60)
  %62 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %63 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @TOBCD(i32 %65)
  %67 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %68 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %72 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bcd_clocktime*, %struct.bcd_clocktime** %5, align 8
  %76 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @TOBCD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

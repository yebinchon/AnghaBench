; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_pause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fail_point = type { i32, i32 (i32)*, i32, i32 (i32)* }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"failpt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fail_point*, i32*, %struct.mtx*)* @fail_point_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_point_pause(%struct.fail_point* %0, i32* %1, %struct.mtx* %2) #0 {
  %4 = alloca %struct.fail_point*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mtx*, align 8
  store %struct.fail_point* %0, %struct.fail_point** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.mtx* %2, %struct.mtx** %6, align 8
  %7 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %8 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %7, i32 0, i32 3
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %13 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %12, i32 0, i32 3
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %16 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 %14(i32 %17)
  br label %19

19:                                               ; preds = %11, %3
  %20 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %21 = call i32 @FP_PAUSE_CHANNEL(%struct.fail_point* %20)
  %22 = load %struct.mtx*, %struct.mtx** %6, align 8
  %23 = call i32 @msleep_spin(i32 %21, %struct.mtx* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  %24 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %25 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %24, i32 0, i32 1
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %30 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %29, i32 0, i32 1
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.fail_point*, %struct.fail_point** %4, align 8
  %33 = getelementptr inbounds %struct.fail_point, %struct.fail_point* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34)
  br label %36

36:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @msleep_spin(i32, %struct.mtx*, i8*, i32) #1

declare dso_local i32 @FP_PAUSE_CHANNEL(%struct.fail_point*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32, i64 }

@TICKUNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_Flush(%struct.radius* %0) #0 {
  %2 = alloca %struct.radius*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  store %struct.radius* %0, %struct.radius** %2, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.radius*, %struct.radius** %2, align 8
  %7 = getelementptr inbounds %struct.radius, %struct.radius* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %29

11:                                               ; preds = %5
  %12 = call i32 @FD_ZERO(i32* %4)
  %13 = load %struct.radius*, %struct.radius** %2, align 8
  %14 = getelementptr inbounds %struct.radius, %struct.radius* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FD_SET(i32 %16, i32* %4)
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @TICKUNIT, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.radius*, %struct.radius** %2, align 8
  %22 = getelementptr inbounds %struct.radius, %struct.radius* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @select(i32 %25, i32* %4, i32* null, i32* null, %struct.timeval* %3)
  %27 = load %struct.radius*, %struct.radius** %2, align 8
  %28 = call i32 @radius_Continue(%struct.radius* %27, i32 1)
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @radius_Continue(%struct.radius*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

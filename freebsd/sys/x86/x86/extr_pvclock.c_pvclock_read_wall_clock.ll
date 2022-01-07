; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_pvclock.c_pvclock_read_wall_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_pvclock.c_pvclock_read_wall_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_wall_clock = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvclock_wall_clock*, i32*, i32*)* @pvclock_read_wall_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvclock_read_wall_clock(%struct.pvclock_wall_clock* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.pvclock_wall_clock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.pvclock_wall_clock* %0, %struct.pvclock_wall_clock** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %8

8:                                                ; preds = %34, %3
  %9 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %10 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @rmb()
  %13 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %14 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %18 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = call i32 (...) @rmb()
  br label %22

22:                                               ; preds = %8
  %23 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %24 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.pvclock_wall_clock*, %struct.pvclock_wall_clock** %4, align 8
  %30 = getelementptr inbounds %struct.pvclock_wall_clock, %struct.pvclock_wall_clock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  br i1 %35, label %8, label %36

36:                                               ; preds = %34
  ret void
}

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

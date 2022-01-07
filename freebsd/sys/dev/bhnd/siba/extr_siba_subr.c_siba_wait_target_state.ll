; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_wait_target_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_wait_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_devinfo = type { %struct.bhnd_resource** }
%struct.bhnd_resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siba_wait_target_state(i32 %0, %struct.siba_devinfo* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.siba_devinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bhnd_resource*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.siba_devinfo* %1, %struct.siba_devinfo** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.siba_devinfo*, %struct.siba_devinfo** %9, align 8
  %18 = getelementptr inbounds %struct.siba_devinfo, %struct.siba_devinfo* %17, i32 0, i32 0
  %19 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %18, align 8
  %20 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %19, i64 0
  %21 = load %struct.bhnd_resource*, %struct.bhnd_resource** %20, align 8
  store %struct.bhnd_resource* %21, %struct.bhnd_resource** %14, align 8
  %22 = icmp eq %struct.bhnd_resource* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @ENODEV, align 4
  store i32 %24, i32* %7, align 4
  br label %50

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %45, %25
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.bhnd_resource*, %struct.bhnd_resource** %14, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @bhnd_bus_read_4(%struct.bhnd_resource* %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %50

43:                                               ; preds = %33
  %44 = call i32 @DELAY(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 10
  store i32 %47, i32* %16, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %42, %23
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @bhnd_bus_read_4(%struct.bhnd_resource*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

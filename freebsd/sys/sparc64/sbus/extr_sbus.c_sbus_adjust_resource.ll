; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.sbus_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*, i32, i32)* @sbus_adjust_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_adjust_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sbus_softc*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.sbus_softc* @device_get_softc(i32 %20)
  store %struct.sbus_softc* %21, %struct.sbus_softc** %14, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %45, %19
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.sbus_softc*, %struct.sbus_softc** %14, align 8
  %25 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.resource*, %struct.resource** %11, align 8
  %30 = load %struct.sbus_softc*, %struct.sbus_softc** %14, align 8
  %31 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i64 @rman_is_region_manager(%struct.resource* %29, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.resource*, %struct.resource** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @rman_adjust_resource(%struct.resource* %40, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %58

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %7, align 4
  br label %58

50:                                               ; preds = %6
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @bus_generic_adjust_resource(i32 %51, i32 %52, i32 %53, %struct.resource* %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %48, %39
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.sbus_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_is_region_manager(%struct.resource*, i32*) #1

declare dso_local i32 @rman_adjust_resource(%struct.resource*, i32, i32) #1

declare dso_local i32 @bus_generic_adjust_resource(i32, i32, i32, %struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

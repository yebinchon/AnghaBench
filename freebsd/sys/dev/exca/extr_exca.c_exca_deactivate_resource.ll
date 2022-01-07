; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { i32 }
%struct.resource = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exca_deactivate_resource(%struct.exca_softc* %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.exca_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  store %struct.exca_softc* %0, %struct.exca_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %12 = load %struct.resource*, %struct.resource** %11, align 8
  %13 = call i32 @rman_get_flags(%struct.resource* %12)
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %35 [
    i32 129, label %19
    i32 128, label %27
  ]

19:                                               ; preds = %17
  %20 = load %struct.exca_softc*, %struct.exca_softc** %7, align 8
  %21 = load %struct.resource*, %struct.resource** %11, align 8
  %22 = call i32 @exca_io_unmap_res(%struct.exca_softc* %20, %struct.resource* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %6, align 4
  br label %46

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %17
  %28 = load %struct.exca_softc*, %struct.exca_softc** %7, align 8
  %29 = load %struct.resource*, %struct.resource** %11, align 8
  %30 = call i32 @exca_mem_unmap_res(%struct.exca_softc* %28, %struct.resource* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %6, align 4
  br label %46

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %17, %34, %26
  br label %36

36:                                               ; preds = %35, %5
  %37 = load %struct.exca_softc*, %struct.exca_softc** %7, align 8
  %38 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_get_parent(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %40, i32 %41, i32 %42, i32 %43, %struct.resource* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %32, %24
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @exca_io_unmap_res(%struct.exca_softc*, %struct.resource*) #1

declare dso_local i32 @exca_mem_unmap_res(%struct.exca_softc*, %struct.resource*) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

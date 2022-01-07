; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_spec = type { i32, i32, i32 }
%struct.resource = type { i32 }

@RF_OPTIONAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_alloc_resources(i32 %0, %struct.resource_spec* %1, %struct.resource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource_spec*, align 8
  %7 = alloca %struct.resource**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.resource_spec* %1, %struct.resource_spec** %6, align 8
  store %struct.resource** %2, %struct.resource*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %22, %3
  %10 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %10, i64 %12
  %14 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load %struct.resource**, %struct.resource*** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %20
  store %struct.resource* null, %struct.resource** %21, align 8
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %9

25:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %81, %25
  %27 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %27, i64 %29
  %31 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %84

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %36, i64 %38
  %40 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %42, i64 %44
  %46 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %45, i32 0, i32 2
  %47 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %47, i64 %49
  %51 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.resource* @bus_alloc_resource_any(i32 %35, i32 %41, i32* %46, i32 %52)
  %54 = load %struct.resource**, %struct.resource*** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.resource*, %struct.resource** %54, i64 %56
  store %struct.resource* %53, %struct.resource** %57, align 8
  %58 = load %struct.resource**, %struct.resource*** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.resource*, %struct.resource** %58, i64 %60
  %62 = load %struct.resource*, %struct.resource** %61, align 8
  %63 = icmp eq %struct.resource* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %34
  %65 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %65, i64 %67
  %69 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RF_OPTIONAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %77 = load %struct.resource**, %struct.resource*** %7, align 8
  %78 = call i32 @bus_release_resources(i32 %75, %struct.resource_spec* %76, %struct.resource** %77)
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %64, %34
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %26

84:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %74
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_release_resources(i32, %struct.resource_spec*, %struct.resource**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

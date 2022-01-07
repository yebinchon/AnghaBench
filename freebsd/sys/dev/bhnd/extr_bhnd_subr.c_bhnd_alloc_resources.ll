; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_spec = type { i32, i32, i32 }
%struct.bhnd_resource = type { i32 }

@RF_OPTIONAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_alloc_resources(i32 %0, %struct.resource_spec* %1, %struct.bhnd_resource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource_spec*, align 8
  %7 = alloca %struct.bhnd_resource**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.resource_spec* %1, %struct.resource_spec** %6, align 8
  store %struct.bhnd_resource** %2, %struct.bhnd_resource*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %21, %3
  %11 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %11, i64 %12
  %14 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %18, i64 %19
  store %struct.bhnd_resource* null, %struct.bhnd_resource** %20, align 8
  br label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %10

24:                                               ; preds = %10
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %73, %24
  %26 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %26, i64 %27
  %29 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %76

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %34, i64 %35
  %37 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %39, i64 %40
  %42 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %41, i32 0, i32 2
  %43 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %43, i64 %44
  %46 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.bhnd_resource* @bhnd_alloc_resource_any(i32 %33, i32 %38, i32* %42, i32 %47)
  %49 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %49, i64 %50
  store %struct.bhnd_resource* %48, %struct.bhnd_resource** %51, align 8
  %52 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %52, i64 %53
  %55 = load %struct.bhnd_resource*, %struct.bhnd_resource** %54, align 8
  %56 = icmp eq %struct.bhnd_resource* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %32
  %58 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %58, i64 %59
  %61 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RF_OPTIONAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.resource_spec*, %struct.resource_spec** %6, align 8
  %69 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %7, align 8
  %70 = call i32 @bhnd_release_resources(i32 %67, %struct.resource_spec* %68, %struct.bhnd_resource** %69)
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %4, align 4
  br label %77

72:                                               ; preds = %57, %32
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %25

76:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.bhnd_resource* @bhnd_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bhnd_release_resources(i32, %struct.resource_spec*, %struct.bhnd_resource**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

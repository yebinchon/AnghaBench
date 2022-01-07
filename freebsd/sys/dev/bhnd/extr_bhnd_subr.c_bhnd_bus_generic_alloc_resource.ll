; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_bus_generic_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_resource = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_resource* @bhnd_bus_generic_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.bhnd_resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bhnd_resource*, align 8
  %19 = alloca %struct.resource*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.bhnd_resource* null, %struct.bhnd_resource** %18, align 8
  store %struct.resource* null, %struct.resource** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %21, i32 %22, i32 %23, i32* %24, i32 %25, i32 %26, i32 %27, i32 %31)
  store %struct.resource* %32, %struct.resource** %19, align 8
  %33 = load %struct.resource*, %struct.resource** %19, align 8
  %34 = icmp eq %struct.resource* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  store %struct.bhnd_resource* null, %struct.bhnd_resource** %9, align 8
  br label %82

36:                                               ; preds = %8
  %37 = load i32, i32* @M_BHND, align 4
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call %struct.bhnd_resource* @malloc(i32 16, i32 %37, i32 %38)
  store %struct.bhnd_resource* %39, %struct.bhnd_resource** %18, align 8
  %40 = load %struct.bhnd_resource*, %struct.bhnd_resource** %18, align 8
  %41 = icmp eq %struct.bhnd_resource* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %67

43:                                               ; preds = %36
  %44 = load %struct.bhnd_resource*, %struct.bhnd_resource** %18, align 8
  %45 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.resource*, %struct.resource** %19, align 8
  %47 = load %struct.bhnd_resource*, %struct.bhnd_resource** %18, align 8
  %48 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %47, i32 0, i32 1
  store %struct.resource* %46, %struct.resource** %48, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @RF_ACTIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bhnd_resource*, %struct.bhnd_resource** %18, align 8
  %60 = call i32 @BHND_BUS_ACTIVATE_RESOURCE(i32 %54, i32 %55, i32 %56, i32 %58, %struct.bhnd_resource* %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %67

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %43
  %66 = load %struct.bhnd_resource*, %struct.bhnd_resource** %18, align 8
  store %struct.bhnd_resource* %66, %struct.bhnd_resource** %9, align 8
  br label %82

67:                                               ; preds = %63, %42
  %68 = load %struct.resource*, %struct.resource** %19, align 8
  %69 = icmp ne %struct.resource* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %19, align 8
  %77 = call i32 @BUS_RELEASE_RESOURCE(i32 %71, i32 %72, i32 %73, i32 %75, %struct.resource* %76)
  br label %78

78:                                               ; preds = %70, %67
  %79 = load %struct.bhnd_resource*, %struct.bhnd_resource** %18, align 8
  %80 = load i32, i32* @M_BHND, align 4
  %81 = call i32 @free(%struct.bhnd_resource* %79, i32 %80)
  store %struct.bhnd_resource* null, %struct.bhnd_resource** %9, align 8
  br label %82

82:                                               ; preds = %78, %65, %35
  %83 = load %struct.bhnd_resource*, %struct.bhnd_resource** %9, align 8
  ret %struct.bhnd_resource* %83
}

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.bhnd_resource* @malloc(i32, i32, i32) #1

declare dso_local i32 @BHND_BUS_ACTIVATE_RESOURCE(i32, i32, i32, i32, %struct.bhnd_resource*) #1

declare dso_local i32 @BUS_RELEASE_RESOURCE(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @free(%struct.bhnd_resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

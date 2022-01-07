; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_spec = type { i32, i32 }
%struct.bhnd_resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_release_resources(i32 %0, %struct.resource_spec* %1, %struct.bhnd_resource** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_spec*, align 8
  %6 = alloca %struct.bhnd_resource**, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.resource_spec* %1, %struct.resource_spec** %5, align 8
  store %struct.bhnd_resource** %2, %struct.bhnd_resource*** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %42, %3
  %9 = load %struct.resource_spec*, %struct.resource_spec** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %9, i64 %10
  %12 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %45

15:                                               ; preds = %8
  %16 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %16, i64 %17
  %19 = load %struct.bhnd_resource*, %struct.bhnd_resource** %18, align 8
  %20 = icmp eq %struct.bhnd_resource* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %42

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.resource_spec*, %struct.resource_spec** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %24, i64 %25
  %27 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.resource_spec*, %struct.resource_spec** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %29, i64 %30
  %32 = getelementptr inbounds %struct.resource_spec, %struct.resource_spec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %34, i64 %35
  %37 = load %struct.bhnd_resource*, %struct.bhnd_resource** %36, align 8
  %38 = call i32 @bhnd_release_resource(i32 %23, i32 %28, i32 %33, %struct.bhnd_resource* %37)
  %39 = load %struct.bhnd_resource**, %struct.bhnd_resource*** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.bhnd_resource*, %struct.bhnd_resource** %39, i64 %40
  store %struct.bhnd_resource* null, %struct.bhnd_resource** %41, align 8
  br label %42

42:                                               ; preds = %22, %21
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @bhnd_release_resource(i32, i32, i32, %struct.bhnd_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

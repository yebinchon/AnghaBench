; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusc_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusc_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.TYPE_3__ = type { i32*, i32, i32*, %struct.resource**, %struct.resource*, %struct.resource** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @gusc_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @gusc_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.resource**, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.TYPE_3__* @device_get_softc(i32 %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %18, align 8
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %45 [
    i32 129, label %26
    i32 128, label %33
    i32 130, label %38
  ]

26:                                               ; preds = %8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %19, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load %struct.resource**, %struct.resource*** %31, align 8
  store %struct.resource** %32, %struct.resource*** %22, align 8
  store i32 2, i32* %20, align 4
  store i32 2, i32* %21, align 4
  br label %46

33:                                               ; preds = %8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32* %35, i32** %19, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store %struct.resource** %37, %struct.resource*** %22, align 8
  store i32 0, i32* %20, align 4
  store i32 2, i32* %21, align 4
  br label %46

38:                                               ; preds = %8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %19, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load %struct.resource**, %struct.resource*** %43, align 8
  store %struct.resource** %44, %struct.resource*** %22, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %46

45:                                               ; preds = %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %75

46:                                               ; preds = %38, %33, %26
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %19, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51, %46
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %75

61:                                               ; preds = %51
  %62 = load i32*, i32** %19, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.resource**, %struct.resource*** %22, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.resource*, %struct.resource** %69, i64 %72
  %74 = load %struct.resource*, %struct.resource** %73, align 8
  store %struct.resource* %74, %struct.resource** %9, align 8
  br label %75

75:                                               ; preds = %61, %60, %45
  %76 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %76
}

declare dso_local %struct.TYPE_3__* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

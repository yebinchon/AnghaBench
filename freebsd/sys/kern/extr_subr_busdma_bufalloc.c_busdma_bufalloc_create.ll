; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_busdma_bufalloc.c_busdma_bufalloc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_busdma_bufalloc.c_busdma_bufalloc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.busdma_bufalloc = type { i32, i32, %struct.busdma_bufzone* }
%struct.busdma_bufzone = type { i32, i32*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MIN_ZONE_BUFSIZE = common dso_local global i32 0, align 4
@MAX_ZONE_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dma %.10s %ju\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.busdma_bufalloc* @busdma_bufalloc_create(i8* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.busdma_bufalloc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.busdma_bufalloc*, align 8
  %13 = alloca %struct.busdma_bufzone*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.busdma_bufalloc* @malloc(i32 16, i32 %16, i32 %19)
  store %struct.busdma_bufalloc* %20, %struct.busdma_bufalloc** %12, align 8
  %21 = load i32, i32* @MIN_ZONE_BUFSIZE, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @MAX(i32 %21, i32 %22)
  %24 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %12, align 8
  %25 = getelementptr inbounds %struct.busdma_bufalloc, %struct.busdma_bufalloc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %14, align 4
  %26 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %12, align 8
  %27 = getelementptr inbounds %struct.busdma_bufalloc, %struct.busdma_bufalloc* %26, i32 0, i32 2
  %28 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %27, align 8
  store %struct.busdma_bufzone* %28, %struct.busdma_bufzone** %13, align 8
  %29 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %12, align 8
  %30 = getelementptr inbounds %struct.busdma_bufalloc, %struct.busdma_bufalloc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %99, %5
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %12, align 8
  %35 = getelementptr inbounds %struct.busdma_bufalloc, %struct.busdma_bufalloc* %34, i32 0, i32 2
  %36 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %35, align 8
  %37 = call i32 @nitems(%struct.busdma_bufzone* %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @MAX_ZONE_BUFSIZE, align 4
  %42 = icmp sle i32 %40, %41
  br label %43

43:                                               ; preds = %39, %32
  %44 = phi i1 [ false, %32 ], [ %42, %39 ]
  br i1 %44, label %45, label %106

45:                                               ; preds = %43
  %46 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %47 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @snprintf(i32 %48, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %54 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %56 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %59 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %62 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %11, align 4
  %66 = call i32* @uma_zcreate(i32 %57, i32 %60, i32* null, i32* null, i32* null, i32* null, i32 %64, i32 %65)
  %67 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %68 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %70 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %45
  %74 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %12, align 8
  %75 = call i32 @busdma_bufalloc_destroy(%struct.busdma_bufalloc* %74)
  store %struct.busdma_bufalloc* null, %struct.busdma_bufalloc** %6, align 8
  br label %108

76:                                               ; preds = %45
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %81 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @uma_zone_set_allocf(i32* %82, i32* %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %90 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @uma_zone_set_freef(i32* %91, i32* %92)
  br label %94

94:                                               ; preds = %88, %85
  %95 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %12, align 8
  %96 = getelementptr inbounds %struct.busdma_bufalloc, %struct.busdma_bufalloc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  %102 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %13, align 8
  %103 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %102, i32 1
  store %struct.busdma_bufzone* %103, %struct.busdma_bufzone** %13, align 8
  %104 = load i32, i32* %15, align 4
  %105 = shl i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %32

106:                                              ; preds = %43
  %107 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %12, align 8
  store %struct.busdma_bufalloc* %107, %struct.busdma_bufalloc** %6, align 8
  br label %108

108:                                              ; preds = %106, %73
  %109 = load %struct.busdma_bufalloc*, %struct.busdma_bufalloc** %6, align 8
  ret %struct.busdma_bufalloc* %109
}

declare dso_local %struct.busdma_bufalloc* @malloc(i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @nitems(%struct.busdma_bufzone*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32* @uma_zcreate(i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @busdma_bufalloc_destroy(%struct.busdma_bufalloc*) #1

declare dso_local i32 @uma_zone_set_allocf(i32*, i32*) #1

declare dso_local i32 @uma_zone_set_freef(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32*, i32, %struct.TYPE_2__, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i32, %struct.drm_mm*, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"drm_unused\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_init(%struct.drm_mm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.drm_mm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %8 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %7, i32 0, i32 1
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %11 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %10, i32 0, i32 6
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %14 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %16 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %18 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %17, i32 0, i32 3
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %19)
  %21 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %22 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 8
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %26 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %30 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %33 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %36 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %39 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %42 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %43 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store %struct.drm_mm* %41, %struct.drm_mm** %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %49 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %53 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %51, %55
  %57 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %58 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %61 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %64 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %63, i32 0, i32 1
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  %66 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %67 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

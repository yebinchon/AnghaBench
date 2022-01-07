; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_bus_machdep.c_nexus_dmamap_load_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_bus_machdep.c_nexus_dmamap_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@kernel_pmap = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i64, i64, i32, i32*, i32*)* @nexus_dmamap_load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_dmamap_load_buffer(%struct.TYPE_4__* %0, i32 %1, i8* %2, i64 %3, i64 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %15, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %15, align 8
  br label %28

28:                                               ; preds = %24, %8
  br label %29

29:                                               ; preds = %77, %28
  %30 = load i64, i64* %12, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @kernel_pmap, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %19, align 4
  %38 = call i64 @pmap_kextract(i32 %37)
  store i64 %38, i64* %18, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* %19, align 4
  %42 = call i64 @pmap_extract(i64 %40, i32 %41)
  store i64 %42, i64* %18, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load i64, i64* %18, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @PAGE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %44, %49
  store i64 %50, i64* %17, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %17, align 8
  br label %60

60:                                               ; preds = %56, %43
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %17, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %17, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i64 @nexus_dmamap_addseg(%struct.TYPE_4__* %67, i32 %68, i64 %69, i64 %70, i32* %71, i32* %72)
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %17, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %86

77:                                               ; preds = %66
  %78 = load i64, i64* %17, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %19, align 4
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %12, align 8
  br label %29

86:                                               ; preds = %76, %29
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @EFBIG, align 4
  br label %92

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  ret i32 %93
}

declare dso_local i64 @pmap_kextract(i32) #1

declare dso_local i64 @pmap_extract(i64, i32) #1

declare dso_local i64 @nexus_dmamap_addseg(%struct.TYPE_4__*, i32, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

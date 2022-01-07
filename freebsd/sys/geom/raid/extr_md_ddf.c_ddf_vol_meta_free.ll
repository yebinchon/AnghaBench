; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_vol_meta_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_vol_meta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddf_vol_meta = type { i32**, i32*, i32*, i32*, i32* }

@M_MD_DDF = common dso_local global i32 0, align 4
@DDF_MAX_DISKS_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddf_vol_meta*)* @ddf_vol_meta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddf_vol_meta_free(%struct.ddf_vol_meta* %0) #0 {
  %2 = alloca %struct.ddf_vol_meta*, align 8
  %3 = alloca i32, align 4
  store %struct.ddf_vol_meta* %0, %struct.ddf_vol_meta** %2, align 8
  %4 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %5 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %10 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @M_MD_DDF, align 4
  %13 = call i32 @free(i32* %11, i32 %12)
  %14 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %15 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %18 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %23 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_MD_DDF, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  %27 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %28 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %31 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %36 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_MD_DDF, align 4
  %39 = call i32 @free(i32* %37, i32 %38)
  %40 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %41 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %44 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %49 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @M_MD_DDF, align 4
  %52 = call i32 @free(i32* %50, i32 %51)
  %53 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %54 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %86, %55
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @DDF_MAX_DISKS_HARD, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %62 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %71 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @M_MD_DDF, align 4
  %78 = call i32 @free(i32* %76, i32 %77)
  %79 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %2, align 8
  %80 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %69, %60
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %56

89:                                               ; preds = %56
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

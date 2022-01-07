; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddf_meta = type { i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@M_MD_DDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddf_meta*)* @ddf_meta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddf_meta_free(%struct.ddf_meta* %0) #0 {
  %2 = alloca %struct.ddf_meta*, align 8
  store %struct.ddf_meta* %0, %struct.ddf_meta** %2, align 8
  %3 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %4 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %9 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @M_MD_DDF, align 4
  %12 = call i32 @free(i32* %10, i32 %11)
  %13 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %14 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %13, i32 0, i32 6
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %17 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %22 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @M_MD_DDF, align 4
  %25 = call i32 @free(i32* %23, i32 %24)
  %26 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %27 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %30 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %35 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_MD_DDF, align 4
  %38 = call i32 @free(i32* %36, i32 %37)
  %39 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %40 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %43 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %48 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @M_MD_DDF, align 4
  %51 = call i32 @free(i32* %49, i32 %50)
  %52 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %53 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %56 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %61 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @M_MD_DDF, align 4
  %64 = call i32 @free(i32* %62, i32 %63)
  %65 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %66 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %69 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %74 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @M_MD_DDF, align 4
  %77 = call i32 @free(i32* %75, i32 %76)
  %78 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %79 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %82 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %87 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @M_MD_DDF, align 4
  %90 = call i32 @free(i32* %88, i32 %89)
  %91 = load %struct.ddf_meta*, %struct.ddf_meta** %2, align 8
  %92 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %85, %80
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

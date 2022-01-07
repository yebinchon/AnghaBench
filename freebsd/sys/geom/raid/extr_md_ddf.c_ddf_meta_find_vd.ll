; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_vd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_vd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.ddf_meta = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@vdr = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddf_meta*, i32*)* @ddf_meta_find_vd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddf_meta_find_vd(%struct.ddf_meta* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %52, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdr, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GET16(%struct.ddf_meta* %9, i32 %12)
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %7
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %20 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @memcmp(i32 %28, i32* %29, i32 24)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %77

34:                                               ; preds = %18
  br label %51

35:                                               ; preds = %15
  %36 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %37 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @isff(i32 %45, i32 24)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %77

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %7

55:                                               ; preds = %7
  %56 = load i32*, i32** %5, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdr, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @GET16(%struct.ddf_meta* %60, i32 %63)
  %65 = icmp sge i32 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %77

67:                                               ; preds = %58
  %68 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vdr, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @SET16(%struct.ddf_meta* %68, i32 %71, i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %67, %66, %48, %32
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i64 @isff(i32, i32) #1

declare dso_local i32 @SET16(%struct.ddf_meta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

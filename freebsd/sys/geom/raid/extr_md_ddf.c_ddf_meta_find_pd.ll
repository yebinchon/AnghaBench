; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_find_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ddf_meta = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@pdr = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddf_meta*, i32*, i32)* @ddf_meta_find_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddf_meta_find_pd(%struct.ddf_meta* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddf_meta*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddf_meta* %0, %struct.ddf_meta** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %74, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pdr, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @GET16(%struct.ddf_meta* %11, i32 %14)
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %9
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %22 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @memcmp(i32 %30, i32* %31, i32 24)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %102

36:                                               ; preds = %20
  br label %73

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pdr, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GET32(%struct.ddf_meta* %41, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %102

55:                                               ; preds = %40
  br label %72

56:                                               ; preds = %37
  %57 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %58 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @isff(i32 %66, i32 24)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %102

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %55
  br label %73

73:                                               ; preds = %72, %36
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %9

77:                                               ; preds = %9
  %78 = load i32*, i32** %6, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pdr, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @GET16(%struct.ddf_meta* %85, i32 %88)
  %90 = icmp sge i32 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %102

92:                                               ; preds = %83
  %93 = load %struct.ddf_meta*, %struct.ddf_meta** %5, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pdr, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @SET16(%struct.ddf_meta* %93, i32 %96, i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %102

101:                                              ; preds = %80, %77
  store i32 -1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %92, %91, %69, %53, %34
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @GET32(%struct.ddf_meta*, i32) #1

declare dso_local i64 @isff(i32, i32) #1

declare dso_local i32 @SET16(%struct.ddf_meta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

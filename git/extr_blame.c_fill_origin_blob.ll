; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_fill_origin_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_fill_origin_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.blame_origin = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Cannot read blob %s for path %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, %struct.blame_origin*, %struct.TYPE_5__*, i32*, i32)* @fill_origin_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_origin_blob(%struct.diff_options* %0, %struct.blame_origin* %1, %struct.TYPE_5__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.blame_origin*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.diff_options* %0, %struct.diff_options** %6, align 8
  store %struct.blame_origin* %1, %struct.blame_origin** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %14 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %23 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %18
  %28 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %32 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %35 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %38 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = call i64 @textconv_object(i32 %30, i32 %33, i32 %36, i32* %38, i32 1, i32* %40, i64* %12)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %50

44:                                               ; preds = %27, %18
  %45 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %46 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %45, i32 0, i32 2
  %47 = call i32 @read_object_file(i32* %46, i32* %11, i64* %12)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %43
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %60 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %59, i32 0, i32 2
  %61 = call i32 @oid_to_hex(i32* %60)
  %62 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %63 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %58, %50
  %67 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %68 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = bitcast %struct.TYPE_5__* %68 to i8*
  %71 = bitcast %struct.TYPE_5__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  br label %78

72:                                               ; preds = %5
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %75 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %74, i32 0, i32 0
  %76 = bitcast %struct.TYPE_5__* %73 to i8*
  %77 = bitcast %struct.TYPE_5__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %83 = call i32 @fill_origin_fingerprints(%struct.blame_origin* %82)
  br label %84

84:                                               ; preds = %81, %78
  ret void
}

declare dso_local i64 @textconv_object(i32, i32, i32, i32*, i32, i32*, i64*) #1

declare dso_local i32 @read_object_file(i32*, i32*, i64*) #1

declare dso_local i32 @die(i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fill_origin_fingerprints(%struct.blame_origin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

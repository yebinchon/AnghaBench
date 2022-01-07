; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_three_way_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_three_way_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.image = type { i32, i64 }
%struct.object_id = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, i8*, %struct.object_id*, %struct.object_id*, %struct.object_id*)* @three_way_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @three_way_merge(%struct.apply_state* %0, %struct.image* %1, i8* %2, %struct.object_id* %3, %struct.object_id* %4, %struct.object_id* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.apply_state*, align 8
  %9 = alloca %struct.image*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %8, align 8
  store %struct.image* %1, %struct.image** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.object_id* %3, %struct.object_id** %11, align 8
  store %struct.object_id* %4, %struct.object_id** %12, align 8
  store %struct.object_id* %5, %struct.object_id** %13, align 8
  %19 = bitcast %struct.TYPE_11__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load %struct.object_id*, %struct.object_id** %11, align 8
  %21 = call i32 @read_mmblob(%struct.TYPE_10__* %14, %struct.object_id* %20)
  %22 = load %struct.object_id*, %struct.object_id** %12, align 8
  %23 = call i32 @read_mmblob(%struct.TYPE_10__* %15, %struct.object_id* %22)
  %24 = load %struct.object_id*, %struct.object_id** %13, align 8
  %25 = call i32 @read_mmblob(%struct.TYPE_10__* %16, %struct.object_id* %24)
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.apply_state*, %struct.apply_state** %8, align 8
  %28 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ll_merge(%struct.TYPE_11__* %17, i8* %26, %struct.TYPE_10__* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32* null)
  store i32 %32, i32* %18, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @free(i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @free(i64 %37)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @free(i64 %40)
  %42 = load i32, i32* %18, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44, %6
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @free(i64 %50)
  store i32 -1, i32* %7, align 4
  br label %64

52:                                               ; preds = %44
  %53 = load %struct.image*, %struct.image** %9, align 8
  %54 = call i32 @clear_image(%struct.image* %53)
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.image*, %struct.image** %9, align 8
  %58 = getelementptr inbounds %struct.image, %struct.image* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.image*, %struct.image** %9, align 8
  %62 = getelementptr inbounds %struct.image, %struct.image* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %52, %48
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @read_mmblob(%struct.TYPE_10__*, %struct.object_id*) #2

declare dso_local i32 @ll_merge(%struct.TYPE_11__*, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, i32, i32*) #2

declare dso_local i32 @free(i64) #2

declare dso_local i32 @clear_image(%struct.image*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

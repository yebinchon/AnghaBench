; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_merging_a_throwaway_tag.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_merging_a_throwaway_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.object_id = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.tag = type { i32 }

@OBJ_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"refs/tags/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*)* @merging_a_throwaway_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merging_a_throwaway_tag(%struct.commit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.commit*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.commit*, %struct.commit** %3, align 8
  %8 = call %struct.TYPE_4__* @merge_remote_util(%struct.commit* %7)
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.commit*, %struct.commit** %3, align 8
  %12 = call %struct.TYPE_4__* @merge_remote_util(%struct.commit* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.commit*, %struct.commit** %3, align 8
  %18 = call %struct.TYPE_4__* @merge_remote_util(%struct.commit* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJ_TAG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16, %10, %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %16
  %28 = load %struct.commit*, %struct.commit** %3, align 8
  %29 = call %struct.TYPE_4__* @merge_remote_util(%struct.commit* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = bitcast %struct.TYPE_3__* %31 to %struct.tag*
  %33 = getelementptr inbounds %struct.tag, %struct.tag* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @xstrfmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @read_ref(i8* %36, %struct.object_id* %5)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %27
  %40 = load %struct.commit*, %struct.commit** %3, align 8
  %41 = call %struct.TYPE_4__* @merge_remote_util(%struct.commit* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = call i64 @oideq(%struct.object_id* %5, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %49

48:                                               ; preds = %39, %27
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %25
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_4__* @merge_remote_util(%struct.commit*) #1

declare dso_local i8* @xstrfmt(i8*, i32) #1

declare dso_local i32 @read_ref(i8*, %struct.object_id*) #1

declare dso_local i64 @oideq(%struct.object_id*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

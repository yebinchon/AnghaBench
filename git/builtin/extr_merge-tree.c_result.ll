; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_result.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_list = type { i8*, i32, %struct.blob*, %struct.merge_list* }
%struct.blob = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@the_repository = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.merge_list*, i64*)* @result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @result(%struct.merge_list* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.merge_list*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blob*, align 8
  %8 = alloca %struct.blob*, align 8
  %9 = alloca %struct.blob*, align 8
  %10 = alloca i8*, align 8
  store %struct.merge_list* %0, %struct.merge_list** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %12 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %15 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %20 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %19, i32 0, i32 2
  %21 = load %struct.blob*, %struct.blob** %20, align 8
  %22 = getelementptr inbounds %struct.blob, %struct.blob* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %5, align 8
  %25 = call i8* @read_object_file(i32* %23, i32* %6, i64* %24)
  store i8* %25, i8** %3, align 8
  br label %70

26:                                               ; preds = %2
  store %struct.blob* null, %struct.blob** %7, align 8
  %27 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %28 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %33 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %32, i32 0, i32 2
  %34 = load %struct.blob*, %struct.blob** %33, align 8
  store %struct.blob* %34, %struct.blob** %7, align 8
  %35 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %36 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %35, i32 0, i32 3
  %37 = load %struct.merge_list*, %struct.merge_list** %36, align 8
  store %struct.merge_list* %37, %struct.merge_list** %4, align 8
  br label %38

38:                                               ; preds = %31, %26
  store %struct.blob* null, %struct.blob** %8, align 8
  %39 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %40 = icmp ne %struct.merge_list* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %43 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %48 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %47, i32 0, i32 2
  %49 = load %struct.blob*, %struct.blob** %48, align 8
  store %struct.blob* %49, %struct.blob** %8, align 8
  %50 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %51 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %50, i32 0, i32 3
  %52 = load %struct.merge_list*, %struct.merge_list** %51, align 8
  store %struct.merge_list* %52, %struct.merge_list** %4, align 8
  br label %53

53:                                               ; preds = %46, %41, %38
  store %struct.blob* null, %struct.blob** %9, align 8
  %54 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %55 = icmp ne %struct.merge_list* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %58 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %57, i32 0, i32 2
  %59 = load %struct.blob*, %struct.blob** %58, align 8
  store %struct.blob* %59, %struct.blob** %9, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_repository, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.blob*, %struct.blob** %7, align 8
  %66 = load %struct.blob*, %struct.blob** %8, align 8
  %67 = load %struct.blob*, %struct.blob** %9, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = call i8* @merge_blobs(i32 %63, i8* %64, %struct.blob* %65, %struct.blob* %66, %struct.blob* %67, i64* %68)
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %60, %18
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i8* @merge_blobs(i32, i8*, %struct.blob*, %struct.blob*, %struct.blob*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

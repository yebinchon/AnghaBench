; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_merge_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_merge_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i8*, %struct.ref*, i32 }
%struct.branch = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.refspec_item = type { i32 }

@FETCH_HEAD_MERGE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref**, %struct.ref*, %struct.branch*, %struct.ref***)* @add_merge_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_merge_config(%struct.ref** %0, %struct.ref* %1, %struct.branch* %2, %struct.ref*** %3) #0 {
  %5 = alloca %struct.ref**, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.branch*, align 8
  %8 = alloca %struct.ref***, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref*, align 8
  %11 = alloca %struct.ref**, align 8
  %12 = alloca %struct.refspec_item, align 4
  store %struct.ref** %0, %struct.ref*** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store %struct.branch* %2, %struct.branch** %7, align 8
  store %struct.ref*** %3, %struct.ref**** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %77, %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.branch*, %struct.branch** %7, align 8
  %16 = getelementptr inbounds %struct.branch, %struct.branch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %13
  %20 = load %struct.ref***, %struct.ref**** %8, align 8
  %21 = load %struct.ref**, %struct.ref*** %20, align 8
  store %struct.ref** %21, %struct.ref*** %11, align 8
  %22 = load %struct.ref**, %struct.ref*** %5, align 8
  %23 = load %struct.ref*, %struct.ref** %22, align 8
  store %struct.ref* %23, %struct.ref** %10, align 8
  br label %24

24:                                               ; preds = %40, %19
  %25 = load %struct.ref*, %struct.ref** %10, align 8
  %26 = icmp ne %struct.ref* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.branch*, %struct.branch** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ref*, %struct.ref** %10, align 8
  %31 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @branch_merge_matches(%struct.branch* %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i8*, i8** @FETCH_HEAD_MERGE, align 8
  %37 = load %struct.ref*, %struct.ref** %10, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %44

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ref*, %struct.ref** %10, align 8
  %42 = getelementptr inbounds %struct.ref, %struct.ref* %41, i32 0, i32 1
  %43 = load %struct.ref*, %struct.ref** %42, align 8
  store %struct.ref* %43, %struct.ref** %10, align 8
  br label %24

44:                                               ; preds = %35, %24
  %45 = load %struct.ref*, %struct.ref** %10, align 8
  %46 = icmp ne %struct.ref* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %77

48:                                               ; preds = %44
  %49 = call i32 @memset(%struct.refspec_item* %12, i32 0, i32 4)
  %50 = load %struct.branch*, %struct.branch** %7, align 8
  %51 = getelementptr inbounds %struct.branch, %struct.branch* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %12, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ref*, %struct.ref** %6, align 8
  %61 = load %struct.ref***, %struct.ref**** %8, align 8
  %62 = call i32 @get_fetch_map(%struct.ref* %60, %struct.refspec_item* %12, %struct.ref*** %61, i32 1)
  %63 = load %struct.ref**, %struct.ref*** %11, align 8
  %64 = load %struct.ref*, %struct.ref** %63, align 8
  store %struct.ref* %64, %struct.ref** %10, align 8
  br label %65

65:                                               ; preds = %72, %48
  %66 = load %struct.ref*, %struct.ref** %10, align 8
  %67 = icmp ne %struct.ref* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i8*, i8** @FETCH_HEAD_MERGE, align 8
  %70 = load %struct.ref*, %struct.ref** %10, align 8
  %71 = getelementptr inbounds %struct.ref, %struct.ref* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load %struct.ref*, %struct.ref** %10, align 8
  %74 = getelementptr inbounds %struct.ref, %struct.ref* %73, i32 0, i32 1
  %75 = load %struct.ref*, %struct.ref** %74, align 8
  store %struct.ref* %75, %struct.ref** %10, align 8
  br label %65

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %13

80:                                               ; preds = %13
  ret void
}

declare dso_local i64 @branch_merge_matches(%struct.branch*, i32, i32) #1

declare dso_local i32 @memset(%struct.refspec_item*, i32, i32) #1

declare dso_local i32 @get_fetch_map(%struct.ref*, %struct.refspec_item*, %struct.ref***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

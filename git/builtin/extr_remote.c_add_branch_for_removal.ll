; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_add_branch_for_removal.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_add_branch_for_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.branches_for_remote = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.known_remote* }
%struct.known_remote = type { i32, %struct.known_remote* }
%struct.refspec_item = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @add_branch_for_removal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_branch_for_removal(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.branches_for_remote*, align 8
  %11 = alloca %struct.refspec_item, align 8
  %12 = alloca %struct.known_remote*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.branches_for_remote*
  store %struct.branches_for_remote* %14, %struct.branches_for_remote** %10, align 8
  %15 = call i32 @memset(%struct.refspec_item* %11, i32 0, i32 8)
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %11, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load %struct.branches_for_remote*, %struct.branches_for_remote** %10, align 8
  %19 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @remote_find_tracking(i32 %20, %struct.refspec_item* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

24:                                               ; preds = %4
  %25 = load %struct.branches_for_remote*, %struct.branches_for_remote** %10, align 8
  %26 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.known_remote*, %struct.known_remote** %28, align 8
  store %struct.known_remote* %29, %struct.known_remote** %12, align 8
  br label %30

30:                                               ; preds = %44, %24
  %31 = load %struct.known_remote*, %struct.known_remote** %12, align 8
  %32 = icmp ne %struct.known_remote* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = call i32 @memset(%struct.refspec_item* %11, i32 0, i32 8)
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %11, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.known_remote*, %struct.known_remote** %12, align 8
  %38 = getelementptr inbounds %struct.known_remote, %struct.known_remote* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @remote_find_tracking(i32 %39, %struct.refspec_item* %11)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %70

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.known_remote*, %struct.known_remote** %12, align 8
  %46 = getelementptr inbounds %struct.known_remote, %struct.known_remote* %45, i32 0, i32 1
  %47 = load %struct.known_remote*, %struct.known_remote** %46, align 8
  store %struct.known_remote* %47, %struct.known_remote** %12, align 8
  br label %30

48:                                               ; preds = %30
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @starts_with(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @starts_with(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.branches_for_remote*, %struct.branches_for_remote** %10, align 8
  %58 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i8* @abbrev_branch(i8* %60)
  %62 = call i32 @string_list_append(i32 %59, i8* %61)
  br label %63

63:                                               ; preds = %56, %52
  store i32 0, i32* %5, align 4
  br label %70

64:                                               ; preds = %48
  %65 = load %struct.branches_for_remote*, %struct.branches_for_remote** %10, align 8
  %66 = getelementptr inbounds %struct.branches_for_remote, %struct.branches_for_remote* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @string_list_append(i32 %67, i8* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %63, %42, %23
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.refspec_item*, i32, i32) #1

declare dso_local i64 @remote_find_tracking(i32, %struct.refspec_item*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @string_list_append(i32, i8*) #1

declare dso_local i8* @abbrev_branch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

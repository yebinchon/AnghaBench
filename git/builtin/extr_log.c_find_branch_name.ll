; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_find_branch_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_find_branch_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.rev_info*)* @find_branch_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_branch_name(%struct.rev_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store i32 -1, i32* %5, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  %20 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UNINTERESTING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %40

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %33
  store i8* null, i8** %2, align 8
  br label %87

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* null, i8** %2, align 8
  br label %87

47:                                               ; preds = %43
  %48 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %8, align 8
  %57 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %58 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store %struct.object_id* %66, %struct.object_id** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = call i64 @dwim_ref(i8* %67, i32 %69, %struct.object_id* %6, i8** %10)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %47
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @skip_prefix(i8* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.object_id*, %struct.object_id** %7, align 8
  %78 = call i64 @oideq(%struct.object_id* %77, %struct.object_id* %6)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %9, align 8
  %82 = call i8* @xstrdup(i8* %81)
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %80, %76, %72, %47
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i8*, i8** %11, align 8
  store i8* %86, i8** %2, align 8
  br label %87

87:                                               ; preds = %83, %46, %38
  %88 = load i8*, i8** %2, align 8
  ret i8* %88
}

declare dso_local i64 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

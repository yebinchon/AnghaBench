; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_die_expecting_a_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_die_expecting_a_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_info = type { i8*, i64 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"a branch is expected, got tag '%s'\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"a branch is expected, got remote branch '%s'\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"a branch is expected, got '%s'\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"a branch is expected, got commit '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch_info*)* @die_expecting_a_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_expecting_a_branch(%struct.branch_info* %0) #0 {
  %2 = alloca %struct.branch_info*, align 8
  %3 = alloca %struct.object_id, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.branch_info* %0, %struct.branch_info** %2, align 8
  %6 = load %struct.branch_info*, %struct.branch_info** %2, align 8
  %7 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.branch_info*, %struct.branch_info** %2, align 8
  %10 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = call i32 @dwim_ref(i8* %8, i32 %12, %struct.object_id* %3, i8** %4)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @skip_prefix(i8* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @die(i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @skip_prefix(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @die(i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @die(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.branch_info*, %struct.branch_info** %2, align 8
  %38 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.branch_info*, %struct.branch_info** %2, align 8
  %44 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @die(i32 %42, i8* %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.branch_info*, %struct.branch_info** %2, align 8
  %50 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @die(i32 %48, i8* %51)
  ret void
}

declare dso_local i32 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_exit_if_skipped_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_exit_if_skipped_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [85 x i8] c"There are only 'skip'ped commits left to test.\0AThe first %s commit could be any of:\0A\00", align 1
@term_bad = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"We cannot bisect more!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*, %struct.object_id*)* @exit_if_skipped_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_if_skipped_commits(%struct.commit_list* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.object_id*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %5 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %6 = icmp ne %struct.commit_list* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = load i8*, i8** @term_bad, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %22, %8
  %12 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %13 = icmp ne %struct.commit_list* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %16 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i8* @oid_to_hex(%struct.object_id* %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 1
  %25 = load %struct.commit_list*, %struct.commit_list** %24, align 8
  store %struct.commit_list* %25, %struct.commit_list** %3, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load %struct.object_id*, %struct.object_id** %4, align 8
  %28 = icmp ne %struct.object_id* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.object_id*, %struct.object_id** %4, align 8
  %31 = call i8* @oid_to_hex(%struct.object_id* %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* %34)
  %36 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

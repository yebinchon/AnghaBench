; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_reference_by_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_reference_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @lookup_commit_reference_by_name(i8* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.object_id, align 4
  %5 = alloca %struct.commit*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @get_oid_committish(i8* %6, %struct.object_id* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @the_repository, align 4
  %12 = call %struct.commit* @lookup_commit_reference(i32 %11, %struct.object_id* %4)
  store %struct.commit* %12, %struct.commit** %5, align 8
  %13 = load %struct.commit*, %struct.commit** %5, align 8
  %14 = call i64 @parse_commit(%struct.commit* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %19

17:                                               ; preds = %10
  %18 = load %struct.commit*, %struct.commit** %5, align 8
  store %struct.commit* %18, %struct.commit** %2, align 8
  br label %19

19:                                               ; preds = %17, %16, %9
  %20 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %20
}

declare dso_local i64 @get_oid_committish(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

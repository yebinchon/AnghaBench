; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_or_die.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"could not parse %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s %s is not a commit!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @lookup_commit_or_die(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @the_repository, align 4
  %7 = load %struct.object_id*, %struct.object_id** %3, align 8
  %8 = call %struct.commit* @lookup_commit_reference(i32 %6, %struct.object_id* %7)
  store %struct.commit* %8, %struct.commit** %5, align 8
  %9 = load %struct.commit*, %struct.commit** %5, align 8
  %10 = icmp ne %struct.commit* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @die(i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.object_id*, %struct.object_id** %3, align 8
  %17 = load %struct.commit*, %struct.commit** %5, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @oideq(%struct.object_id* %16, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.object_id*, %struct.object_id** %3, align 8
  %26 = call i32 @oid_to_hex(%struct.object_id* %25)
  %27 = call i32 @warning(i32 %23, i8* %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.commit*, %struct.commit** %5, align 8
  ret %struct.commit* %29
}

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oideq(%struct.object_id*, i32*) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

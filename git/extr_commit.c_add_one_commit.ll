; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_add_one_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_add_one_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.rev_collect = type { i64, %struct.commit**, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@TMP_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, %struct.rev_collect*)* @add_one_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_one_commit(%struct.object_id* %0, %struct.rev_collect* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.rev_collect*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.rev_collect* %1, %struct.rev_collect** %4, align 8
  %6 = load %struct.object_id*, %struct.object_id** %3, align 8
  %7 = call i64 @is_null_oid(%struct.object_id* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %56

10:                                               ; preds = %2
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object_id*, %struct.object_id** %3, align 8
  %13 = call %struct.commit* @lookup_commit(i32 %11, %struct.object_id* %12)
  store %struct.commit* %13, %struct.commit** %5, align 8
  %14 = load %struct.commit*, %struct.commit** %5, align 8
  %15 = icmp ne %struct.commit* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.commit*, %struct.commit** %5, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TMP_MARK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load %struct.commit*, %struct.commit** %5, align 8
  %26 = call i64 @parse_commit(%struct.commit* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %16, %10
  br label %56

29:                                               ; preds = %24
  %30 = load %struct.rev_collect*, %struct.rev_collect** %4, align 8
  %31 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %30, i32 0, i32 1
  %32 = load %struct.commit**, %struct.commit*** %31, align 8
  %33 = load %struct.rev_collect*, %struct.rev_collect** %4, align 8
  %34 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.rev_collect*, %struct.rev_collect** %4, align 8
  %38 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ALLOC_GROW(%struct.commit** %32, i64 %36, i32 %39)
  %41 = load %struct.commit*, %struct.commit** %5, align 8
  %42 = load %struct.rev_collect*, %struct.rev_collect** %4, align 8
  %43 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %42, i32 0, i32 1
  %44 = load %struct.commit**, %struct.commit*** %43, align 8
  %45 = load %struct.rev_collect*, %struct.rev_collect** %4, align 8
  %46 = getelementptr inbounds %struct.rev_collect, %struct.rev_collect* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = getelementptr inbounds %struct.commit*, %struct.commit** %44, i64 %47
  store %struct.commit* %41, %struct.commit** %49, align 8
  %50 = load i32, i32* @TMP_MARK, align 4
  %51 = load %struct.commit*, %struct.commit** %5, align 8
  %52 = getelementptr inbounds %struct.commit, %struct.commit* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %29, %28, %9
  ret void
}

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @ALLOC_GROW(%struct.commit**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

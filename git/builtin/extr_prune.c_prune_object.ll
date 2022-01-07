; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_prune.c_prune_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_prune.c_prune_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.rev_info = type { i32 }
%struct.stat = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"Could not stat '%s'\00", align 1
@expire = common dso_local global i64 0, align 8
@show_only = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i8*, i8*)* @prune_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prune_object(%struct.object_id* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.rev_info*
  store %struct.rev_info* %12, %struct.rev_info** %8, align 8
  %13 = load %struct.object_id*, %struct.object_id** %5, align 8
  %14 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %15 = call i64 @is_object_reachable(%struct.object_id* %13, %struct.rev_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @lstat(i8* %19, %struct.stat* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 0, i32* %4, align 4
  br label %59

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @expire, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %59

31:                                               ; preds = %25
  %32 = load i64, i64* @show_only, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @verbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @the_repository, align 4
  %39 = load %struct.object_id*, %struct.object_id** %5, align 8
  %40 = call i32 @oid_object_info(i32 %38, %struct.object_id* %39, i32* null)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.object_id*, %struct.object_id** %5, align 8
  %42 = call i8* @oid_to_hex(%struct.object_id* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = call i8* @type_name(i32 %46)
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i8* [ %47, %45 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %48 ]
  %51 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %50)
  br label %52

52:                                               ; preds = %49, %34
  %53 = load i64, i64* @show_only, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @unlink_or_warn(i8* %56)
  br label %58

58:                                               ; preds = %55, %52
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %30, %22, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @is_object_reachable(%struct.object_id*, %struct.rev_info*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @type_name(i32) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_loosen_unused_packed_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_loosen_unused_packed_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i32, i64, i64, i32, %struct.packed_git* }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot open pack index\00", align 1
@to_pack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to force loose object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loosen_unused_packed_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loosen_unused_packed_objects() #0 {
  %1 = alloca %struct.packed_git*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.object_id, align 4
  %4 = load i32, i32* @the_repository, align 4
  %5 = call %struct.packed_git* @get_all_packs(i32 %4)
  store %struct.packed_git* %5, %struct.packed_git** %1, align 8
  br label %6

6:                                                ; preds = %69, %0
  %7 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %8 = icmp ne %struct.packed_git* %7, null
  br i1 %8, label %9, label %73

9:                                                ; preds = %6
  %10 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %11 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %16 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %9
  br label %69

25:                                               ; preds = %19
  %26 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %27 = call i64 @open_pack_index(%struct.packed_git* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @die(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i64, i64* %2, align 8
  %35 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %36 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @nth_packed_object_oid(%struct.object_id* %3, %struct.packed_git* %40, i64 %41)
  %43 = call i32 @packlist_find(i32* @to_pack, %struct.object_id* %3)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %39
  %46 = call i32 @has_sha1_pack_kept_or_nonlocal(%struct.object_id* %3)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %50 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @loosened_object_can_be_discarded(%struct.object_id* %3, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %56 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @force_object_loose(%struct.object_id* %3, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @die(i32 %61)
  br label %63

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %63, %48, %45, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %2, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %2, align 8
  br label %33

68:                                               ; preds = %33
  br label %69

69:                                               ; preds = %68, %24
  %70 = load %struct.packed_git*, %struct.packed_git** %1, align 8
  %71 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %70, i32 0, i32 5
  %72 = load %struct.packed_git*, %struct.packed_git** %71, align 8
  store %struct.packed_git* %72, %struct.packed_git** %1, align 8
  br label %6

73:                                               ; preds = %6
  ret void
}

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @nth_packed_object_oid(%struct.object_id*, %struct.packed_git*, i64) #1

declare dso_local i32 @packlist_find(i32*, %struct.object_id*) #1

declare dso_local i32 @has_sha1_pack_kept_or_nonlocal(%struct.object_id*) #1

declare dso_local i32 @loosened_object_can_be_discarded(%struct.object_id*, i32) #1

declare dso_local i64 @force_object_loose(%struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

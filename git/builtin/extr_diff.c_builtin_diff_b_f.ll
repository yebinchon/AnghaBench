; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_b_f.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff.c_builtin_diff_b_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.object_array_entry = type { i8*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.stat = type { i32 }

@builtin_diff_usage = common dso_local global i32 0, align 4
@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"'%s': not a regular file or symlink\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"o/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w/\00", align 1
@S_IFINVALID = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, i32, i8**, %struct.object_array_entry**)* @builtin_diff_b_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_diff_b_f(%struct.rev_info* %0, i32 %1, i8** %2, %struct.object_array_entry** %3) #0 {
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.object_array_entry**, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store %struct.object_array_entry** %3, %struct.object_array_entry*** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @builtin_diff_usage, align 4
  %15 = call i32 @usage(i32 %14)
  br label %16

16:                                               ; preds = %13, %4
  %17 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  %19 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %20 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @GUARD_PATHSPEC(%struct.TYPE_6__* %18, i32 %21)
  %23 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @lstat(i8* %30, %struct.stat* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @die_errno(i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %16
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @S_ISREG(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISLNK(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @die(i32 %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %42, %37
  %52 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %53 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %52, i32 0, i32 0
  %54 = call i32 @diff_set_mnemonic_prefix(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %56 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %55, i64 0
  %57 = load %struct.object_array_entry*, %struct.object_array_entry** %56, align 8
  %58 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @S_IFINVALID, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @canon_mode(i32 %64)
  %66 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %67 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %66, i64 0
  %68 = load %struct.object_array_entry*, %struct.object_array_entry** %67, align 8
  %69 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 8
  br label %70

70:                                               ; preds = %62, %51
  %71 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %72 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %71, i32 0, i32 0
  %73 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %74 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %73, i64 0
  %75 = load %struct.object_array_entry*, %struct.object_array_entry** %74, align 8
  %76 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @canon_mode(i32 %79)
  %81 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %82 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %81, i64 0
  %83 = load %struct.object_array_entry*, %struct.object_array_entry** %82, align 8
  %84 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %88 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %87, i64 0
  %89 = load %struct.object_array_entry*, %struct.object_array_entry** %88, align 8
  %90 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %70
  %94 = load %struct.object_array_entry**, %struct.object_array_entry*** %8, align 8
  %95 = getelementptr inbounds %struct.object_array_entry*, %struct.object_array_entry** %94, i64 0
  %96 = load %struct.object_array_entry*, %struct.object_array_entry** %95, align 8
  %97 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  br label %101

99:                                               ; preds = %70
  %100 = load i8*, i8** %10, align 8
  br label %101

101:                                              ; preds = %99, %93
  %102 = phi i8* [ %98, %93 ], [ %100, %99 ]
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @stuff_change(i32* %72, i32 %77, i32 %80, i32* %86, i32* @null_oid, i32 1, i32 0, i8* %102, i8* %103)
  %105 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %106 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %105, i32 0, i32 0
  %107 = call i32 @diffcore_std(i32* %106)
  %108 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %109 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %108, i32 0, i32 0
  %110 = call i32 @diff_flush(i32* %109)
  ret i32 0
}

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @GUARD_PATHSPEC(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @diff_set_mnemonic_prefix(i32*, i8*, i8*) #1

declare dso_local i32 @canon_mode(i32) #1

declare dso_local i32 @stuff_change(i32*, i32, i32, i32*, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @diffcore_std(i32*) #1

declare dso_local i32 @diff_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

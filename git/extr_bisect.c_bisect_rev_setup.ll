; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_bisect_rev_setup.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_bisect_rev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.repository = type { i32 }
%struct.rev_info = type { i32, i64 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@CMIT_FMT_UNSPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bisect_rev_setup\00", align 1
@current_bad_oid = common dso_local global i64 0, align 8
@good_revs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.rev_info*, i8*, i8*, i8*, i32)* @bisect_rev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bisect_rev_setup(%struct.repository* %0, %struct.rev_info* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.argv_array, align 4
  %14 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.rev_info* %1, %struct.rev_info** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = bitcast %struct.argv_array* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %16 = load %struct.repository*, %struct.repository** %7, align 8
  %17 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @repo_init_revisions(%struct.repository* %16, %struct.rev_info* %17, i8* %18)
  %20 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @CMIT_FMT_UNSPECIFIED, align 4
  %23 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 @argv_array_push(%struct.argv_array* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* @current_bad_oid, align 8
  %28 = call i32 @oid_to_hex(i64 %27)
  %29 = call i32 @argv_array_pushf(%struct.argv_array* %13, i8* %26, i32 %28)
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %42, %6
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @good_revs, i32 0, i32 0), align 8
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @good_revs, i32 0, i32 1), align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @oid_to_hex(i64 %39)
  %41 = call i32 @argv_array_pushf(%struct.argv_array* %13, i8* %35, i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %30

45:                                               ; preds = %30
  %46 = call i32 @argv_array_push(%struct.argv_array* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @read_bisect_paths(%struct.argv_array* %13)
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %13, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %57 = call i32 @setup_revisions(i32 %53, i32 %55, %struct.rev_info* %56, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i8*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32) #2

declare dso_local i32 @oid_to_hex(i64) #2

declare dso_local i32 @read_bisect_paths(%struct.argv_array*) #2

declare dso_local i32 @setup_revisions(i32, i32, %struct.rev_info*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

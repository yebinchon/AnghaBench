; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_create_bundle.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_create_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.repository = type { i32 }
%struct.rev_info = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@bundle_signature = common dso_local global i32 0, align 4
@save_commit_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"unrecognized argument: %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Refusing to create empty bundle.\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_bundle(%struct.repository* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.lock_file, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rev_info, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %15 = bitcast %struct.lock_file* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %27 = call i32 @hold_lock_file_for_update(%struct.lock_file* %10, i8* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @bundle_signature, align 4
  %31 = load i32, i32* @bundle_signature, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = call i32 @write_or_die(i32 %29, i32 %30, i32 %32)
  store i64 0, i64* @save_commit_buffer, align 8
  %34 = load %struct.repository*, %struct.repository** %6, align 8
  %35 = call i32 @repo_init_revisions(%struct.repository* %34, %struct.rev_info* %14, i32* null)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i8**, i8*** %9, align 8
  %39 = call i64 @compute_and_write_prerequisites(i32 %36, %struct.rev_info* %14, i32 %37, i8** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %86

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = load i8**, i8*** %9, align 8
  %45 = call i32 @setup_revisions(i32 %43, i8** %44, %struct.rev_info* %14, i32* null)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8**, i8*** %9, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @error(i32 %49, i8* %52)
  br label %86

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 0
  %56 = call i32 @object_array_remove_duplicates(i32* %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @write_bundle_refs(i32 %57, %struct.rev_info* %14)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 @die(i32 %62)
  br label %69

64:                                               ; preds = %54
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %86

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @write_pack_data(i32 %70, %struct.rev_info* %14)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %86

74:                                               ; preds = %69
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = call i64 @commit_lock_file(%struct.lock_file* %10)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @die_errno(i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %74
  store i32 0, i32* %5, align 4
  br label %88

86:                                               ; preds = %73, %67, %48, %41
  %87 = call i32 @rollback_lock_file(%struct.lock_file* %10)
  store i32 -1, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i32*) #2

declare dso_local i64 @compute_and_write_prerequisites(i32, %struct.rev_info*, i32, i8**) #2

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @object_array_remove_duplicates(i32*) #2

declare dso_local i32 @write_bundle_refs(i32, %struct.rev_info*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i64 @write_pack_data(i32, %struct.rev_info*) #2

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

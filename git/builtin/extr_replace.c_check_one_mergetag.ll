; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_check_one_mergetag.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_check_one_mergetag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_extra_header = type { i32, i32 }
%struct.check_mergetag_data = type { i8**, i32 }
%struct.object_id = type { i32 }
%struct.tag = type { i32 }

@OBJ_TAG = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bad mergetag in commit '%s'\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"malformed mergetag in commit '%s'\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"not a valid object name: '%s'\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"original commit '%s' contains mergetag '%s' that is discarded; use --edit instead of --graft\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit_extra_header*, i8*)* @check_one_mergetag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_one_mergetag(%struct.commit* %0, %struct.commit_extra_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_extra_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.check_mergetag_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.tag*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id, align 4
  store %struct.commit* %0, %struct.commit** %5, align 8
  store %struct.commit_extra_header* %1, %struct.commit_extra_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.check_mergetag_data*
  store %struct.check_mergetag_data* %15, %struct.check_mergetag_data** %8, align 8
  %16 = load %struct.check_mergetag_data*, %struct.check_mergetag_data** %8, align 8
  %17 = getelementptr inbounds %struct.check_mergetag_data, %struct.check_mergetag_data* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %22 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %25 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OBJ_TAG, align 4
  %28 = call i32 @type_name(i32 %27)
  %29 = call i32 @hash_object_file(i32 %23, i32 %26, i32 %28, %struct.object_id* %10)
  %30 = load i32, i32* @the_repository, align 4
  %31 = call %struct.tag* @lookup_tag(i32 %30, %struct.object_id* %10)
  store %struct.tag* %31, %struct.tag** %11, align 8
  %32 = load %struct.tag*, %struct.tag** %11, align 8
  %33 = icmp ne %struct.tag* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (i32, i8*, ...) @error(i32 %35, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %3
  %39 = load i32, i32* @the_repository, align 4
  %40 = load %struct.tag*, %struct.tag** %11, align 8
  %41 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %42 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %45 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @parse_tag_buffer(i32 %39, %struct.tag* %40, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i32, i8*, ...) @error(i32 %50, i8* %51)
  store i32 %52, i32* %4, align 4
  br label %95

53:                                               ; preds = %38
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %87, %53
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.check_mergetag_data*, %struct.check_mergetag_data** %8, align 8
  %57 = getelementptr inbounds %struct.check_mergetag_data, %struct.check_mergetag_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %54
  %61 = load %struct.check_mergetag_data*, %struct.check_mergetag_data** %8, align 8
  %62 = getelementptr inbounds %struct.check_mergetag_data, %struct.check_mergetag_data* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @get_oid(i8* %67, %struct.object_id* %13)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.check_mergetag_data*, %struct.check_mergetag_data** %8, align 8
  %73 = getelementptr inbounds %struct.check_mergetag_data, %struct.check_mergetag_data* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @error(i32 %71, i8* %78)
  store i32 %79, i32* %4, align 4
  br label %95

80:                                               ; preds = %60
  %81 = load %struct.tag*, %struct.tag** %11, align 8
  %82 = call i32 @get_tagged_oid(%struct.tag* %81)
  %83 = call i64 @oideq(i32 %82, %struct.object_id* %13)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %95

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %54

90:                                               ; preds = %54
  %91 = call i32 @_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i8*, i8** %9, align 8
  %93 = call i8* @oid_to_hex(%struct.object_id* %10)
  %94 = call i32 (i32, i8*, ...) @error(i32 %91, i8* %92, i8* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %85, %70, %49, %34
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @hash_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local %struct.tag* @lookup_tag(i32, %struct.object_id*) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @parse_tag_buffer(i32, %struct.tag*, i32, i32) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i64 @oideq(i32, %struct.object_id*) #1

declare dso_local i32 @get_tagged_oid(%struct.tag*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

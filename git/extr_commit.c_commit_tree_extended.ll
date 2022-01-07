; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_commit_tree_extended.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_commit_tree_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32 }
%struct.object_id = type { i32 }
%struct.commit_extra_header = type { %struct.commit_extra_header* }
%struct.strbuf = type { i32, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.object_id }

@OBJ_TREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"a NUL byte in commit log message not allowed.\00", align 1
@git_commit_encoding = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"tree %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"parent %s\0A\00", align 1
@IDENT_STRICT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"author %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"committer %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"encoding %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@commit_utf8_warn = common dso_local global i32 0, align 4
@commit_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commit_tree_extended(i8* %0, i64 %1, %struct.object_id* %2, %struct.commit_list* %3, %struct.object_id* %4, i8* %5, i8* %6, %struct.commit_extra_header* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.commit_list*, align 8
  %14 = alloca %struct.object_id*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.commit_extra_header*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.strbuf, align 4
  %21 = alloca %struct.commit*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.object_id* %2, %struct.object_id** %12, align 8
  store %struct.commit_list* %3, %struct.commit_list** %13, align 8
  store %struct.object_id* %4, %struct.object_id** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.commit_extra_header* %7, %struct.commit_extra_header** %17, align 8
  %22 = load %struct.object_id*, %struct.object_id** %12, align 8
  %23 = load i32, i32* @OBJ_TREE, align 4
  %24 = call i32 @assert_oid_type(%struct.object_id* %22, i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @memchr(i8* %25, i8 signext 0, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  br label %109

31:                                               ; preds = %8
  %32 = load i8*, i8** @git_commit_encoding, align 8
  %33 = call i32 @is_encoding_utf8(i8* %32)
  store i32 %33, i32* %19, align 4
  %34 = call i32 @strbuf_init(%struct.strbuf* %20, i32 8192)
  %35 = load %struct.object_id*, %struct.object_id** %12, align 8
  %36 = call i8* @oid_to_hex(%struct.object_id* %35)
  %37 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %41, %31
  %39 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  %40 = icmp ne %struct.commit_list* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call %struct.commit* @pop_commit(%struct.commit_list** %13)
  store %struct.commit* %42, %struct.commit** %21, align 8
  %43 = load %struct.commit*, %struct.commit** %21, align 8
  %44 = getelementptr inbounds %struct.commit, %struct.commit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i8* @oid_to_hex(%struct.object_id* %45)
  %47 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %38

48:                                               ; preds = %38
  %49 = load i8*, i8** %15, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @IDENT_STRICT, align 4
  %53 = call i8* @git_author_info(i32 %52)
  store i8* %53, i8** %15, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @IDENT_STRICT, align 4
  %58 = call i8* @git_committer_info(i32 %57)
  %59 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i8*, i8** @git_commit_encoding, align 8
  %64 = call i32 @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %54
  br label %66

66:                                               ; preds = %69, %65
  %67 = load %struct.commit_extra_header*, %struct.commit_extra_header** %17, align 8
  %68 = icmp ne %struct.commit_extra_header* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.commit_extra_header*, %struct.commit_extra_header** %17, align 8
  %71 = call i32 @add_extra_header(%struct.strbuf* %20, %struct.commit_extra_header* %70)
  %72 = load %struct.commit_extra_header*, %struct.commit_extra_header** %17, align 8
  %73 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %72, i32 0, i32 0
  %74 = load %struct.commit_extra_header*, %struct.commit_extra_header** %73, align 8
  store %struct.commit_extra_header* %74, %struct.commit_extra_header** %17, align 8
  br label %66

75:                                               ; preds = %66
  %76 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext 10)
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @strbuf_add(%struct.strbuf* %20, i8* %77, i64 %78)
  %80 = load i32, i32* %19, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = call i32 @verify_utf8(%struct.strbuf* %20)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* @commit_utf8_warn, align 4
  %88 = call i8* @_(i32 %87)
  %89 = call i32 @fprintf(i32 %86, i8* %88)
  br label %90

90:                                               ; preds = %85, %82, %75
  %91 = load i8*, i8** %16, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i8*, i8** %16, align 8
  %95 = call i64 @do_sign_commit(%struct.strbuf* %20, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 -1, i32* %18, align 4
  br label %106

98:                                               ; preds = %93, %90
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @commit_type, align 4
  %104 = load %struct.object_id*, %struct.object_id** %14, align 8
  %105 = call i32 @write_object_file(i32 %100, i32 %102, i32 %103, %struct.object_id* %104)
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %98, %97
  %107 = call i32 @strbuf_release(%struct.strbuf* %20)
  %108 = load i32, i32* %18, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %106, %29
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @assert_oid_type(%struct.object_id*, i32) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @is_encoding_utf8(i8*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i8* @git_author_info(i32) #1

declare dso_local i8* @git_committer_info(i32) #1

declare dso_local i32 @add_extra_header(%struct.strbuf*, %struct.commit_extra_header*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @verify_utf8(%struct.strbuf*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i32) #1

declare dso_local i64 @do_sign_commit(%struct.strbuf*, i8*) #1

declare dso_local i32 @write_object_file(i32, i32, i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

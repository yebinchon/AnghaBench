; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_read_from_stdin.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_read_from_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.shortlog = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@read_from_stdin.author_match = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Author: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@read_from_stdin.committer_match = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"Commit: \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"committer \00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shortlog*)* @read_from_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_from_stdin(%struct.shortlog* %0) #0 {
  %2 = alloca %struct.shortlog*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.shortlog* %0, %struct.shortlog** %2, align 8
  %8 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %9 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %10 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %12 = getelementptr inbounds %struct.shortlog, %struct.shortlog* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @read_from_stdin.committer_match, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @read_from_stdin.author_match, i64 0, i64 0)
  store i8** %16, i8*** %6, align 8
  br label %17

17:                                               ; preds = %73, %72, %38, %1
  %18 = load i32, i32* @stdin, align 4
  %19 = call i64 @strbuf_getline_lf(%struct.strbuf* %3, i32 %18)
  %20 = load i64, i64* @EOF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @skip_prefix(i32 %24, i8* %27, i8** %7)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @skip_prefix(i32 %32, i8* %35, i8** %7)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %17

39:                                               ; preds = %30, %22
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* @stdin, align 4
  %42 = call i64 @strbuf_getline_lf(%struct.strbuf* %5, i32 %41)
  %43 = load i64, i64* @EOF, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i1 [ false, %40 ], [ %48, %45 ]
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %40

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* @stdin, align 4
  %55 = call i64 @strbuf_getline_lf(%struct.strbuf* %5, i32 %54)
  %56 = load i64, i64* @EOF, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %53

66:                                               ; preds = %63
  %67 = call i32 @strbuf_reset(%struct.strbuf* %4)
  %68 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @parse_stdin_author(%struct.shortlog* %68, %struct.strbuf* %4, i8* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %17

73:                                               ; preds = %66
  %74 = load %struct.shortlog*, %struct.shortlog** %2, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @insert_one_record(%struct.shortlog* %74, i32 %76, i32 %78)
  br label %17

80:                                               ; preds = %17
  %81 = call i32 @strbuf_release(%struct.strbuf* %3)
  %82 = call i32 @strbuf_release(%struct.strbuf* %4)
  %83 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @skip_prefix(i32, i8*, i8**) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @parse_stdin_author(%struct.shortlog*, %struct.strbuf*, i8*) #2

declare dso_local i32 @insert_one_record(%struct.shortlog*, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

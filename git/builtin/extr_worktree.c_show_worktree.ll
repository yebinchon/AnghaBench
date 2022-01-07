; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_show_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_show_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.worktree = type { i64, i64, i32, i64, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(bare)\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"(detached HEAD)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(error)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worktree*, i32, i32)* @show_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_worktree(%struct.worktree* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.worktree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.worktree* %0, %struct.worktree** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = load %struct.worktree*, %struct.worktree** %4, align 8
  %13 = getelementptr inbounds %struct.worktree, %struct.worktree* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strlen(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.worktree*, %struct.worktree** %4, align 8
  %18 = getelementptr inbounds %struct.worktree, %struct.worktree* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @utf8_strwidth(i32 %19)
  %21 = sub nsw i32 %16, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 1, %22
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.worktree*, %struct.worktree** %4, align 8
  %27 = getelementptr inbounds %struct.worktree, %struct.worktree* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.worktree*, %struct.worktree** %4, align 8
  %31 = getelementptr inbounds %struct.worktree, %struct.worktree* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %67

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.worktree*, %struct.worktree** %4, align 8
  %39 = getelementptr inbounds %struct.worktree, %struct.worktree* %38, i32 0, i32 2
  %40 = load i32, i32* @DEFAULT_ABBREV, align 4
  %41 = call i32 @find_unique_abbrev(i32* %39, i32 %40)
  %42 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load %struct.worktree*, %struct.worktree** %4, align 8
  %44 = getelementptr inbounds %struct.worktree, %struct.worktree* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %66

49:                                               ; preds = %36
  %50 = load %struct.worktree*, %struct.worktree** %4, align 8
  %51 = getelementptr inbounds %struct.worktree, %struct.worktree* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.worktree*, %struct.worktree** %4, align 8
  %56 = getelementptr inbounds %struct.worktree, %struct.worktree* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @shorten_unambiguous_ref(i64 %57, i32 0)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @free(i8* %61)
  br label %65

63:                                               ; preds = %49
  %64 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %54
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %34
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @utf8_strwidth(i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @find_unique_abbrev(i32*, i32) #2

declare dso_local i8* @shorten_unambiguous_ref(i64, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_suggest_reattach.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_suggest_reattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rev_info = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@ORPHAN_CUTOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" ... and %d more.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Warning: you are leaving %d commit behind, not connected to\0Aany of your branches:\0A\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Warning: you are leaving %d commits behind, not connected to\0Aany of your branches:\0A\0A%s\0A\00", align 1
@advice_detached_head = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [124 x i8] c"If you want to keep it by creating a new branch, this may be a good time\0Ato do so with:\0A\0A git branch <new-branch-name> %s\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [126 x i8] c"If you want to keep them by creating a new branch, this may be a good time\0Ato do so with:\0A\0A git branch <new-branch-name> %s\0A\0A\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.rev_info*)* @suggest_reattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suggest_reattach(%struct.commit* %0, %struct.rev_info* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  store %struct.commit* null, %struct.commit** %6, align 8
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %22, %2
  %12 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %13 = call %struct.commit* @get_revision(%struct.rev_info* %12)
  store %struct.commit* %13, %struct.commit** %5, align 8
  %14 = icmp ne %struct.commit* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ORPHAN_CUTOFF, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.commit*, %struct.commit** %5, align 8
  %21 = call i32 @describe_one_orphan(%struct.strbuf* %7, %struct.commit* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.commit*, %struct.commit** %5, align 8
  store %struct.commit* %23, %struct.commit** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* @ORPHAN_CUTOFF, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ORPHAN_CUTOFF, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.commit*, %struct.commit** %6, align 8
  %38 = call i32 @describe_one_orphan(%struct.strbuf* %7, %struct.commit* %37)
  br label %43

39:                                               ; preds = %30
  %40 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @strbuf_addf(%struct.strbuf* %7, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @Q_(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* %47, i32 %48, i8* %50)
  %52 = call i32 @strbuf_release(%struct.strbuf* %7)
  %53 = load i64, i64* @advice_detached_head, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %44
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @Q_(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.commit*, %struct.commit** %3, align 8
  %60 = getelementptr inbounds %struct.commit, %struct.commit* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* @DEFAULT_ABBREV, align 4
  %63 = call i8* @find_unique_abbrev(i32* %61, i32 %62)
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* %58, i8* %63)
  br label %65

65:                                               ; preds = %55, %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #2

declare dso_local i32 @describe_one_orphan(%struct.strbuf*, %struct.commit*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @Q_(i8*, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @find_unique_abbrev(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

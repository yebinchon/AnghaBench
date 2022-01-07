; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_describe_detached_head.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_describe_detached_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@CMIT_FMT_ONELINE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s %s... %s\0A\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.commit*)* @describe_detached_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @describe_detached_head(i8* %0, %struct.commit* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %7 = load %struct.commit*, %struct.commit** %4, align 8
  %8 = call i32 @parse_commit(%struct.commit* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @CMIT_FMT_ONELINE, align 4
  %12 = load %struct.commit*, %struct.commit** %4, align 8
  %13 = call i32 @pp_commit_easy(i32 %11, %struct.commit* %12, %struct.strbuf* %5)
  br label %14

14:                                               ; preds = %10, %2
  %15 = call i64 (...) @print_sha1_ellipsis()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.commit*, %struct.commit** %4, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* @DEFAULT_ABBREV, align 4
  %24 = call i8* @find_unique_abbrev(i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %24, i8* %26)
  br label %39

28:                                               ; preds = %14
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.commit*, %struct.commit** %4, align 8
  %32 = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @DEFAULT_ABBREV, align 4
  %35 = call i8* @find_unique_abbrev(i32* %33, i32 %34)
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %35, i8* %37)
  br label %39

39:                                               ; preds = %28, %17
  %40 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @parse_commit(%struct.commit*) #2

declare dso_local i32 @pp_commit_easy(i32, %struct.commit*, %struct.strbuf*) #2

declare dso_local i64 @print_sha1_ellipsis(...) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @find_unique_abbrev(i32*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reset.c_print_new_head_line.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reset.c_print_new_head_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"HEAD is now at %s\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@CMIT_FMT_ONELINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*)* @print_new_head_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_new_head_line(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.strbuf, align 8
  store %struct.commit* %0, %struct.commit** %2, align 8
  %4 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %5 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.commit*, %struct.commit** %2, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @DEFAULT_ABBREV, align 4
  %10 = call i8* @find_unique_abbrev(i32* %8, i32 %9)
  %11 = call i32 @printf(i8* %5, i8* %10)
  %12 = load i32, i32* @CMIT_FMT_ONELINE, align 4
  %13 = load %struct.commit*, %struct.commit** %2, align 8
  %14 = call i32 @pp_commit_easy(i32 %12, %struct.commit* %13, %struct.strbuf* %3)
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = call i32 @putchar(i8 signext 10)
  %24 = call i32 @strbuf_release(%struct.strbuf* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @find_unique_abbrev(i32*, i32) #2

declare dso_local i32 @pp_commit_easy(i32, %struct.commit*, %struct.strbuf*) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

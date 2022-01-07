; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_move_to_original_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_move_to_original_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rebase_options = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"move_to_original_branch without onto\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"rebase finished: %s onto %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"rebase finished: returning to %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RESET_HEAD_REFS_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*)* @move_to_original_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_to_original_branch(%struct.rebase_options* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rebase_options*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32, align 4
  store %struct.rebase_options* %0, %struct.rebase_options** %3, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %10 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %16 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @BUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %23 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %26 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @oid_to_hex(i32* %29)
  %31 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %30)
  %32 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %33 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %37 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RESET_HEAD_REFS_ONLY, align 4
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @reset_head(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %39, i32 %41, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = call i32 @strbuf_release(%struct.strbuf* %4)
  %46 = call i32 @strbuf_release(%struct.strbuf* %5)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %21, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @reset_head(i32*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

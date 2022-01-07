; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_for_each_tag_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_for_each_tag_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"refs/tags/%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tag '%s' not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64 (i8*, i32, %struct.object_id*, i8*)*, i8*)* @for_each_tag_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_tag_name(i8** %0, i64 (i8*, i32, %struct.object_id*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64 (i8*, i32, %struct.object_id*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  store i8** %0, i8*** %4, align 8
  store i64 (i8*, i32, %struct.object_id*, i8*)* %1, i64 (i8*, i32, %struct.object_id*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load i8**, i8*** %4, align 8
  store i8** %12, i8*** %7, align 8
  br label %13

13:                                               ; preds = %42, %3
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %19 = load i8**, i8*** %7, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @read_ref(i32 %23, %struct.object_id* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @error(i32 %27, i8* %29)
  store i32 1, i32* %9, align 4
  br label %42

31:                                               ; preds = %17
  %32 = load i64 (i8*, i32, %struct.object_id*, i8*)*, i64 (i8*, i32, %struct.object_id*, i8*)** %5, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 %32(i8* %34, i32 %36, %struct.object_id* %10, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %7, align 8
  br label %13

45:                                               ; preds = %13
  %46 = call i32 @strbuf_release(%struct.strbuf* %8)
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i64 @read_ref(i32, %struct.object_id*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

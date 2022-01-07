; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_name-rev.c_show_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_name-rev.c_show_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object = type { %struct.object_id }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"undefined\0A\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot describe '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, i8*, i32, i32, i32)* @show_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_name(%struct.object* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.strbuf, align 4
  store %struct.object* %0, %struct.object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.object*, %struct.object** %6, align 8
  %15 = getelementptr inbounds %struct.object, %struct.object* %14, i32 0, i32 0
  store %struct.object_id* %15, %struct.object_id** %12, align 8
  %16 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  br label %27

24:                                               ; preds = %19
  %25 = load %struct.object_id*, %struct.object_id** %12, align 8
  %26 = call i8* @oid_to_hex(%struct.object_id* %25)
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i8* [ %23, %22 ], [ %26, %24 ]
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %5
  %31 = load %struct.object*, %struct.object** %6, align 8
  %32 = call i8* @get_rev_name(%struct.object* %31, %struct.strbuf* %13)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %57

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.object_id*, %struct.object_id** %12, align 8
  %48 = load i32, i32* @DEFAULT_ABBREV, align 4
  %49 = call i8* @find_unique_abbrev(%struct.object_id* %47, i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %55

51:                                               ; preds = %43
  %52 = load %struct.object_id*, %struct.object_id** %12, align 8
  %53 = call i8* @oid_to_hex(%struct.object_id* %52)
  %54 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %35
  %58 = call i32 @strbuf_release(%struct.strbuf* %13)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i8* @get_rev_name(%struct.object*, %struct.strbuf*) #2

declare dso_local i8* @find_unique_abbrev(%struct.object_id*, i32) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

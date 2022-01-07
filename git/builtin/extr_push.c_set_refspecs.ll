; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_set_refspecs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_set_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i32 }
%struct.ref = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"tag shorthand without <tag>\00", align 1
@deleterefs = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c":refs/tags/%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"refs/tags/%s\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"--delete only accepts plain target ref names\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@rs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i8*)* @set_refspecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_refspecs(i8** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.remote*, align 8
  %8 = alloca %struct.ref*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.strbuf, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store %struct.remote* null, %struct.remote** %7, align 8
  store %struct.ref* null, %struct.ref** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %87, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load i8**, i8*** %4, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %17
  %27 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @die(i32 %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load i64, i64* @deleterefs, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %49

46:                                               ; preds = %35
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = call i8* @strbuf_detach(%struct.strbuf* %11, i32* null)
  store i8* %50, i8** %10, align 8
  br label %84

51:                                               ; preds = %17
  %52 = load i64, i64* @deleterefs, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %56 = load i8*, i8** %10, align 8
  %57 = call i64 @strchr(i8* %56, i8 signext 58)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @die(i32 %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %65, i8** %10, align 8
  br label %83

66:                                               ; preds = %51
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @strchr(i8* %67, i8 signext 58)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = load %struct.remote*, %struct.remote** %7, align 8
  %72 = icmp ne %struct.remote* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = call %struct.remote* @remote_get(i8* %74)
  store %struct.remote* %75, %struct.remote** %7, align 8
  %76 = call %struct.ref* (...) @get_local_heads()
  store %struct.ref* %76, %struct.ref** %8, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.remote*, %struct.remote** %7, align 8
  %80 = load %struct.ref*, %struct.ref** %8, align 8
  %81 = call i8* @map_refspec(i8* %78, %struct.remote* %79, %struct.ref* %80)
  store i8* %81, i8** %10, align 8
  br label %82

82:                                               ; preds = %77, %66
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83, %49
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @refspec_append(i32* @rs, i8* %85)
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %13

90:                                               ; preds = %13
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.remote* @remote_get(i8*) #1

declare dso_local %struct.ref* @get_local_heads(...) #1

declare dso_local i8* @map_refspec(i8*, %struct.remote*, %struct.ref*) #1

declare dso_local i32 @refspec_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

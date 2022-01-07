; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_stgit_patch_to_mail.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_stgit_patch_to_mail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"Author:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"From:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Subject: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @stgit_patch_to_mail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stgit_patch_to_mail(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %62, %21, %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @strbuf_getline_lf(%struct.strbuf* %7, i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %63

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @str_isspace(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %11

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @skip_prefix(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %61

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @starts_with(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @starts_with(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %31
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %60

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  store i32 1, i32* %8, align 4
  br label %59

54:                                               ; preds = %46
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @fprintf(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %27
  br label %62

62:                                               ; preds = %61
  br label %11

63:                                               ; preds = %54, %11
  %64 = call i32 @strbuf_reset(%struct.strbuf* %7)
  br label %65

65:                                               ; preds = %69, %63
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @strbuf_fread(%struct.strbuf* %7, i32 8192, i32* %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @fwrite(i8* %71, i32 1, i32 %73, i32* %74)
  %76 = call i32 @strbuf_reset(%struct.strbuf* %7)
  br label %65

77:                                               ; preds = %65
  %78 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i64 @str_isspace(i8*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @strbuf_fread(%struct.strbuf*, i32, i32*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

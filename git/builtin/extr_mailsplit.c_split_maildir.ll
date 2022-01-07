; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_split_maildir.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_split_maildir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@maildir_filename_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot open mail %s\00", align 1
@buf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot read mail %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s/%0*d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @split_maildir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_maildir(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.string_list, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 -1, i32* %11, align 4
  %15 = bitcast %struct.string_list* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 24, i1 false)
  %16 = load i32, i32* @maildir_filename_cmp, align 4
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @populate_maildir_list(%struct.string_list* %13, i8* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %72

22:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i32, i32* %12, align 4
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %23
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* (i8*, i8*, i32, ...) @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32* @fopen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %28
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @error_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %72

47:                                               ; preds = %28
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @strbuf_getwholeline(i32* @buf, i32* %48, i8 signext 10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @error_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %72

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = call i8* (i8*, i8*, i32, ...) @xstrfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %55, i32 %56, i32 %58)
  store i8* %59, i8** %14, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @split_one(i32* %60, i8* %61, i32 1)
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @fclose(i32* %65)
  store i32* null, i32** %10, align 8
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %23

70:                                               ; preds = %23
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %51, %44, %21
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @fclose(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @free(i8* %79)
  %81 = call i32 @string_list_clear(%struct.string_list* %13, i32 1)
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @populate_maildir_list(%struct.string_list*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrfmt(i8*, i8*, i32, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @error_errno(i8*, i8*) #2

declare dso_local i64 @strbuf_getwholeline(i32*, i32*, i8 signext) #2

declare dso_local i32 @split_one(i32*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

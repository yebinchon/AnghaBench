; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_say_patch_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_say_patch_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.patch = type { i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c" => \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.patch*)* @say_patch_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_patch_name(i32* %0, i8* %1, %struct.patch* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.patch*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.patch* %2, %struct.patch** %6, align 8
  %9 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %10 = load %struct.patch*, %struct.patch** %6, align 8
  %11 = getelementptr inbounds %struct.patch, %struct.patch* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.patch*, %struct.patch** %6, align 8
  %16 = getelementptr inbounds %struct.patch, %struct.patch* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.patch*, %struct.patch** %6, align 8
  %21 = getelementptr inbounds %struct.patch, %struct.patch* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.patch*, %struct.patch** %6, align 8
  %24 = getelementptr inbounds %struct.patch, %struct.patch* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %22, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load %struct.patch*, %struct.patch** %6, align 8
  %30 = getelementptr inbounds %struct.patch, %struct.patch* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @quote_c_style(i8* %31, %struct.strbuf* %7, i32* null, i32 0)
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.patch*, %struct.patch** %6, align 8
  %35 = getelementptr inbounds %struct.patch, %struct.patch* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @quote_c_style(i8* %36, %struct.strbuf* %7, i32* null, i32 0)
  br label %51

38:                                               ; preds = %19, %14, %3
  %39 = load %struct.patch*, %struct.patch** %6, align 8
  %40 = getelementptr inbounds %struct.patch, %struct.patch* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load %struct.patch*, %struct.patch** %6, align 8
  %46 = getelementptr inbounds %struct.patch, %struct.patch* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @quote_c_style(i8* %49, %struct.strbuf* %7, i32* null, i32 0)
  br label %51

51:                                               ; preds = %48, %28
  %52 = load i32*, i32** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @fprintf(i32* %52, i8* %53, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @fputc(i8 signext 10, i32* %57)
  %59 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @quote_c_style(i8*, %struct.strbuf*, i32*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i32) #2

declare dso_local i32 @fputc(i8 signext, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_find_name_gnu.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_find_name_gnu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.strbuf*, i8*, i32)* @find_name_gnu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_name_gnu(%struct.strbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @unquote_c_style(%struct.strbuf* %8, i8* %11, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @strbuf_release(%struct.strbuf* %8)
  store i8* null, i8** %4, align 8
  br label %59

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 47)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @strbuf_release(%struct.strbuf* %8)
  store i8* null, i8** %4, align 8
  br label %59

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %36 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @strbuf_remove(%struct.strbuf* %8, i32 0, i32 %42)
  %44 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %35
  %49 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strbuf_insert(%struct.strbuf* %8, i32 0, i8* %51, i32 %54)
  br label %56

56:                                               ; preds = %48, %35
  %57 = call i32 @strbuf_detach(%struct.strbuf* %8, i32* null)
  %58 = call i8* @squash_slash(i32 %57)
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %56, %27, %14
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unquote_c_style(%struct.strbuf*, i8*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i8* @squash_slash(i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

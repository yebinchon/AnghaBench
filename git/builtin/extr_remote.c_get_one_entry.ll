; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_get_one_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_get_one_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i32, i8**, i32, i8**, i32 }
%struct.string_list = type { i32 }
%struct.TYPE_2__ = type { i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s (fetch)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s (push)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.remote*, i8*)* @get_one_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_one_entry(%struct.remote* %0, i8* %1) #0 {
  %3 = alloca %struct.remote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.remote* %0, %struct.remote** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.string_list*
  store %struct.string_list* %11, %struct.string_list** %5, align 8
  %12 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load %struct.remote*, %struct.remote** %3, align 8
  %14 = getelementptr inbounds %struct.remote, %struct.remote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.remote*, %struct.remote** %3, align 8
  %19 = getelementptr inbounds %struct.remote, %struct.remote* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.string_list*, %struct.string_list** %5, align 8
  %27 = load %struct.remote*, %struct.remote** %3, align 8
  %28 = getelementptr inbounds %struct.remote, %struct.remote* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_2__* @string_list_append(%struct.string_list* %26, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* %25, i32** %31, align 8
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.string_list*, %struct.string_list** %5, align 8
  %34 = load %struct.remote*, %struct.remote** %3, align 8
  %35 = getelementptr inbounds %struct.remote, %struct.remote* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_2__* @string_list_append(%struct.string_list* %33, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %17
  %40 = load %struct.remote*, %struct.remote** %3, align 8
  %41 = getelementptr inbounds %struct.remote, %struct.remote* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.remote*, %struct.remote** %3, align 8
  %46 = getelementptr inbounds %struct.remote, %struct.remote* %45, i32 0, i32 3
  %47 = load i8**, i8*** %46, align 8
  store i8** %47, i8*** %7, align 8
  %48 = load %struct.remote*, %struct.remote** %3, align 8
  %49 = getelementptr inbounds %struct.remote, %struct.remote* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  br label %58

51:                                               ; preds = %39
  %52 = load %struct.remote*, %struct.remote** %3, align 8
  %53 = getelementptr inbounds %struct.remote, %struct.remote* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %7, align 8
  %55 = load %struct.remote*, %struct.remote** %3, align 8
  %56 = getelementptr inbounds %struct.remote, %struct.remote* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %44
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.string_list*, %struct.string_list** %5, align 8
  %73 = load %struct.remote*, %struct.remote** %3, align 8
  %74 = getelementptr inbounds %struct.remote, %struct.remote* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_2__* @string_list_append(%struct.string_list* %72, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32* %71, i32** %77, align 8
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %59

81:                                               ; preds = %59
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local %struct.TYPE_2__* @string_list_append(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

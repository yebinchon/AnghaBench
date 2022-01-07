; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_include_by_gitdir.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_include_by_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.config_options = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@WM_PATHNAME = common dso_local global i32 0, align 4
@WM_CASEFOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_options*, i8*, i64, i32)* @include_by_gitdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @include_by_gitdir(%struct.config_options* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.config_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.config_options* %0, %struct.config_options** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.config_options*, %struct.config_options** %5, align 8
  %18 = getelementptr inbounds %struct.config_options, %struct.config_options* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.config_options*, %struct.config_options** %5, align 8
  %23 = getelementptr inbounds %struct.config_options, %struct.config_options* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  br label %26

25:                                               ; preds = %4
  br label %105

26:                                               ; preds = %21
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @strbuf_realpath(%struct.strbuf* %9, i8* %27, i32 1)
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @strbuf_add(%struct.strbuf* %10, i8* %29, i64 %30)
  %32 = call i32 @prepare_include_condition_pattern(%struct.strbuf* %10)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %100, %26
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %105

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %105

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @strncmp(i64 %51, i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %105

58:                                               ; preds = %49, %46
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @strncasecmp(i64 %63, i64 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %105

70:                                               ; preds = %61, %58
  br label %71

71:                                               ; preds = %70, %37
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i32, i32* @WM_PATHNAME, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* @WM_CASEFOLD, align 4
  br label %88

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = or i32 %82, %89
  %91 = call i32 @wildmatch(i64 %76, i64 %81, i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = call i32 @strbuf_reset(%struct.strbuf* %9)
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @strbuf_add_absolute_path(%struct.strbuf* %9, i8* %102)
  store i32 1, i32* %14, align 4
  br label %33

104:                                              ; preds = %97, %88
  br label %105

105:                                              ; preds = %104, %69, %57, %45, %36, %25
  %106 = call i32 @strbuf_release(%struct.strbuf* %10)
  %107 = call i32 @strbuf_release(%struct.strbuf* %9)
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_realpath(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @prepare_include_condition_pattern(%struct.strbuf*) #2

declare dso_local i64 @strncmp(i64, i64, i32) #2

declare dso_local i64 @strncasecmp(i64, i64, i32) #2

declare dso_local i32 @wildmatch(i64, i64, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add_absolute_path(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

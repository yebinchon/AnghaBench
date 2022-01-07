; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_config_with_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_config_with_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_include_data = type { %struct.config_options*, i8*, i32 }
%struct.config_options = type { i64 }
%struct.git_config_source = type { i64, i64, i64 }

@CONFIG_INCLUDE_INIT = common dso_local global %struct.config_include_data zeroinitializer, align 8
@git_config_include = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_with_options(i32 %0, i8* %1, %struct.git_config_source* %2, %struct.config_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.git_config_source*, align 8
  %9 = alloca %struct.config_options*, align 8
  %10 = alloca %struct.config_include_data, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.git_config_source* %2, %struct.git_config_source** %8, align 8
  store %struct.config_options* %3, %struct.config_options** %9, align 8
  %11 = bitcast %struct.config_include_data* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.config_include_data* @CONFIG_INCLUDE_INIT to i8*), i64 24, i1 false)
  %12 = load %struct.config_options*, %struct.config_options** %9, align 8
  %13 = getelementptr inbounds %struct.config_options, %struct.config_options* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %10, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %10, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load %struct.config_options*, %struct.config_options** %9, align 8
  %22 = getelementptr inbounds %struct.config_include_data, %struct.config_include_data* %10, i32 0, i32 0
  store %struct.config_options* %21, %struct.config_options** %22, align 8
  %23 = load i32, i32* @git_config_include, align 4
  store i32 %23, i32* %6, align 4
  %24 = bitcast %struct.config_include_data* %10 to i8*
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %16, %4
  %26 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %27 = icmp ne %struct.git_config_source* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %30 = getelementptr inbounds %struct.git_config_source, %struct.git_config_source* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @git_config_from_stdin(i32 %34, i8* %35)
  store i32 %36, i32* %5, align 4
  br label %74

37:                                               ; preds = %28, %25
  %38 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %39 = icmp ne %struct.git_config_source* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %42 = getelementptr inbounds %struct.git_config_source, %struct.git_config_source* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %48 = getelementptr inbounds %struct.git_config_source, %struct.git_config_source* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @git_config_from_file(i32 %46, i64 %49, i8* %50)
  store i32 %51, i32* %5, align 4
  br label %74

52:                                               ; preds = %40, %37
  %53 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %54 = icmp ne %struct.git_config_source* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %57 = getelementptr inbounds %struct.git_config_source, %struct.git_config_source* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.git_config_source*, %struct.git_config_source** %8, align 8
  %63 = getelementptr inbounds %struct.git_config_source, %struct.git_config_source* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @git_config_from_blob_ref(i32 %61, i64 %64, i8* %65)
  store i32 %66, i32* %5, align 4
  br label %74

67:                                               ; preds = %55, %52
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.config_options*, %struct.config_options** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @do_git_config_sequence(%struct.config_options* %70, i32 %71, i8* %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %60, %45, %33
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config_from_stdin(i32, i8*) #2

declare dso_local i32 @git_config_from_file(i32, i64, i8*) #2

declare dso_local i32 @git_config_from_blob_ref(i32, i64, i8*) #2

declare dso_local i32 @do_git_config_sequence(%struct.config_options*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_config_parse_parameter.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_config_parse_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"bogus config parameter: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_parse_parameter(i8* %0, i64 (i8*, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strbuf**, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 (i8*, i8*, i8*)* %1, i64 (i8*, i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.strbuf** @strbuf_split_str(i8* %12, i8 signext 61, i32 2)
  store %struct.strbuf** %13, %struct.strbuf*** %10, align 8
  %14 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %15 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %14, i64 0
  %16 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %17 = icmp ne %struct.strbuf* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @error(i32 %19, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  %23 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %24 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %23, i64 0
  %25 = load %struct.strbuf*, %struct.strbuf** %24, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %22
  %30 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %31 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %30, i64 0
  %32 = load %struct.strbuf*, %struct.strbuf** %31, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %36 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %35, i64 0
  %37 = load %struct.strbuf*, %struct.strbuf** %36, align 8
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %34, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 61
  br i1 %45, label %46, label %70

46:                                               ; preds = %29
  %47 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %48 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %47, i64 0
  %49 = load %struct.strbuf*, %struct.strbuf** %48, align 8
  %50 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %51 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %50, i64 0
  %52 = load %struct.strbuf*, %struct.strbuf** %51, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @strbuf_setlen(%struct.strbuf* %49, i32 %55)
  %57 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %58 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %57, i64 1
  %59 = load %struct.strbuf*, %struct.strbuf** %58, align 8
  %60 = icmp ne %struct.strbuf* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %46
  %62 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %63 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %62, i64 1
  %64 = load %struct.strbuf*, %struct.strbuf** %63, align 8
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %61
  %69 = phi i8* [ %66, %61 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %67 ]
  store i8* %69, i8** %8, align 8
  br label %71

70:                                               ; preds = %29, %22
  store i8* null, i8** %8, align 8
  br label %71

71:                                               ; preds = %70, %68
  %72 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %73 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %72, i64 0
  %74 = load %struct.strbuf*, %struct.strbuf** %73, align 8
  %75 = call i32 @strbuf_trim(%struct.strbuf* %74)
  %76 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %77 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %76, i64 0
  %78 = load %struct.strbuf*, %struct.strbuf** %77, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %71
  %83 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %84 = call i32 @strbuf_list_free(%struct.strbuf** %83)
  %85 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @error(i32 %85, i8* %86)
  store i32 %87, i32* %4, align 4
  br label %112

88:                                               ; preds = %71
  %89 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %90 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %89, i64 0
  %91 = load %struct.strbuf*, %struct.strbuf** %90, align 8
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @git_config_parse_key(i8* %93, i8** %9, i32* null)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 -1, i32* %11, align 4
  br label %108

97:                                               ; preds = %88
  %98 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %6, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i64 %98(i8* %99, i8* %100, i8* %101)
  %103 = icmp slt i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 -1, i32 0
  store i32 %105, i32* %11, align 4
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %97, %96
  %109 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %110 = call i32 @strbuf_list_free(%struct.strbuf** %109)
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %82, %18
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.strbuf** @strbuf_split_str(i8*, i8 signext, i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #1

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #1

declare dso_local i64 @git_config_parse_key(i8*, i8**, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

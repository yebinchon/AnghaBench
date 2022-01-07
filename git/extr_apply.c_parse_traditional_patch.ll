; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_traditional_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_traditional_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i32, i32, i32 }
%struct.patch = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [44 x i8] c"unable to find filename in patch at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i8*, %struct.patch*)* @parse_traditional_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_traditional_patch(%struct.apply_state* %0, i8* %1, i8* %2, %struct.patch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.patch*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.patch* %3, %struct.patch** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 4
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %17, i8** %8, align 8
  %18 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %4
  %23 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @guess_p_value(%struct.apply_state* %23, i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @guess_p_value(%struct.apply_state* %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = load i32, i32* %11, align 4
  %35 = icmp sle i32 0, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %43 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %45 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %36, %33
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @is_dev_null(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.patch*, %struct.patch** %9, align 8
  %53 = getelementptr inbounds %struct.patch, %struct.patch* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.patch*, %struct.patch** %9, align 8
  %55 = getelementptr inbounds %struct.patch, %struct.patch* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %57 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %56, i32 0, i32 3
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %60 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @find_name_traditional(i32* %57, i8* %58, i8* null, i32 %61)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.patch*, %struct.patch** %9, align 8
  %65 = getelementptr inbounds %struct.patch, %struct.patch* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %137

66:                                               ; preds = %47
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @is_dev_null(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load %struct.patch*, %struct.patch** %9, align 8
  %72 = getelementptr inbounds %struct.patch, %struct.patch* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.patch*, %struct.patch** %9, align 8
  %74 = getelementptr inbounds %struct.patch, %struct.patch* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %76 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %75, i32 0, i32 3
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %79 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @find_name_traditional(i32* %76, i8* %77, i8* null, i32 %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.patch*, %struct.patch** %9, align 8
  %84 = getelementptr inbounds %struct.patch, %struct.patch* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  br label %136

85:                                               ; preds = %66
  %86 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %87 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %86, i32 0, i32 3
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %90 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @find_name_traditional(i32* %87, i8* %88, i8* null, i32 %91)
  store i8* %92, i8** %13, align 8
  %93 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %94 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %93, i32 0, i32 3
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %98 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @find_name_traditional(i32* %94, i8* %95, i8* %96, i32 %99)
  store i8* %100, i8** %10, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %7, align 8
  %104 = call i64 @has_epoch_timestamp(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %85
  %107 = load %struct.patch*, %struct.patch** %9, align 8
  %108 = getelementptr inbounds %struct.patch, %struct.patch* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.patch*, %struct.patch** %9, align 8
  %110 = getelementptr inbounds %struct.patch, %struct.patch* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.patch*, %struct.patch** %9, align 8
  %113 = getelementptr inbounds %struct.patch, %struct.patch* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %135

114:                                              ; preds = %85
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @has_epoch_timestamp(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.patch*, %struct.patch** %9, align 8
  %120 = getelementptr inbounds %struct.patch, %struct.patch* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load %struct.patch*, %struct.patch** %9, align 8
  %122 = getelementptr inbounds %struct.patch, %struct.patch* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = load i8*, i8** %10, align 8
  %124 = load %struct.patch*, %struct.patch** %9, align 8
  %125 = getelementptr inbounds %struct.patch, %struct.patch* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  br label %134

126:                                              ; preds = %114
  %127 = load i8*, i8** %10, align 8
  %128 = load %struct.patch*, %struct.patch** %9, align 8
  %129 = getelementptr inbounds %struct.patch, %struct.patch* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = call i8* @xstrdup_or_null(i8* %130)
  %132 = load %struct.patch*, %struct.patch** %9, align 8
  %133 = getelementptr inbounds %struct.patch, %struct.patch* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %126, %118
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %70
  br label %137

137:                                              ; preds = %136, %51
  %138 = load i8*, i8** %10, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %143 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @error(i32 %141, i32 %144)
  store i32 %145, i32* %5, align 4
  br label %147

146:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %140
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @guess_p_value(%struct.apply_state*, i8*) #1

declare dso_local i64 @is_dev_null(i8*) #1

declare dso_local i8* @find_name_traditional(i32*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @has_epoch_timestamp(i8*) #1

declare dso_local i8* @xstrdup_or_null(i8*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_alias.c_config_alias_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_alias.c_config_alias_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_alias_data = type { i64, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"alias.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @config_alias_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_alias_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_alias_data*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.config_alias_data*
  store %struct.config_alias_data* %11, %struct.config_alias_data** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @skip_prefix(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load %struct.config_alias_data*, %struct.config_alias_data** %8, align 8
  %18 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.config_alias_data*, %struct.config_alias_data** %8, align 8
  %24 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @strcasecmp(i8* %22, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.config_alias_data*, %struct.config_alias_data** %8, align 8
  %30 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %29, i32 0, i32 1
  %31 = bitcast i32* %30 to i8**
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @git_config_string(i8** %31, i8* %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %49

35:                                               ; preds = %21
  br label %48

36:                                               ; preds = %16
  %37 = load %struct.config_alias_data*, %struct.config_alias_data** %8, align 8
  %38 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.config_alias_data*, %struct.config_alias_data** %8, align 8
  %43 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @string_list_append(i64 %44, i8* %45)
  br label %47

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %47, %35
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %28, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i64) #1

declare dso_local i32 @git_config_string(i8**, i8*, i8*) #1

declare dso_local i32 @string_list_append(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

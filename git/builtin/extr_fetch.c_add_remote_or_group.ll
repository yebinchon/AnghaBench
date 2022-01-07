; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_remote_or_group.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_remote_or_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.remote_group_data = type { i8*, %struct.string_list* }
%struct.remote = type { i32 }

@get_remote_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.string_list*)* @add_remote_or_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_remote_or_group(i8* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.remote_group_data, align 8
  %8 = alloca %struct.remote*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  %9 = load %struct.string_list*, %struct.string_list** %5, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds %struct.remote_group_data, %struct.remote_group_data* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.string_list*, %struct.string_list** %5, align 8
  %15 = getelementptr inbounds %struct.remote_group_data, %struct.remote_group_data* %7, i32 0, i32 1
  store %struct.string_list* %14, %struct.string_list** %15, align 8
  %16 = load i32, i32* @get_remote_group, align 4
  %17 = call i32 @git_config(i32 %16, %struct.remote_group_data* %7)
  %18 = load %struct.string_list*, %struct.string_list** %5, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.remote* @remote_get(i8* %24)
  store %struct.remote* %25, %struct.remote** %8, align 8
  %26 = load %struct.remote*, %struct.remote** %8, align 8
  %27 = call i32 @remote_is_configured(%struct.remote* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.string_list*, %struct.string_list** %5, align 8
  %32 = load %struct.remote*, %struct.remote** %8, align 8
  %33 = getelementptr inbounds %struct.remote, %struct.remote* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @string_list_append(%struct.string_list* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %2
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @git_config(i32, %struct.remote_group_data*) #1

declare dso_local %struct.remote* @remote_get(i8*) #1

declare dso_local i32 @remote_is_configured(%struct.remote*, i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

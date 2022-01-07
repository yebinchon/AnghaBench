; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_configset_get_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_configset_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_set = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_configset_get_value(%struct.config_set* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.string_list*, align 8
  store %struct.config_set* %0, %struct.config_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.string_list* null, %struct.string_list** %8, align 8
  %9 = load %struct.config_set*, %struct.config_set** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.string_list* @git_configset_get_value_multi(%struct.config_set* %9, i8* %10)
  store %struct.string_list* %11, %struct.string_list** %8, align 8
  %12 = load %struct.string_list*, %struct.string_list** %8, align 8
  %13 = icmp ne %struct.string_list* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.string_list*, %struct.string_list** %8, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.string_list*, %struct.string_list** %8, align 8
  %23 = getelementptr inbounds %struct.string_list, %struct.string_list* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.string_list*, %struct.string_list** %8, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %15, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.string_list* @git_configset_get_value_multi(%struct.config_set*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

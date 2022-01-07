; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_configset_get_value_multi.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_configset_get_value_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.config_set = type { i32 }
%struct.config_set_element = type { %struct.string_list }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @git_configset_get_value_multi(%struct.config_set* %0, i8* %1) #0 {
  %3 = alloca %struct.config_set*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_set_element*, align 8
  store %struct.config_set* %0, %struct.config_set** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.config_set*, %struct.config_set** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.config_set_element* @configset_find_element(%struct.config_set* %6, i8* %7)
  store %struct.config_set_element* %8, %struct.config_set_element** %5, align 8
  %9 = load %struct.config_set_element*, %struct.config_set_element** %5, align 8
  %10 = icmp ne %struct.config_set_element* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.config_set_element*, %struct.config_set_element** %5, align 8
  %13 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %12, i32 0, i32 0
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi %struct.string_list* [ %13, %11 ], [ null, %14 ]
  ret %struct.string_list* %16
}

declare dso_local %struct.config_set_element* @configset_find_element(%struct.config_set*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_configset_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_configset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_set = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64, i64 }

@config_set_element_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_configset_init(%struct.config_set* %0) #0 {
  %2 = alloca %struct.config_set*, align 8
  store %struct.config_set* %0, %struct.config_set** %2, align 8
  %3 = load %struct.config_set*, %struct.config_set** %2, align 8
  %4 = getelementptr inbounds %struct.config_set, %struct.config_set* %3, i32 0, i32 2
  %5 = load i32, i32* @config_set_element_cmp, align 4
  %6 = call i32 @hashmap_init(i32* %4, i32 %5, i32* null, i32 0)
  %7 = load %struct.config_set*, %struct.config_set** %2, align 8
  %8 = getelementptr inbounds %struct.config_set, %struct.config_set* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.config_set*, %struct.config_set** %2, align 8
  %10 = getelementptr inbounds %struct.config_set, %struct.config_set* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.config_set*, %struct.config_set** %2, align 8
  %13 = getelementptr inbounds %struct.config_set, %struct.config_set* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.config_set*, %struct.config_set** %2, align 8
  %16 = getelementptr inbounds %struct.config_set, %struct.config_set* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret void
}

declare dso_local i32 @hashmap_init(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

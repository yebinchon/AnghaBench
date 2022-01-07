; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_configset_find_element.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_configset_find_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_set_element = type { i8*, i32 }
%struct.config_set = type { i32 }

@ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_set_element* (%struct.config_set*, i8*)* @configset_find_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_set_element* @configset_find_element(%struct.config_set* %0, i8* %1) #0 {
  %3 = alloca %struct.config_set_element*, align 8
  %4 = alloca %struct.config_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_set_element, align 8
  %7 = alloca %struct.config_set_element*, align 8
  %8 = alloca i8*, align 8
  store %struct.config_set* %0, %struct.config_set** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @git_config_parse_key(i8* %9, i8** %8, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.config_set_element* null, %struct.config_set_element** %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %6, i32 0, i32 1
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strhash(i8* %15)
  %17 = call i32 @hashmap_entry_init(i32* %14, i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %6, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load %struct.config_set*, %struct.config_set** %4, align 8
  %21 = getelementptr inbounds %struct.config_set, %struct.config_set* %20, i32 0, i32 0
  %22 = load i32, i32* @ent, align 4
  %23 = call %struct.config_set_element* @hashmap_get_entry(i32* %21, %struct.config_set_element* %6, i32 %22, i32* null)
  store %struct.config_set_element* %23, %struct.config_set_element** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  store %struct.config_set_element* %26, %struct.config_set_element** %3, align 8
  br label %27

27:                                               ; preds = %13, %12
  %28 = load %struct.config_set_element*, %struct.config_set_element** %3, align 8
  ret %struct.config_set_element* %28
}

declare dso_local i64 @git_config_parse_key(i8*, i8**, i32*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i8*) #1

declare dso_local %struct.config_set_element* @hashmap_get_entry(i32*, %struct.config_set_element*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

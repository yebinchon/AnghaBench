; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_configset_add_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_configset_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.config_set = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, %struct.configset_list_item*, i32 }
%struct.configset_list_item = type { i64, %struct.config_set_element* }
%struct.config_set_element = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.string_list_item = type { %struct.key_value_info* }
%struct.key_value_info = type { i32, i32, i32, i32* }

@cf = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"configset_add_value has no source\00", align 1
@CONFIG_ORIGIN_CMDLINE = common dso_local global i32 0, align 4
@current_parsing_scope = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_set*, i8*, i8*)* @configset_add_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configset_add_value(%struct.config_set* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.config_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_set_element*, align 8
  %8 = alloca %struct.string_list_item*, align 8
  %9 = alloca %struct.configset_list_item*, align 8
  %10 = alloca %struct.key_value_info*, align 8
  store %struct.config_set* %0, %struct.config_set** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = call i8* @xmalloc(i32 24)
  %12 = bitcast i8* %11 to %struct.key_value_info*
  store %struct.key_value_info* %12, %struct.key_value_info** %10, align 8
  %13 = load %struct.config_set*, %struct.config_set** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.config_set_element* @configset_find_element(%struct.config_set* %13, i8* %14)
  store %struct.config_set_element* %15, %struct.config_set_element** %7, align 8
  %16 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %17 = icmp ne %struct.config_set_element* %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %3
  %19 = call i8* @xmalloc(i32 16)
  %20 = bitcast i8* %19 to %struct.config_set_element*
  store %struct.config_set_element* %20, %struct.config_set_element** %7, align 8
  %21 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %22 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %21, i32 0, i32 1
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strhash(i8* %23)
  %25 = call i32 @hashmap_entry_init(i32* %22, i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @xstrdup(i8* %26)
  %28 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %29 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %31 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %30, i32 0, i32 0
  %32 = call i32 @string_list_init(%struct.TYPE_6__* %31, i32 1)
  %33 = load %struct.config_set*, %struct.config_set** %4, align 8
  %34 = getelementptr inbounds %struct.config_set, %struct.config_set* %33, i32 0, i32 1
  %35 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %36 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %35, i32 0, i32 1
  %37 = call i32 @hashmap_add(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %18, %3
  %39 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %40 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %39, i32 0, i32 0
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @xstrdup_or_null(i8* %41)
  %43 = call %struct.string_list_item* @string_list_append_nodup(%struct.TYPE_6__* %40, i32 %42)
  store %struct.string_list_item* %43, %struct.string_list_item** %8, align 8
  %44 = load %struct.config_set*, %struct.config_set** %4, align 8
  %45 = getelementptr inbounds %struct.config_set, %struct.config_set* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.configset_list_item*, %struct.configset_list_item** %46, align 8
  %48 = load %struct.config_set*, %struct.config_set** %4, align 8
  %49 = getelementptr inbounds %struct.config_set, %struct.config_set* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = load %struct.config_set*, %struct.config_set** %4, align 8
  %54 = getelementptr inbounds %struct.config_set, %struct.config_set* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ALLOC_GROW(%struct.configset_list_item* %47, i64 %52, i32 %56)
  %58 = load %struct.config_set*, %struct.config_set** %4, align 8
  %59 = getelementptr inbounds %struct.config_set, %struct.config_set* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.configset_list_item*, %struct.configset_list_item** %60, align 8
  %62 = load %struct.config_set*, %struct.config_set** %4, align 8
  %63 = getelementptr inbounds %struct.config_set, %struct.config_set* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = getelementptr inbounds %struct.configset_list_item, %struct.configset_list_item* %61, i64 %65
  store %struct.configset_list_item* %67, %struct.configset_list_item** %9, align 8
  %68 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %69 = load %struct.configset_list_item*, %struct.configset_list_item** %9, align 8
  %70 = getelementptr inbounds %struct.configset_list_item, %struct.configset_list_item* %69, i32 0, i32 1
  store %struct.config_set_element* %68, %struct.config_set_element** %70, align 8
  %71 = load %struct.config_set_element*, %struct.config_set_element** %7, align 8
  %72 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.configset_list_item*, %struct.configset_list_item** %9, align 8
  %77 = getelementptr inbounds %struct.configset_list_item, %struct.configset_list_item* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cf, align 8
  %79 = icmp ne %struct.TYPE_7__* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %38
  %81 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %38
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cf, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cf, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32* @strintern(i64 %90)
  %92 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %93 = getelementptr inbounds %struct.key_value_info, %struct.key_value_info* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cf, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %98 = getelementptr inbounds %struct.key_value_info, %struct.key_value_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cf, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %103 = getelementptr inbounds %struct.key_value_info, %struct.key_value_info* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %112

104:                                              ; preds = %82
  %105 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %106 = getelementptr inbounds %struct.key_value_info, %struct.key_value_info* %105, i32 0, i32 3
  store i32* null, i32** %106, align 8
  %107 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %108 = getelementptr inbounds %struct.key_value_info, %struct.key_value_info* %107, i32 0, i32 0
  store i32 -1, i32* %108, align 8
  %109 = load i32, i32* @CONFIG_ORIGIN_CMDLINE, align 4
  %110 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %111 = getelementptr inbounds %struct.key_value_info, %struct.key_value_info* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %104, %87
  %113 = load i32, i32* @current_parsing_scope, align 4
  %114 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %115 = getelementptr inbounds %struct.key_value_info, %struct.key_value_info* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.key_value_info*, %struct.key_value_info** %10, align 8
  %117 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %118 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %117, i32 0, i32 0
  store %struct.key_value_info* %116, %struct.key_value_info** %118, align 8
  ret i32 0
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local %struct.config_set_element* @configset_find_element(%struct.config_set*, i8*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @string_list_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @hashmap_add(i32*, i32*) #1

declare dso_local %struct.string_list_item* @string_list_append_nodup(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xstrdup_or_null(i8*) #1

declare dso_local i32 @ALLOC_GROW(%struct.configset_list_item*, i64, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32* @strintern(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

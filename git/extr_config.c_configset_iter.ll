; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_configset_iter.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_configset_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.config_set = type { %struct.configset_list }
%struct.configset_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.config_set_element* }
%struct.config_set_element = type { i32, %struct.string_list }
%struct.string_list = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }

@current_config_kvi = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_set*, i64 (i32, i32, i8*)*, i8*)* @configset_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configset_iter(%struct.config_set* %0, i64 (i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.config_set*, align 8
  %5 = alloca i64 (i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.config_set_element*, align 8
  %11 = alloca %struct.configset_list*, align 8
  store %struct.config_set* %0, %struct.config_set** %4, align 8
  store i64 (i32, i32, i8*)* %1, i64 (i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.config_set*, %struct.config_set** %4, align 8
  %13 = getelementptr inbounds %struct.config_set, %struct.config_set* %12, i32 0, i32 0
  store %struct.configset_list* %13, %struct.configset_list** %11, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %74, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.configset_list*, %struct.configset_list** %11, align 8
  %17 = getelementptr inbounds %struct.configset_list, %struct.configset_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = load %struct.configset_list*, %struct.configset_list** %11, align 8
  %22 = getelementptr inbounds %struct.configset_list, %struct.configset_list* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.config_set_element*, %struct.config_set_element** %27, align 8
  store %struct.config_set_element* %28, %struct.config_set_element** %10, align 8
  %29 = load %struct.configset_list*, %struct.configset_list** %11, align 8
  %30 = getelementptr inbounds %struct.configset_list, %struct.configset_list* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.config_set_element*, %struct.config_set_element** %10, align 8
  %38 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %37, i32 0, i32 1
  store %struct.string_list* %38, %struct.string_list** %9, align 8
  %39 = load %struct.string_list*, %struct.string_list** %9, align 8
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** @current_config_kvi, align 8
  %47 = load i64 (i32, i32, i8*)*, i64 (i32, i32, i8*)** %5, align 8
  %48 = load %struct.config_set_element*, %struct.config_set_element** %10, align 8
  %49 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.string_list*, %struct.string_list** %9, align 8
  %52 = getelementptr inbounds %struct.string_list, %struct.string_list* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 %47(i32 %50, i32 %58, i8* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %20
  %63 = load %struct.config_set_element*, %struct.config_set_element** %10, align 8
  %64 = getelementptr inbounds %struct.config_set_element, %struct.config_set_element* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_config_kvi, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_config_kvi, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @git_die_config_linenr(i32 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %62, %20
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @current_config_kvi, align 8
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %14

77:                                               ; preds = %14
  ret void
}

declare dso_local i32 @git_die_config_linenr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

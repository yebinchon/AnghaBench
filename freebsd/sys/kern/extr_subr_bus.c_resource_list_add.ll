; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_resource_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list_entry = type { i32, i32, i8*, i8*, i8*, i32*, i64 }
%struct.resource_list = type { i32 }

@M_BUS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"resource_list_add: can't record entry\00", align 1
@link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"resource_list_add: resource entry is busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_list_entry* @resource_list_add(%struct.resource_list* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.resource_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.resource_list_entry*, align 8
  store %struct.resource_list* %0, %struct.resource_list** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.resource_list*, %struct.resource_list** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %14, i32 %15, i32 %16)
  store %struct.resource_list_entry* %17, %struct.resource_list_entry** %13, align 8
  %18 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %19 = icmp ne %struct.resource_list_entry* %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @M_BUS, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call %struct.resource_list_entry* @malloc(i32 48, i32 %21, i32 %22)
  store %struct.resource_list_entry* %23, %struct.resource_list_entry** %13, align 8
  %24 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %25 = icmp ne %struct.resource_list_entry* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.resource_list*, %struct.resource_list** %7, align 8
  %30 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %31 = load i32, i32* @link, align 4
  %32 = call i32 @STAILQ_INSERT_TAIL(%struct.resource_list* %29, %struct.resource_list_entry* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %35 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %38 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %40 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %39, i32 0, i32 5
  store i32* null, i32** %40, align 8
  %41 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %42 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %28, %6
  %44 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %45 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %53 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %56 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  %59 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.resource_list_entry*, %struct.resource_list_entry** %13, align 8
  ret %struct.resource_list_entry* %60
}

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local %struct.resource_list_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.resource_list*, %struct.resource_list_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

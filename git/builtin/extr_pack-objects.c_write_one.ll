; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_one.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.hashfile = type { i32 }
%struct.object_entry = type { %struct.TYPE_2__, i64 }

@.str = private unnamed_addr constant [39 x i8] c"recursive delta detected for object %s\00", align 1
@WRITE_ONE_SKIP = common dso_local global i32 0, align 4
@written_list = common dso_local global %struct.TYPE_2__** null, align 8
@nr_written = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"pack too large for current definition of off_t\00", align 1
@WRITE_ONE_WRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashfile*, %struct.object_entry*, i32*)* @write_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_one(%struct.hashfile* %0, %struct.object_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashfile*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %5, align 8
  store %struct.object_entry* %1, %struct.object_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %11 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @oid_to_hex(i32* %22)
  %24 = call i32 @warning(i32 %19, i32 %23)
  store i32 128, i32* %4, align 4
  br label %102

25:                                               ; preds = %3
  %26 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %27 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %33 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %25
  %37 = load i32, i32* @WRITE_ONE_SKIP, align 4
  store i32 %37, i32* %4, align 4
  br label %102

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %41 = call %struct.object_entry* @DELTA(%struct.object_entry* %40)
  %42 = icmp ne %struct.object_entry* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %45 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %48 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %49 = call %struct.object_entry* @DELTA(%struct.object_entry* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @write_one(%struct.hashfile* %47, %struct.object_entry* %49, i32* %50)
  switch i32 %51, label %55 [
    i32 128, label %52
    i32 129, label %56
  ]

52:                                               ; preds = %43
  %53 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %54 = call i32 @SET_DELTA(%struct.object_entry* %53, i32* null)
  br label %61

55:                                               ; preds = %43
  br label %61

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %59 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  store i32 129, i32* %4, align 4
  br label %102

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %66 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %69 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @write_object(%struct.hashfile* %68, %struct.object_entry* %69, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %78 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  store i32 129, i32* %4, align 4
  br label %102

80:                                               ; preds = %62
  %81 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %82 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @written_list, align 8
  %84 = load i32, i32* @nr_written, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @nr_written, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %83, i64 %86
  store %struct.TYPE_2__* %82, %struct.TYPE_2__** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @signed_add_overflows(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %95 = call i32 @die(i32 %94)
  br label %96

96:                                               ; preds = %93, %80
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @WRITE_ONE_WRITTEN, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %96, %75, %56, %36, %18
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local %struct.object_entry* @DELTA(%struct.object_entry*) #1

declare dso_local i32 @SET_DELTA(%struct.object_entry*, i32*) #1

declare dso_local i32 @write_object(%struct.hashfile*, %struct.object_entry*, i32) #1

declare dso_local i64 @signed_add_overflows(i32, i32) #1

declare dso_local i32 @die(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_add_configuration_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_add_configuration_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32, i32, %struct.configuration_entry** }
%struct.configuration_entry = type { i32* }

@configuration_entry_sort_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_configuration_entry(%struct.configuration* %0, %struct.configuration_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.configuration*, align 8
  %5 = alloca %struct.configuration_entry*, align 8
  %6 = alloca %struct.configuration_entry**, align 8
  store %struct.configuration* %0, %struct.configuration** %4, align 8
  store %struct.configuration_entry* %1, %struct.configuration_entry** %5, align 8
  %7 = call i32 @TRACE_IN(i32 (%struct.configuration*, %struct.configuration_entry*)* @add_configuration_entry)
  %8 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %9 = icmp ne %struct.configuration_entry* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %13 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.configuration*, %struct.configuration** %4, align 8
  %19 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %20 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @configuration_find_entry(%struct.configuration* %18, i32* %21)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 @TRACE_OUT(i32 (%struct.configuration*, %struct.configuration_entry*)* @add_configuration_entry)
  store i32 -1, i32* %3, align 4
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.configuration*, %struct.configuration** %4, align 8
  %28 = getelementptr inbounds %struct.configuration, %struct.configuration* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.configuration*, %struct.configuration** %4, align 8
  %31 = getelementptr inbounds %struct.configuration, %struct.configuration* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %26
  %35 = load %struct.configuration*, %struct.configuration** %4, align 8
  %36 = getelementptr inbounds %struct.configuration, %struct.configuration* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %36, align 4
  %39 = load %struct.configuration*, %struct.configuration** %4, align 8
  %40 = getelementptr inbounds %struct.configuration, %struct.configuration* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.configuration_entry** @calloc(i32 %41, i32 8)
  store %struct.configuration_entry** %42, %struct.configuration_entry*** %6, align 8
  %43 = load %struct.configuration_entry**, %struct.configuration_entry*** %6, align 8
  %44 = icmp ne %struct.configuration_entry** %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.configuration_entry**, %struct.configuration_entry*** %6, align 8
  %48 = load %struct.configuration*, %struct.configuration** %4, align 8
  %49 = getelementptr inbounds %struct.configuration, %struct.configuration* %48, i32 0, i32 2
  %50 = load %struct.configuration_entry**, %struct.configuration_entry*** %49, align 8
  %51 = load %struct.configuration*, %struct.configuration** %4, align 8
  %52 = getelementptr inbounds %struct.configuration, %struct.configuration* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 8, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memcpy(%struct.configuration_entry** %47, %struct.configuration_entry** %50, i32 %56)
  %58 = load %struct.configuration*, %struct.configuration** %4, align 8
  %59 = getelementptr inbounds %struct.configuration, %struct.configuration* %58, i32 0, i32 2
  %60 = load %struct.configuration_entry**, %struct.configuration_entry*** %59, align 8
  %61 = call i32 @free(%struct.configuration_entry** %60)
  %62 = load %struct.configuration_entry**, %struct.configuration_entry*** %6, align 8
  %63 = load %struct.configuration*, %struct.configuration** %4, align 8
  %64 = getelementptr inbounds %struct.configuration, %struct.configuration* %63, i32 0, i32 2
  store %struct.configuration_entry** %62, %struct.configuration_entry*** %64, align 8
  br label %65

65:                                               ; preds = %34, %26
  %66 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %67 = load %struct.configuration*, %struct.configuration** %4, align 8
  %68 = getelementptr inbounds %struct.configuration, %struct.configuration* %67, i32 0, i32 2
  %69 = load %struct.configuration_entry**, %struct.configuration_entry*** %68, align 8
  %70 = load %struct.configuration*, %struct.configuration** %4, align 8
  %71 = getelementptr inbounds %struct.configuration, %struct.configuration* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.configuration_entry*, %struct.configuration_entry** %69, i64 %74
  store %struct.configuration_entry* %66, %struct.configuration_entry** %75, align 8
  %76 = load %struct.configuration*, %struct.configuration** %4, align 8
  %77 = getelementptr inbounds %struct.configuration, %struct.configuration* %76, i32 0, i32 2
  %78 = load %struct.configuration_entry**, %struct.configuration_entry*** %77, align 8
  %79 = load %struct.configuration*, %struct.configuration** %4, align 8
  %80 = getelementptr inbounds %struct.configuration, %struct.configuration* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @configuration_entry_sort_cmp, align 4
  %83 = call i32 @qsort(%struct.configuration_entry** %78, i32 %81, i32 8, i32 %82)
  %84 = call i32 @TRACE_OUT(i32 (%struct.configuration*, %struct.configuration_entry*)* @add_configuration_entry)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %65, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @TRACE_IN(i32 (%struct.configuration*, %struct.configuration_entry*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @configuration_find_entry(%struct.configuration*, i32*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.configuration*, %struct.configuration_entry*)*) #1

declare dso_local %struct.configuration_entry** @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.configuration_entry**, %struct.configuration_entry**, i32) #1

declare dso_local i32 @free(%struct.configuration_entry**) #1

declare dso_local i32 @qsort(%struct.configuration_entry**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

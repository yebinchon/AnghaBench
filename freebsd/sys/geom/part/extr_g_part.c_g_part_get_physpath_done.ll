; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_get_physpath_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_get_physpath_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i8*, i64, %struct.g_provider*, %struct.bio* }
%struct.g_provider = type { %struct.g_part_entry*, %struct.g_geom* }
%struct.g_part_entry = type { i32 }
%struct.g_geom = type { %struct.g_part_table* }
%struct.g_part_table = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_part_get_physpath_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_part_get_physpath_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_part_entry*, align 8
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 4
  %13 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %13, %struct.bio** %7, align 8
  %14 = load %struct.bio*, %struct.bio** %7, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 3
  %16 = load %struct.g_provider*, %struct.g_provider** %15, align 8
  store %struct.g_provider* %16, %struct.g_provider** %6, align 8
  %17 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 1
  %19 = load %struct.g_geom*, %struct.g_geom** %18, align 8
  store %struct.g_geom* %19, %struct.g_geom** %3, align 8
  %20 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %21 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %20, i32 0, i32 0
  %22 = load %struct.g_part_table*, %struct.g_part_table** %21, align 8
  store %struct.g_part_table* %22, %struct.g_part_table** %5, align 8
  %23 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 0
  %25 = load %struct.g_part_entry*, %struct.g_part_entry** %24, align 8
  store %struct.g_part_entry* %25, %struct.g_part_entry** %4, align 8
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %1
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @strlcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %30
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %8, align 8
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %10, align 8
  %54 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %55 = load %struct.g_part_entry*, %struct.g_part_entry** %4, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @G_PART_NAME(%struct.g_part_table* %54, %struct.g_part_entry* %55, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %43, %30
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.bio*, %struct.bio** %2, align 8
  %62 = call i32 @g_std_done(%struct.bio* %61)
  ret void
}

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @G_PART_NAME(%struct.g_part_table*, %struct.g_part_entry*, i8*, i64) #1

declare dso_local i32 @g_std_done(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

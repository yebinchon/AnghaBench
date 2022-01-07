; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32, i32, i32, i32, %struct.g_provider*, %struct.g_geom*, i32 }
%struct.g_provider = type { i32, i32, i32 }
%struct.g_geom = type { %struct.md_s* }

@g_md_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"md%d\00", align 1
@G_PF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_PF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@G_PF_ACCEPT_UNMAPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@DEVSTAT_ALL_SUPPORTED = common dso_local global i32 0, align 4
@DEVSTAT_TYPE_DIRECT = common dso_local global i32 0, align 4
@DEVSTAT_PRIORITY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_s*)* @mdinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdinit(%struct.md_s* %0) #0 {
  %2 = alloca %struct.md_s*, align 8
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.g_provider*, align 8
  store %struct.md_s* %0, %struct.md_s** %2, align 8
  %5 = call i32 (...) @g_topology_lock()
  %6 = load %struct.md_s*, %struct.md_s** %2, align 8
  %7 = getelementptr inbounds %struct.md_s, %struct.md_s* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.g_geom* @g_new_geomf(i32* @g_md_class, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.g_geom* %9, %struct.g_geom** %3, align 8
  %10 = load %struct.md_s*, %struct.md_s** %2, align 8
  %11 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %12 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %11, i32 0, i32 0
  store %struct.md_s* %10, %struct.md_s** %12, align 8
  %13 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %14 = load %struct.md_s*, %struct.md_s** %2, align 8
  %15 = getelementptr inbounds %struct.md_s, %struct.md_s* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.g_provider* %17, %struct.g_provider** %4, align 8
  %18 = load i32, i32* @G_PF_DIRECT_SEND, align 4
  %19 = load i32, i32* @G_PF_DIRECT_RECEIVE, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.md_s*, %struct.md_s** %2, align 8
  %26 = getelementptr inbounds %struct.md_s, %struct.md_s* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.md_s*, %struct.md_s** %2, align 8
  %31 = getelementptr inbounds %struct.md_s, %struct.md_s* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.md_s*, %struct.md_s** %2, align 8
  %36 = getelementptr inbounds %struct.md_s, %struct.md_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %45 [
    i32 132, label %38
    i32 128, label %38
    i32 129, label %38
    i32 130, label %44
    i32 131, label %44
  ]

38:                                               ; preds = %1, %1, %1
  %39 = load i32, i32* @G_PF_ACCEPT_UNMAPPED, align 4
  %40 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %41 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %45

44:                                               ; preds = %1, %1
  br label %45

45:                                               ; preds = %1, %44, %38
  %46 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %47 = load %struct.md_s*, %struct.md_s** %2, align 8
  %48 = getelementptr inbounds %struct.md_s, %struct.md_s* %47, i32 0, i32 5
  store %struct.g_geom* %46, %struct.g_geom** %48, align 8
  %49 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %50 = load %struct.md_s*, %struct.md_s** %2, align 8
  %51 = getelementptr inbounds %struct.md_s, %struct.md_s* %50, i32 0, i32 4
  store %struct.g_provider* %49, %struct.g_provider** %51, align 8
  %52 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %53 = call i32 @g_error_provider(%struct.g_provider* %52, i32 0)
  %54 = call i32 (...) @g_topology_unlock()
  %55 = load %struct.md_s*, %struct.md_s** %2, align 8
  %56 = getelementptr inbounds %struct.md_s, %struct.md_s* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.md_s*, %struct.md_s** %2, align 8
  %59 = getelementptr inbounds %struct.md_s, %struct.md_s* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DEVSTAT_ALL_SUPPORTED, align 4
  %62 = load i32, i32* @DEVSTAT_TYPE_DIRECT, align 4
  %63 = load i32, i32* @DEVSTAT_PRIORITY_MAX, align 4
  %64 = call i32 @devstat_new_entry(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.md_s*, %struct.md_s** %2, align 8
  %66 = getelementptr inbounds %struct.md_s, %struct.md_s* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  ret void
}

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_geom* @g_new_geomf(i32*, i8*, i32) #1

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i32) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @devstat_new_entry(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

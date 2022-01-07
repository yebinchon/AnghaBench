; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"create geom\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"destroy geom\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"unknown verb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i8*)* @g_ccd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_ccd_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_geom*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %14 = load %struct.g_class*, %struct.g_class** %5, align 8
  %15 = call i32 @g_ccd_create(%struct.gctl_req* %13, %struct.g_class* %14)
  br label %45

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %22 = load %struct.g_class*, %struct.g_class** %5, align 8
  %23 = call %struct.g_geom* @gctl_get_geom(%struct.gctl_req* %21, %struct.g_class* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.g_geom* %23, %struct.g_geom** %7, align 8
  %24 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %25 = icmp ne %struct.g_geom* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %28 = load %struct.g_class*, %struct.g_class** %5, align 8
  %29 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %30 = call i32 @g_ccd_destroy_geom(%struct.gctl_req* %27, %struct.g_class* %28, %struct.g_geom* %29)
  br label %31

31:                                               ; preds = %26, %20
  br label %44

32:                                               ; preds = %16
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %38 = load %struct.g_class*, %struct.g_class** %5, align 8
  %39 = call i32 @g_ccd_list(%struct.gctl_req* %37, %struct.g_class* %38)
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %42 = call i32 @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_ccd_create(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local %struct.g_geom* @gctl_get_geom(%struct.gctl_req*, %struct.g_class*, i8*) #1

declare dso_local i32 @g_ccd_destroy_geom(%struct.gctl_req*, %struct.g_class*, %struct.g_geom*) #1

declare dso_local i32 @g_ccd_list(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

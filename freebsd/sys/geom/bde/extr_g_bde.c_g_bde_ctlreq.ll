; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde.c_g_bde_ctlreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde.c_g_bde_ctlreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"create geom\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"destroy geom\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"unknown verb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i8*)* @g_bde_ctlreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_ctlreq(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca %struct.g_provider*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %14 = call %struct.g_provider* @gctl_get_provider(%struct.gctl_req* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.g_provider* %14, %struct.g_provider** %8, align 8
  %15 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %16 = icmp ne %struct.g_provider* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %19 = load %struct.g_class*, %struct.g_class** %5, align 8
  %20 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %21 = call i32 @g_bde_create_geom(%struct.gctl_req* %18, %struct.g_class* %19, %struct.g_provider* %20)
  br label %22

22:                                               ; preds = %17, %12
  br label %43

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %29 = load %struct.g_class*, %struct.g_class** %5, align 8
  %30 = call %struct.g_geom* @gctl_get_geom(%struct.gctl_req* %28, %struct.g_class* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.g_geom* %30, %struct.g_geom** %7, align 8
  %31 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %32 = icmp ne %struct.g_geom* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %35 = load %struct.g_class*, %struct.g_class** %5, align 8
  %36 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %37 = call i32 @g_bde_destroy_geom(%struct.gctl_req* %34, %struct.g_class* %35, %struct.g_geom* %36)
  br label %38

38:                                               ; preds = %33, %27
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %41 = call i32 @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %38
  br label %43

43:                                               ; preds = %42, %22
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.g_provider* @gctl_get_provider(%struct.gctl_req*, i8*) #1

declare dso_local i32 @g_bde_create_geom(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*) #1

declare dso_local %struct.g_geom* @gctl_get_geom(%struct.gctl_req*, %struct.g_class*, i8*) #1

declare dso_local i32 @g_bde_destroy_geom(%struct.gctl_req*, %struct.g_class*, %struct.g_geom*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

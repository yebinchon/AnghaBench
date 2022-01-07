; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_g_virstor_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_g_virstor_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get 'version' argument\00", align 1
@G_VIRSTOR_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Userland and kernel versions out of sync\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"unknown verb: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i8*)* @g_virstor_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_virstor_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %10 = call i64* @gctl_get_paraml(%struct.gctl_req* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  store i64* %10, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %61

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @G_VIRSTOR_VERSION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %23 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %61

24:                                               ; preds = %16
  %25 = call i32 (...) @g_topology_unlock()
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %31 = load %struct.g_class*, %struct.g_class** %5, align 8
  %32 = call i32 @virstor_ctl_add(%struct.gctl_req* %30, %struct.g_class* %31)
  br label %59

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %43 = load %struct.g_class*, %struct.g_class** %5, align 8
  %44 = call i32 @virstor_ctl_stop(%struct.gctl_req* %42, %struct.g_class* %43)
  br label %58

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %51 = load %struct.g_class*, %struct.g_class** %5, align 8
  %52 = call i32 @virstor_ctl_remove(%struct.gctl_req* %50, %struct.g_class* %51)
  br label %57

53:                                               ; preds = %45
  %54 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %29
  %60 = call i32 (...) @g_topology_lock()
  br label %61

61:                                               ; preds = %59, %21, %13
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @virstor_ctl_add(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @virstor_ctl_stop(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @virstor_ctl_remove(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

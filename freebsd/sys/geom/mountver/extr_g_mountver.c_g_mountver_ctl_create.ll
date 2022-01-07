; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mountver/extr_g_mountver.c_g_mountver_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Missing device(s).\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No 'arg%d' argument\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_mountver_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mountver_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %10 = call i32 (...) @g_topology_assert()
  %11 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %12 = call i32* @gctl_get_paraml(%struct.gctl_req* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %76

18:                                               ; preds = %2
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %76

25:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %73, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %26
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @snprintf(i8* %32, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %37 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %35, i8* %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %76

44:                                               ; preds = %31
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i8*, i8** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** %6, align 8
  %56 = call %struct.g_provider* @g_provider_by_name(i8* %55)
  store %struct.g_provider* %56, %struct.g_provider** %5, align 8
  %57 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %58 = icmp eq %struct.g_provider* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @G_MOUNTVER_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %60)
  %62 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  br label %76

65:                                               ; preds = %54
  %66 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %67 = load %struct.g_class*, %struct.g_class** %4, align 8
  %68 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %69 = call i64 @g_mountver_create(%struct.gctl_req* %66, %struct.g_class* %67, %struct.g_provider* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %76

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %26

76:                                               ; preds = %15, %22, %40, %59, %71, %26
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_MOUNTVER_DEBUG(i32, i8*, i8*) #1

declare dso_local i64 @g_mountver_create(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

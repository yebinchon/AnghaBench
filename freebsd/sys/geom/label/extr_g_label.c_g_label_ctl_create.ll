; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No 'arg%d' argument\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@G_LABEL_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_label_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_label_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %10 = call i32* @gctl_get_paraml(%struct.gctl_req* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %70

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %22 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %70

23:                                               ; preds = %16
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %30 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %70

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i8*, i8** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %6, align 8
  %43 = call %struct.g_provider* @g_provider_by_name(i8* %42)
  store %struct.g_provider* %43, %struct.g_provider** %5, align 8
  %44 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %45 = icmp eq %struct.g_provider* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  br label %70

52:                                               ; preds = %41
  %53 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %54 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %59 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %70

60:                                               ; preds = %52
  %61 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %62 = load %struct.g_class*, %struct.g_class** %4, align 8
  %63 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @G_LABEL_DIR, align 4
  %66 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %67 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @g_label_create(%struct.gctl_req* %61, %struct.g_class* %62, %struct.g_provider* %63, i8* %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %60, %57, %46, %28, %20, %13
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_LABEL_DEBUG(i32, i8*, i8*) #1

declare dso_local i32 @g_label_create(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

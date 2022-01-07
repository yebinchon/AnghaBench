; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_ctl_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_ctl_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_class* }
%struct.g_gsched = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"algo\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad algorithm '%s'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_sched_ctl_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_sched_ctl_configure(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_gsched*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %10 = call i32 (...) @g_topology_assert()
  %11 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %12 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %17 = call i32 @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %75

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.g_gsched* @g_gsched_find(i8* %19)
  store %struct.g_gsched* %20, %struct.g_gsched** %6, align 8
  %21 = load %struct.g_gsched*, %struct.g_gsched** %6, align 8
  %22 = icmp eq %struct.g_gsched* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @gctl_error(%struct.gctl_req* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %75

27:                                               ; preds = %18
  %28 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %29 = call i32 @g_sched_get_nargs(%struct.gctl_req* %28)
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %69, %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @g_sched_argi(%struct.gctl_req* %35, i32 %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %72

41:                                               ; preds = %34
  %42 = load i8*, i8** %7, align 8
  %43 = call %struct.g_provider* @g_provider_by_name(i8* %42)
  store %struct.g_provider* %43, %struct.g_provider** %5, align 8
  %44 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %45 = icmp eq %struct.g_provider* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.g_class*, %struct.g_class** %50, align 8
  %52 = load %struct.g_class*, %struct.g_class** %4, align 8
  %53 = icmp ne %struct.g_class* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46, %41
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @G_SCHED_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @gctl_error(%struct.gctl_req* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %72

60:                                               ; preds = %46
  %61 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %62 = load %struct.g_class*, %struct.g_class** %4, align 8
  %63 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %64 = load %struct.g_gsched*, %struct.g_gsched** %6, align 8
  %65 = call i64 @g_sched_change_algo(%struct.gctl_req* %61, %struct.g_class* %62, %struct.g_provider* %63, %struct.g_gsched* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %72

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %30

72:                                               ; preds = %67, %54, %40, %30
  %73 = load %struct.g_gsched*, %struct.g_gsched** %6, align 8
  %74 = call i32 @g_gsched_unref(%struct.g_gsched* %73)
  br label %75

75:                                               ; preds = %72, %23, %15
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*) #1

declare dso_local %struct.g_gsched* @g_gsched_find(i8*) #1

declare dso_local i32 @g_sched_get_nargs(%struct.gctl_req*) #1

declare dso_local i8* @g_sched_argi(%struct.gctl_req*, i32) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_SCHED_DEBUG(i32, i8*, i8*) #1

declare dso_local i64 @g_sched_change_algo(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*, %struct.g_gsched*) #1

declare dso_local i32 @g_gsched_unref(%struct.g_gsched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

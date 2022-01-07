; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { i32 }
%struct.g_gsched = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"algo\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad algorithm '%s'\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i32)* @g_sched_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_sched_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1, i32 %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_gsched*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 (...) @g_topology_assert()
  %13 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %14 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %19 = call i32 @gctl_error(%struct.gctl_req* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %70

20:                                               ; preds = %3
  %21 = load i8*, i8** %9, align 8
  %22 = call %struct.g_gsched* @g_gsched_find(i8* %21)
  store %struct.g_gsched* %22, %struct.g_gsched** %8, align 8
  %23 = load %struct.g_gsched*, %struct.g_gsched** %8, align 8
  %24 = icmp eq %struct.g_gsched* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %70

29:                                               ; preds = %20
  %30 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %31 = call i32 @g_sched_get_nargs(%struct.gctl_req* %30)
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %64, %29
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i8* @g_sched_argi(%struct.gctl_req* %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %67

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = call %struct.g_provider* @g_provider_by_name(i8* %44)
  store %struct.g_provider* %45, %struct.g_provider** %7, align 8
  %46 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %47 = icmp eq %struct.g_provider* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @G_SCHED_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @gctl_error(%struct.gctl_req* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %67

54:                                               ; preds = %43
  %55 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %56 = load %struct.g_class*, %struct.g_class** %5, align 8
  %57 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %58 = load %struct.g_gsched*, %struct.g_gsched** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @g_sched_create(%struct.gctl_req* %55, %struct.g_class* %56, %struct.g_provider* %57, %struct.g_gsched* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %32

67:                                               ; preds = %62, %48, %42, %32
  %68 = load %struct.g_gsched*, %struct.g_gsched** %8, align 8
  %69 = call i32 @g_gsched_unref(%struct.g_gsched* %68)
  br label %70

70:                                               ; preds = %67, %25, %17
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

declare dso_local i64 @g_sched_create(%struct.gctl_req*, %struct.g_class*, %struct.g_provider*, %struct.g_gsched*, i32) #1

declare dso_local i32 @g_gsched_unref(%struct.g_gsched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_get_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_get_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32 }
%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Provider not found: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_provider* @gctl_get_provider(%struct.gctl_req* %0, i8* %1) #0 {
  %3 = alloca %struct.g_provider*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_provider*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %8, i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.g_provider* null, %struct.g_provider** %3, align 8
  br label %25

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.g_provider* @g_provider_by_name(i8* %15)
  store %struct.g_provider* %16, %struct.g_provider** %7, align 8
  %17 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %18 = icmp ne %struct.g_provider* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  store %struct.g_provider* %20, %struct.g_provider** %3, align 8
  br label %25

21:                                               ; preds = %14
  %22 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @gctl_error(%struct.gctl_req* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %23)
  store %struct.g_provider* null, %struct.g_provider** %3, align 8
  br label %25

25:                                               ; preds = %21, %19, %13
  %26 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  ret %struct.g_provider* %26
}

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_redboot.c_g_redboot_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_redboot.c_g_redboot_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_geom = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Unknown verb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i8*)* @g_redboot_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_redboot_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_geom*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %10 = load %struct.g_class*, %struct.g_class** %5, align 8
  %11 = call %struct.g_geom* @gctl_get_geom(%struct.gctl_req* %9, %struct.g_class* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.g_geom* %11, %struct.g_geom** %7, align 8
  %12 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %13 = icmp eq %struct.g_geom* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %18

15:                                               ; preds = %3
  %16 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %17 = call i32 @gctl_error(%struct.gctl_req* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_geom* @gctl_get_geom(%struct.gctl_req*, %struct.g_class*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

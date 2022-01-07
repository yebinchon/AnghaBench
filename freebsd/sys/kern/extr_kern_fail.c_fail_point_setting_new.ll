; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_setting_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_setting_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fail_point_setting = type { i32, i32, %struct.fail_point* }
%struct.fail_point = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"fail point entries\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fail_point_setting* (%struct.fail_point*)* @fail_point_setting_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fail_point_setting* @fail_point_setting_new(%struct.fail_point* %0) #0 {
  %2 = alloca %struct.fail_point*, align 8
  %3 = alloca %struct.fail_point_setting*, align 8
  store %struct.fail_point* %0, %struct.fail_point** %2, align 8
  %4 = call %struct.fail_point_setting* (...) @fs_malloc()
  store %struct.fail_point_setting* %4, %struct.fail_point_setting** %3, align 8
  %5 = load %struct.fail_point*, %struct.fail_point** %2, align 8
  %6 = load %struct.fail_point_setting*, %struct.fail_point_setting** %3, align 8
  %7 = getelementptr inbounds %struct.fail_point_setting, %struct.fail_point_setting* %6, i32 0, i32 2
  store %struct.fail_point* %5, %struct.fail_point** %7, align 8
  %8 = load %struct.fail_point_setting*, %struct.fail_point_setting** %3, align 8
  %9 = getelementptr inbounds %struct.fail_point_setting, %struct.fail_point_setting* %8, i32 0, i32 1
  %10 = call i32 @TAILQ_INIT(i32* %9)
  %11 = load %struct.fail_point_setting*, %struct.fail_point_setting** %3, align 8
  %12 = getelementptr inbounds %struct.fail_point_setting, %struct.fail_point_setting* %11, i32 0, i32 0
  %13 = load i32, i32* @MTX_SPIN, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = load %struct.fail_point_setting*, %struct.fail_point_setting** %3, align 8
  %16 = call i32 @fail_point_setting_garbage_append(%struct.fail_point_setting* %15)
  %17 = load %struct.fail_point_setting*, %struct.fail_point_setting** %3, align 8
  ret %struct.fail_point_setting* %17
}

declare dso_local %struct.fail_point_setting* @fs_malloc(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fail_point_setting_garbage_append(%struct.fail_point_setting*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_status_init_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_status_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@advice_status_hints = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i32)* @status_init_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_init_config(%struct.wt_status* %0, i32 %1) #0 {
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i32, align 4
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @the_repository, align 4
  %6 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %7 = call i32 @wt_status_prepare(i32 %5, %struct.wt_status* %6)
  %8 = call i32 (...) @init_diff_ui_defaults()
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %11 = call i32 @git_config(i32 %9, %struct.wt_status* %10)
  %12 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %13 = call i32 @determine_whence(%struct.wt_status* %12)
  %14 = load i32, i32* @advice_status_hints, align 4
  %15 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %16 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @wt_status_prepare(i32, %struct.wt_status*) #1

declare dso_local i32 @init_diff_ui_defaults(...) #1

declare dso_local i32 @git_config(i32, %struct.wt_status*) #1

declare dso_local i32 @determine_whence(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

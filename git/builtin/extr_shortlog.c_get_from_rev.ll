; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_shortlog.c_get_from_rev.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_shortlog.c_get_from_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.shortlog = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.shortlog*)* @get_from_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_from_rev(%struct.rev_info* %0, %struct.shortlog* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.shortlog*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.shortlog* %1, %struct.shortlog** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = call i64 @prepare_revision_walk(%struct.rev_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @die(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  br label %13

13:                                               ; preds = %17, %12
  %14 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %15 = call %struct.commit* @get_revision(%struct.rev_info* %14)
  store %struct.commit* %15, %struct.commit** %5, align 8
  %16 = icmp ne %struct.commit* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.shortlog*, %struct.shortlog** %4, align 8
  %19 = load %struct.commit*, %struct.commit** %5, align 8
  %20 = call i32 @shortlog_add_commit(%struct.shortlog* %18, %struct.commit* %19)
  br label %13

21:                                               ; preds = %13
  ret void
}

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #1

declare dso_local i32 @shortlog_add_commit(%struct.shortlog*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

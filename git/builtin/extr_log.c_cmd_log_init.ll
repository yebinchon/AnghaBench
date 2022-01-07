; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_init.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.setup_revision_opt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i8*, %struct.rev_info*, %struct.setup_revision_opt*)* @cmd_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_log_init(i32 %0, i8** %1, i8* %2, %struct.rev_info* %3, %struct.setup_revision_opt* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rev_info*, align 8
  %10 = alloca %struct.setup_revision_opt*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.rev_info* %3, %struct.rev_info** %9, align 8
  store %struct.setup_revision_opt* %4, %struct.setup_revision_opt** %10, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %9, align 8
  %12 = call i32 @cmd_log_init_defaults(%struct.rev_info* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.rev_info*, %struct.rev_info** %9, align 8
  %17 = load %struct.setup_revision_opt*, %struct.setup_revision_opt** %10, align 8
  %18 = call i32 @cmd_log_init_finish(i32 %13, i8** %14, i8* %15, %struct.rev_info* %16, %struct.setup_revision_opt* %17)
  ret void
}

declare dso_local i32 @cmd_log_init_defaults(%struct.rev_info*) #1

declare dso_local i32 @cmd_log_init_finish(i32, i8**, i8*, %struct.rev_info*, %struct.setup_revision_opt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

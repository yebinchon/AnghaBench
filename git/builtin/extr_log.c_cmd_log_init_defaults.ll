; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_init_defaults.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_cmd_log_init_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@fmt_pretty = common dso_local global i64 0, align 8
@default_follow = common dso_local global i64 0, align 8
@default_abbrev_commit = common dso_local global i32 0, align 4
@default_show_root = common dso_local global i32 0, align 4
@fmt_patch_subject_prefix = common dso_local global i32 0, align 4
@default_show_signature = common dso_local global i32 0, align 4
@default_date_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @cmd_log_init_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_log_init_defaults(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %3 = load i64, i64* @fmt_pretty, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i64, i64* @fmt_pretty, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %8 = call i32 @get_commit_format(i64 %6, %struct.rev_info* %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = load i64, i64* @default_follow, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %19 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  %27 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load i32, i32* @default_abbrev_commit, align 4
  %31 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %32 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @default_show_root, align 4
  %34 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %35 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @fmt_patch_subject_prefix, align 4
  %37 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %38 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @default_show_signature, align 4
  %40 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 1, i32* %45, align 4
  %46 = load i64, i64* @default_date_mode, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %17
  %49 = load i64, i64* @default_date_mode, align 8
  %50 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %51 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %50, i32 0, i32 1
  %52 = call i32 @parse_date_format(i64 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %17
  ret void
}

declare dso_local i32 @get_commit_format(i64, %struct.rev_info*) #1

declare dso_local i32 @parse_date_format(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

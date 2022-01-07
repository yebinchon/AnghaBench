; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_dir_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.dir_entry = type { i32, i32 }

@max_prefix_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"git ls-files: internal error - directory entry not superset of prefix\00", align 1
@pathspec = common dso_local global i32 0, align 4
@ps_matched = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i8*, %struct.dir_entry*)* @show_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dir_entry(%struct.index_state* %0, i8* %1, %struct.dir_entry* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dir_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dir_entry* %2, %struct.dir_entry** %6, align 8
  %8 = load i32, i32* @max_prefix_len, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %11 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @die(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ps_matched, align 4
  %21 = call i32 @dir_path_match(%struct.index_state* %17, %struct.dir_entry* %18, i32* @pathspec, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %37

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @fputs(i8* %25, i32 %26)
  %28 = load %struct.index_state*, %struct.index_state** %4, align 8
  %29 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %30 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @write_eolinfo(%struct.index_state* %28, i32* null, i32 %31)
  %33 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  %34 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @write_name(i32 %35)
  br label %37

37:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @dir_path_match(%struct.index_state*, %struct.dir_entry*, i32*, i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @write_eolinfo(%struct.index_state*, i32*, i32) #1

declare dso_local i32 @write_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

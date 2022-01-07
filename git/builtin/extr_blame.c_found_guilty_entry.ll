; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_found_guilty_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_found_guilty_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i32, i32, i32, %struct.blame_origin* }
%struct.blame_origin = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.progress_info = type { i32, i32 }

@incremental = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s %d %d %d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_entry*, i8*)* @found_guilty_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @found_guilty_entry(%struct.blame_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.blame_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.progress_info*, align 8
  %6 = alloca %struct.blame_origin*, align 8
  store %struct.blame_entry* %0, %struct.blame_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.progress_info*
  store %struct.progress_info* %8, %struct.progress_info** %5, align 8
  %9 = load i64, i64* @incremental, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %13 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %12, i32 0, i32 3
  %14 = load %struct.blame_origin*, %struct.blame_origin** %13, align 8
  store %struct.blame_origin* %14, %struct.blame_origin** %6, align 8
  %15 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %16 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i8* @oid_to_hex(i32* %19)
  %21 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %22 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %26 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %30 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %24, i32 %28, i32 %31)
  %33 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %34 = call i32 @emit_one_suspect_detail(%struct.blame_origin* %33, i32 0)
  %35 = load %struct.blame_origin*, %struct.blame_origin** %6, align 8
  %36 = call i32 @write_filename_info(%struct.blame_origin* %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @maybe_flush_or_die(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %11, %2
  %40 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  %41 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.progress_info*, %struct.progress_info** %5, align 8
  %44 = getelementptr inbounds %struct.progress_info, %struct.progress_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.progress_info*, %struct.progress_info** %5, align 8
  %48 = getelementptr inbounds %struct.progress_info, %struct.progress_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.progress_info*, %struct.progress_info** %5, align 8
  %51 = getelementptr inbounds %struct.progress_info, %struct.progress_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @display_progress(i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @emit_one_suspect_detail(%struct.blame_origin*, i32) #1

declare dso_local i32 @write_filename_info(%struct.blame_origin*) #1

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #1

declare dso_local i32 @display_progress(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_print_debug.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_print_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, %struct.stat_data }
%struct.stat_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@debug_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"  ctime: %u:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  mtime: %u:%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"  dev: %u\09ino: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"  uid: %u\09gid: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  size: %u\09flags: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*)* @print_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_debug(%struct.cache_entry* %0) #0 {
  %2 = alloca %struct.cache_entry*, align 8
  %3 = alloca %struct.stat_data*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %2, align 8
  %4 = load i64, i64* @debug_mode, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %1
  %7 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 1
  store %struct.stat_data* %8, %struct.stat_data** %3, align 8
  %9 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %10 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %14 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16)
  %18 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %19 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %23 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %28 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %31 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %35 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %38 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.stat_data*, %struct.stat_data** %3, align 8
  %42 = getelementptr inbounds %struct.stat_data, %struct.stat_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cache_entry*, %struct.cache_entry** %2, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

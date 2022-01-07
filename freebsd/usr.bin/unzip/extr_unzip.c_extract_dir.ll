; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"   creating: %s/\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_entry*, i8*)* @extract_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_dir(%struct.archive* %0, %struct.archive_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %9 = call i32 @archive_entry_mode(%struct.archive_entry* %8)
  %10 = and i32 %9, 511
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 493, i32* %7, align 4
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, 448
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, 8
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @make_dir(i8* %33, i32 %34)
  %36 = load %struct.archive*, %struct.archive** %4, align 8
  %37 = call i32 @archive_read_data_skip(%struct.archive* %36)
  %38 = call i32 @ac(i32 %37)
  ret void
}

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @make_dir(i8*, i32) #1

declare dso_local i32 @ac(i32) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

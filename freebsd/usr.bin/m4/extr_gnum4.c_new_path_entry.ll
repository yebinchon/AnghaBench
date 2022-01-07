; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_new_path_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_new_path_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_entry = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.path_entry* (i8*)* @new_path_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.path_entry* @new_path_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.path_entry*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.path_entry* @malloc(i32 16)
  store %struct.path_entry* %4, %struct.path_entry** %3, align 8
  %5 = load %struct.path_entry*, %struct.path_entry** %3, align 8
  %6 = icmp ne %struct.path_entry* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @xstrdup(i8* %10)
  %12 = load %struct.path_entry*, %struct.path_entry** %3, align 8
  %13 = getelementptr inbounds %struct.path_entry, %struct.path_entry* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.path_entry*, %struct.path_entry** %3, align 8
  %15 = getelementptr inbounds %struct.path_entry, %struct.path_entry* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.path_entry*, %struct.path_entry** %3, align 8
  ret %struct.path_entry* %16
}

declare dso_local %struct.path_entry* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

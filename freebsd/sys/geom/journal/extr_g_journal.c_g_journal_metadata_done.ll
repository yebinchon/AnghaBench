; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_metadata_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_metadata_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Cannot update metadata (error=%d).\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Metadata updated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_journal_metadata_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_metadata_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %3 = load %struct.bio*, %struct.bio** %2, align 8
  %4 = getelementptr inbounds %struct.bio, %struct.bio* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (i32, %struct.bio*, i8*, ...) @GJ_LOGREQ(i32 0, %struct.bio* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %11)
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = call i32 (i32, %struct.bio*, i8*, ...) @GJ_LOGREQ(i32 2, %struct.bio* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %7
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gj_free(i32 %19, i32 %22)
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = call i32 @g_destroy_bio(%struct.bio* %24)
  ret void
}

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @gj_free(i32, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

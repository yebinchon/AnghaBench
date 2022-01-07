; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_display_sparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_display_sparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"[%s] sparam: %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sparam: %s\00", align 1
@OCS_DEBUG_ENABLE_SPARAM_DUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_display_sparams(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [64 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %40

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %40 [
    i32 0, label %17
    i32 1, label %34
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i8*, i32, i8*, i8*, ...) @ocs_snprintf(i8* %21, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  br label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i32, i8*, i8*, ...) @ocs_snprintf(i8* %26, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @OCS_DEBUG_ENABLE_SPARAM_DUMP, align 4
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @ocs_dump32(i32 %30, i32* null, i8* %31, i8* %32, i32 4)
  br label %40

34:                                               ; preds = %15
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @ocs_ddump_buffer(i32* %36, i8* %37, i32 0, i8* %38, i32 4)
  br label %40

40:                                               ; preds = %14, %15, %34, %29
  ret void
}

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @ocs_dump32(i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @ocs_ddump_buffer(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

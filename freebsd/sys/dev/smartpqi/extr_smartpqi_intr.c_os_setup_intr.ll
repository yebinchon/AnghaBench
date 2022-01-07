; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_intr.c_os_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_intr.c_os_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@INTR_TYPE_FIXED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"OUT failed error = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"OUT error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_setup_intr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @INTR_TYPE_FIXED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i32 @register_legacy_intr(%struct.TYPE_5__* %12)
  store i32 %13, i32* %4, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = call i32 @register_msix_intr(%struct.TYPE_5__* %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @register_legacy_intr(%struct.TYPE_5__*) #1

declare dso_local i32 @register_msix_intr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

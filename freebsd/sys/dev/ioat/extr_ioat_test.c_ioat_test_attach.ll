; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat_test.c_ioat_test_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"hw.ioat.enable_ioat_test\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@Giant = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioat_test_attach() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @kern_getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = call i32 @mtx_lock(i32* @Giant)
  %11 = call i32 @enable_ioat_test(i32 1)
  %12 = call i32 @mtx_unlock(i32* @Giant)
  br label %13

13:                                               ; preds = %9, %5, %0
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @freeenv(i8* %14)
  ret void
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @enable_ioat_test(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

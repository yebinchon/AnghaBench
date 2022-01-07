; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap_module.c_wtap_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap_module.c_wtap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@hal = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown WTAP IOCTL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wtap_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CRED_TO_VNET(i32 %14)
  %16 = call i32 @CURVNET_SET(i32 %15)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %38 [
    i32 129, label %18
    i32 128, label %28
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* @hal, align 4
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @new_wtap(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %18
  br label %41

28:                                               ; preds = %5
  %29 = load i32, i32* @hal, align 4
  %30 = load i64, i64* %8, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @free_wtap(i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %28
  br label %41

38:                                               ; preds = %5
  %39 = call i32 @DWTAP_PRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %37, %27
  %42 = call i32 (...) @CURVNET_RESTORE()
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CRED_TO_VNET(i32) #1

declare dso_local i32 @new_wtap(i32, i32) #1

declare dso_local i32 @free_wtap(i32, i32) #1

declare dso_local i32 @DWTAP_PRINTF(i8*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_pfil.c_pfil_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_pfil.c_pfil_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.pfilioc_list = type { i32 }
%struct.pfilioc_link = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @pfil_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfil_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
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
  %12 = load %struct.thread*, %struct.thread** %10, align 8
  %13 = call i32 @TD_TO_VNET(%struct.thread* %12)
  %14 = call i32 @CURVNET_SET(i32 %13)
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %20
    i32 130, label %24
  ]

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = inttoptr i64 %17 to %struct.pfilioc_list*
  %19 = call i32 @pfilioc_listheads(%struct.pfilioc_list* %18)
  store i32 %19, i32* %11, align 4
  br label %30

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = inttoptr i64 %21 to %struct.pfilioc_list*
  %23 = call i32 @pfilioc_listhooks(%struct.pfilioc_list* %22)
  store i32 %23, i32* %11, align 4
  br label %30

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = inttoptr i64 %25 to %struct.pfilioc_link*
  %27 = call i32 @pfilioc_link(%struct.pfilioc_link* %26)
  store i32 %27, i32* %11, align 4
  br label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %24, %20, %16
  %31 = call i32 (...) @CURVNET_RESTORE()
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @TD_TO_VNET(%struct.thread*) #1

declare dso_local i32 @pfilioc_listheads(%struct.pfilioc_list*) #1

declare dso_local i32 @pfilioc_listhooks(%struct.pfilioc_list*) #1

declare dso_local i32 @pfilioc_link(%struct.pfilioc_link*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_cctl_do_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_cctl_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTL_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: error sending CTL_IO ioctl\00", align 1
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %union.ctl_io*, i8*)* @cctl_do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cctl_do_io(i32 %0, i32 %1, %union.ctl_io* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ctl_io*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %union.ctl_io* %2, %union.ctl_io** %8, align 8
  store i8* %3, i8** %9, align 8
  br label %10

10:                                               ; preds = %33, %4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CTL_IO, align 4
  %13 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %14 = call i32 @ioctl(i32 %11, i32 %12, %union.ctl_io* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %5, align 4
  br label %36

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %22 = bitcast %union.ctl_io* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CTL_STATUS_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @CTL_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4
  %32 = icmp sgt i32 %30, 0
  br label %33

33:                                               ; preds = %29, %20
  %34 = phi i1 [ false, %20 ], [ %32, %29 ]
  br i1 %34, label %10, label %35

35:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ioctl(i32, i32, %union.ctl_io*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

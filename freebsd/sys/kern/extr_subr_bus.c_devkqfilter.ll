; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devkqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devkqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cdev = type { i32 }
%struct.knote = type { i64, i32* }

@EVFILT_READ = common dso_local global i64 0, align 8
@devctl_rfiltops = common dso_local global i32 0, align 4
@devsoftc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @devkqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devkqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store %struct.knote* %1, %struct.knote** %4, align 8
  %6 = load %struct.knote*, %struct.knote** %4, align 8
  %7 = getelementptr inbounds %struct.knote, %struct.knote* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EVFILT_READ, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.knote*, %struct.knote** %4, align 8
  %13 = getelementptr inbounds %struct.knote, %struct.knote* %12, i32 0, i32 1
  store i32* @devctl_rfiltops, i32** %13, align 8
  %14 = load %struct.knote*, %struct.knote** %4, align 8
  %15 = call i32 @knlist_add(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @devsoftc, i32 0, i32 0, i32 0), %struct.knote* %14, i32 0)
  store i32 0, i32* %5, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_get_ocb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_get_ocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_ocb = type { i32* }
%struct.sbp_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ORB_SHORTAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ocb shortage!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbp_ocb* (%struct.sbp_dev*)* @sbp_get_ocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbp_ocb* @sbp_get_ocb(%struct.sbp_dev* %0) #0 {
  %2 = alloca %struct.sbp_ocb*, align 8
  %3 = alloca %struct.sbp_dev*, align 8
  %4 = alloca %struct.sbp_ocb*, align 8
  store %struct.sbp_dev* %0, %struct.sbp_dev** %3, align 8
  %5 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %6 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SBP_LOCK_ASSERT(i32 %9)
  %11 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %12 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %11, i32 0, i32 0
  %13 = call %struct.sbp_ocb* @STAILQ_FIRST(i32* %12)
  store %struct.sbp_ocb* %13, %struct.sbp_ocb** %4, align 8
  %14 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  %15 = icmp eq %struct.sbp_ocb* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @ORB_SHORTAGE, align 4
  %18 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %19 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.sbp_ocb* null, %struct.sbp_ocb** %2, align 8
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %25 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %24, i32 0, i32 0
  %26 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  %27 = call i32 @STAILQ_REMOVE_HEAD(i32* %25, %struct.sbp_ocb* %26)
  %28 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  %29 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  store %struct.sbp_ocb* %30, %struct.sbp_ocb** %2, align 8
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.sbp_ocb*, %struct.sbp_ocb** %2, align 8
  ret %struct.sbp_ocb* %32
}

declare dso_local i32 @SBP_LOCK_ASSERT(i32) #1

declare dso_local %struct.sbp_ocb* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, %struct.sbp_ocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

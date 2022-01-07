; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_free_ocb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_free_ocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_dev = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sbp_ocb = type { i32*, i64 }

@ORB_SHORTAGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_dev*, %struct.sbp_ocb*)* @sbp_free_ocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_free_ocb(%struct.sbp_dev* %0, %struct.sbp_ocb* %1) #0 {
  %3 = alloca %struct.sbp_dev*, align 8
  %4 = alloca %struct.sbp_ocb*, align 8
  %5 = alloca i32, align 4
  store %struct.sbp_dev* %0, %struct.sbp_dev** %3, align 8
  store %struct.sbp_ocb* %1, %struct.sbp_ocb** %4, align 8
  %6 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  %7 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  %9 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SBP_LOCK_ASSERT(i32 %14)
  %16 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %17 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %16, i32 0, i32 3
  %18 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  %19 = load %struct.sbp_ocb*, %struct.sbp_ocb** %4, align 8
  %20 = call i32 @STAILQ_INSERT_TAIL(i32* %17, %struct.sbp_ocb* %18, %struct.sbp_ocb* %19)
  %21 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %22 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ORB_SHORTAGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %2
  %28 = load i32, i32* @ORB_SHORTAGE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %31 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %35 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %38 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  %40 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @xpt_release_devq(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @SBP_LOCK_ASSERT(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.sbp_ocb*, %struct.sbp_ocb*) #1

declare dso_local i32 @xpt_release_devq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

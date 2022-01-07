; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_softc_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_softc_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mrsas_softc** }
%struct.mrsas_softc = type { i32 }
%struct.cdev = type { %struct.mrsas_softc* }
%struct.mrsas_iocpacket = type { i64 }

@MRSAS_IOC_GET_PCI_INFO = common dso_local global i64 0, align 8
@mrsas_mgmt_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"There is no Controller number %d\0A\00", align 1
@MRSAS_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid Controller number %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrsas_softc* (%struct.cdev*, i64, i64)* @mrsas_get_softc_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrsas_softc* @mrsas_get_softc_instance(%struct.cdev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mrsas_softc*, align 8
  %8 = alloca %struct.mrsas_iocpacket*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.mrsas_softc* null, %struct.mrsas_softc** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = inttoptr i64 %9 to %struct.mrsas_iocpacket*
  store %struct.mrsas_iocpacket* %10, %struct.mrsas_iocpacket** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MRSAS_IOC_GET_PCI_INFO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.cdev*, %struct.cdev** %4, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %16, align 8
  store %struct.mrsas_softc* %17, %struct.mrsas_softc** %7, align 8
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.mrsas_softc**, %struct.mrsas_softc*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mrsas_mgmt_info, i32 0, i32 1), align 8
  %20 = load %struct.mrsas_iocpacket*, %struct.mrsas_iocpacket** %8, align 8
  %21 = getelementptr inbounds %struct.mrsas_iocpacket, %struct.mrsas_iocpacket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc*, %struct.mrsas_softc** %19, i64 %22
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %23, align 8
  store %struct.mrsas_softc* %24, %struct.mrsas_softc** %7, align 8
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %26 = icmp eq %struct.mrsas_softc* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.mrsas_iocpacket*, %struct.mrsas_iocpacket** %8, align 8
  %29 = getelementptr inbounds %struct.mrsas_iocpacket, %struct.mrsas_iocpacket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %48

32:                                               ; preds = %18
  %33 = load %struct.mrsas_iocpacket*, %struct.mrsas_iocpacket** %8, align 8
  %34 = getelementptr inbounds %struct.mrsas_iocpacket, %struct.mrsas_iocpacket* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mrsas_mgmt_info, i32 0, i32 0), align 8
  %37 = sext i32 %36 to i64
  %38 = icmp uge i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  %41 = load i32, i32* @MRSAS_FAULT, align 4
  %42 = load %struct.mrsas_iocpacket*, %struct.mrsas_iocpacket** %8, align 8
  %43 = getelementptr inbounds %struct.mrsas_iocpacket, %struct.mrsas_iocpacket* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @mrsas_dprint(%struct.mrsas_softc* %40, i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %39, %32
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48, %14
  %50 = load %struct.mrsas_softc*, %struct.mrsas_softc** %7, align 8
  ret %struct.mrsas_softc* %50
}

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @mrsas_dprint(%struct.mrsas_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

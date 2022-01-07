; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_legacy_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_legacy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i64, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@IFLIB_INTR_LEGACY = common dso_local global i64 0, align 8
@VMXNET3_BAR1_INTR = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@VMXNET3_IMM_ACTIVE = common dso_local global i64 0, align 8
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vmxnet3_legacy_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_legacy_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmxnet3_softc*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.vmxnet3_softc*
  store %struct.vmxnet3_softc* %8, %struct.vmxnet3_softc** %4, align 8
  %9 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IFLIB_INTR_LEGACY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %22 = load i32, i32* @VMXNET3_BAR1_INTR, align 4
  %23 = call i64 @vmxnet3_read_bar1(%struct.vmxnet3_softc* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VMXNET3_IMM_ACTIVE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @vmxnet3_intr_disable_all(i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %4, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @iflib_admin_intr_deferred(i32 %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @vmxnet3_read_bar1(%struct.vmxnet3_softc*, i32) #1

declare dso_local i32 @vmxnet3_intr_disable_all(i32) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

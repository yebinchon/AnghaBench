; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i8*, i32 }

@vmbus_version = common dso_local global i8** null, align 8
@vmbus_current_version = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"version %u.%u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_softc*)* @vmbus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_init(%struct.vmbus_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %47, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** @vmbus_version, align 8
  %9 = call i32 @nitems(i8** %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %13 = load i8**, i8*** @vmbus_version, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @vmbus_connect(%struct.vmbus_softc* %12, i8* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %11
  %22 = load i8**, i8*** @vmbus_version, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** @vmbus_current_version, align 8
  %27 = load i8**, i8*** @vmbus_version, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %38 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @VMBUS_VERSION_MAJOR(i8* %39)
  %41 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %42 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @VMBUS_VERSION_MINOR(i8* %43)
  %45 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  store i32 0, i32* %2, align 4
  br label %52

46:                                               ; preds = %11
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %6

50:                                               ; preds = %6
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @nitems(i8**) #1

declare dso_local i32 @vmbus_connect(%struct.vmbus_softc*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @VMBUS_VERSION_MAJOR(i8*) #1

declare dso_local i32 @VMBUS_VERSION_MINOR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

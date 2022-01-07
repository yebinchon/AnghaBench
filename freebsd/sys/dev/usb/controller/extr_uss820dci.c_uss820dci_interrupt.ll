; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@USS820_SSR = common dso_local global i32 0, align 4
@USS820_DCI_THREAD_IRQ = common dso_local global i32 0, align 4
@USS820_SSR_RESET = common dso_local global i32 0, align 4
@USS820_SSR_RESUME = common dso_local global i32 0, align 4
@USS820_SSR_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"real bus interrupt 0x%02x\0A\00", align 1
@USS820_SBI = common dso_local global i32 0, align 4
@USS820_SBI1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uss820dci_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uss820dci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.uss820dci_softc*
  store %struct.uss820dci_softc* %7, %struct.uss820dci_softc** %3, align 8
  %8 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %8, i32 0, i32 1
  %10 = call i32 @USB_BUS_LOCK(i32* %9)
  %11 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %11, i32 0, i32 1
  %13 = call i32 @USB_BUS_SPIN_LOCK(i32* %12)
  %14 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %15 = load i32, i32* @USS820_SSR, align 4
  %16 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %18 = load i32, i32* @USS820_SSR, align 4
  %19 = load i32, i32* @USS820_DCI_THREAD_IRQ, align 4
  %20 = xor i32 %19, -1
  %21 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %17, i32 %18, i32 %20, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @USS820_DCI_THREAD_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @USS820_SSR_RESET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %42 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %45 = call i32 @uss820dci_wait_suspend(%struct.uss820dci_softc* %44, i32 1)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %31, %26
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @USS820_SSR_RESUME, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %53 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %59 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %62 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %65 = call i32 @uss820dci_wait_suspend(%struct.uss820dci_softc* %64, i32 1)
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %57, %51
  br label %89

67:                                               ; preds = %46
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @USS820_SSR_SUSPEND, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %74 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %72
  %79 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %80 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %83 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  %85 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %86 = call i32 @uss820dci_wait_suspend(%struct.uss820dci_softc* %85, i32 0)
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %78, %72
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %96 = call i32 @uss820dci_root_intr(%struct.uss820dci_softc* %95)
  br label %97

97:                                               ; preds = %92, %89
  br label %98

98:                                               ; preds = %97, %1
  %99 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %100 = load i32, i32* @USS820_SBI, align 4
  %101 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %99, i32 %100, i32 0, i32 0)
  %102 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %103 = load i32, i32* @USS820_SBI1, align 4
  %104 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %102, i32 %103, i32 0, i32 0)
  %105 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %106 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %111 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %113 = call i32 @uss820dci_interrupt_complete_locked(%struct.uss820dci_softc* %112)
  br label %114

114:                                              ; preds = %109, %98
  %115 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %116 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %115, i32 0, i32 1
  %117 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %116)
  %118 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %119 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %118, i32 0, i32 1
  %120 = call i32 @USB_BUS_UNLOCK(i32* %119)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @uss820dci_update_shared_1(%struct.uss820dci_softc*, i32, i32, i32) #1

declare dso_local i32 @uss820dci_wait_suspend(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @uss820dci_root_intr(%struct.uss820dci_softc*) #1

declare dso_local i32 @uss820dci_interrupt_complete_locked(%struct.uss820dci_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

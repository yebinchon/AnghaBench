; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_iov.c_t4iov_attach_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_iov.c_t4iov_attach_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4iov_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t4iov_attach_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4iov_attach_child(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.t4iov_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.t4iov_softc* @device_get_softc(i32 %7)
  store %struct.t4iov_softc* %8, %struct.t4iov_softc** %4, align 8
  %9 = load %struct.t4iov_softc*, %struct.t4iov_softc** %4, align 8
  %10 = getelementptr inbounds %struct.t4iov_softc, %struct.t4iov_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @MPASS(i32 %14)
  %16 = load %struct.t4iov_softc*, %struct.t4iov_softc** %4, align 8
  %17 = getelementptr inbounds %struct.t4iov_softc, %struct.t4iov_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pci_get_function(i32 %19)
  %21 = call i32 @T4_READ_PORT_DEVICE(i32 %18, i32 %20, i32* %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.t4iov_softc*, %struct.t4iov_softc** %4, align 8
  %27 = getelementptr inbounds %struct.t4iov_softc, %struct.t4iov_softc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.t4iov_softc* @device_get_softc(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @T4_READ_PORT_DEVICE(i32, i32, i32*) #1

declare dso_local i32 @pci_get_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

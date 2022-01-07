; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_write_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_write_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.sis_softc = type { i32 }

@SIS_RXFILT_CTL = common dso_local global i32 0, align 4
@NS_FILTADDR_FMEM_LO = common dso_local global i64 0, align 8
@SIS_RXFILT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @sis_write_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_write_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_dl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sis_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sis_softc*
  store %struct.sis_softc* %12, %struct.sis_softc** %7, align 8
  %13 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %14 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %5, align 8
  %15 = call i32 @LLADDR(%struct.sockaddr_dl* %14)
  %16 = call i32 @sis_mchash(%struct.sis_softc* %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 3
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 31
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %22 = load i32, i32* @SIS_RXFILT_CTL, align 4
  %23 = load i64, i64* @NS_FILTADDR_FMEM_LO, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @CSR_WRITE_4(%struct.sis_softc* %21, i32 %22, i64 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 15
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 16
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %3
  %34 = load %struct.sis_softc*, %struct.sis_softc** %7, align 8
  %35 = load i32, i32* @SIS_RXFILT_DATA, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  %38 = call i32 @SIS_SETBIT(%struct.sis_softc* %34, i32 %35, i32 %37)
  ret i32 1
}

declare dso_local i32 @sis_mchash(%struct.sis_softc*, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i64) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

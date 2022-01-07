; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_write_maddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_write_maddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dl = type { i32 }
%struct.xae_softc = type { i32 }

@XAE_MULTICAST_TABLE_SIZE = common dso_local global i32 0, align 4
@XAE_FFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr_dl*, i32)* @xae_write_maddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xae_write_maddr(i8* %0, %struct.sockaddr_dl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xae_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.sockaddr_dl* %1, %struct.sockaddr_dl** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.xae_softc*
  store %struct.xae_softc* %12, %struct.xae_softc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @XAE_MULTICAST_TABLE_SIZE, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %19 = call i32* @LLADDR(%struct.sockaddr_dl* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %21 = load i32, i32* @XAE_FFC, align 4
  %22 = call i32 @READ4(%struct.xae_softc* %20, i32 %21)
  %23 = and i32 %22, -256
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %28 = load i32, i32* @XAE_FFC, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @WRITE4(%struct.xae_softc* %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 24
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %53 = call i32 @XAE_FFV(i32 0)
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @WRITE4(%struct.xae_softc* %52, i32 %53, i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  %66 = call i32 @XAE_FFV(i32 1)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @WRITE4(%struct.xae_softc* %65, i32 %66, i32 %67)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %17, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32* @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @READ4(%struct.xae_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.xae_softc*, i32, i32) #1

declare dso_local i32 @XAE_FFV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

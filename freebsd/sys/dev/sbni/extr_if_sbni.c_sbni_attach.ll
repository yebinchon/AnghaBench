; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i64, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32, %struct.sbni_softc* }
%struct.sbni_flags = type { i32 }

@IFT_ETHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sbni\00", align 1
@sbni_init = common dso_local global i32 0, align 4
@sbni_start = common dso_local global i32 0, align 4
@sbni_ioctl = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@MTX_NETWORK_LOCK = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"speed %ju, rxl \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"auto\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%d (fixed)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbni_attach(%struct.sbni_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbni_flags, align 4
  %6 = alloca %struct.sbni_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %5, i32 0, i32 0
  store i32 %2, i32* %10, align 4
  store %struct.sbni_softc* %0, %struct.sbni_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  %11 = load i32, i32* @IFT_ETHER, align 4
  %12 = call %struct.ifnet* @if_alloc(i32 %11)
  %13 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %14 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %13, i32 0, i32 5
  store %struct.ifnet* %12, %struct.ifnet** %14, align 8
  store %struct.ifnet* %12, %struct.ifnet** %8, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %16 = icmp eq %struct.ifnet* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %102

19:                                               ; preds = %3
  %20 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %21 = load i32, i32* @CSR0, align 4
  %22 = call i32 @sbni_outb(%struct.sbni_softc* %20, i32 %21, i32 0)
  %23 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %24 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_initial_values(%struct.sbni_softc* %23, i32 %25)
  %27 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 7
  store %struct.sbni_softc* %27, %struct.sbni_softc** %29, align 8
  %30 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @if_initname(%struct.ifnet* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @sbni_init, align 4
  %34 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @sbni_start, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @sbni_ioctl, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 3
  %44 = load i32, i32* @ifqmaxlen, align 4
  %45 = call i32 @IFQ_SET_MAXLEN(i32* %43, i32 %44)
  %46 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %47 = load i32, i32* @CSR0, align 4
  %48 = call i32 @sbni_inb(%struct.sbni_softc* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 500000, i32 2000000
  %54 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = sdiv i32 %53, %56
  %58 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @IFF_BROADCAST, align 4
  %61 = load i32, i32* @IFF_SIMPLEX, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IFF_MULTICAST, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %68 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %67, i32 0, i32 3
  %69 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MTX_NETWORK_LOCK, align 4
  %73 = load i32, i32* @MTX_DEF, align 4
  %74 = call i32 @mtx_init(i32* %68, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %76 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %75, i32 0, i32 4
  %77 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %78 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %77, i32 0, i32 3
  %79 = call i32 @callout_init_mtx(i32* %76, i32* %78, i32 0)
  %80 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %81 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %82 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ether_ifattach(%struct.ifnet* %80, i32 %83)
  %85 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %86 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @if_printf(%struct.ifnet* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %91 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %19
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %101

96:                                               ; preds = %19
  %97 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %98 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %94
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @set_initial_values(%struct.sbni_softc*, i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(i32*, i32) #1

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

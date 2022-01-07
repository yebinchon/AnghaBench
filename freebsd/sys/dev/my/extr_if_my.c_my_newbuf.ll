; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_newbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_newbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { i32 }
%struct.my_chain_onefrag = type { %struct.TYPE_2__*, %struct.mbuf* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mbuf = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"no memory for rx list -- packet dropped!\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@MY_RBSShift = common dso_local global i32 0, align 4
@MY_OWNByNIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.my_softc*, %struct.my_chain_onefrag*)* @my_newbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_newbuf(%struct.my_softc* %0, %struct.my_chain_onefrag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.my_softc*, align 8
  %5 = alloca %struct.my_chain_onefrag*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.my_softc* %0, %struct.my_softc** %4, align 8
  store %struct.my_chain_onefrag* %1, %struct.my_chain_onefrag** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  %7 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %8 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %7)
  %9 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = load i32, i32* @MT_DATA, align 4
  %12 = call i32 @MGETHDR(%struct.mbuf* %9, i32 %10, i32 %11)
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %17 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOBUFS, align 4
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = call i32 @MCLGET(%struct.mbuf* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.my_softc*, %struct.my_softc** %4, align 8
  %28 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = call i32 @m_freem(%struct.mbuf* %31)
  %33 = load i32, i32* @ENOBUFS, align 4
  store i32 %33, i32* %3, align 4
  br label %59

34:                                               ; preds = %21
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = load %struct.my_chain_onefrag*, %struct.my_chain_onefrag** %5, align 8
  %37 = getelementptr inbounds %struct.my_chain_onefrag, %struct.my_chain_onefrag* %36, i32 0, i32 1
  store %struct.mbuf* %35, %struct.mbuf** %37, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = load i32, i32* @caddr_t, align 4
  %40 = call i32 @mtod(%struct.mbuf* %38, i32 %39)
  %41 = call i32 @vtophys(i32 %40)
  %42 = load %struct.my_chain_onefrag*, %struct.my_chain_onefrag** %5, align 8
  %43 = getelementptr inbounds %struct.my_chain_onefrag, %struct.my_chain_onefrag* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @MCLBYTES, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @MY_RBSShift, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.my_chain_onefrag*, %struct.my_chain_onefrag** %5, align 8
  %51 = getelementptr inbounds %struct.my_chain_onefrag, %struct.my_chain_onefrag* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @MY_OWNByNIC, align 4
  %55 = load %struct.my_chain_onefrag*, %struct.my_chain_onefrag** %5, align 8
  %56 = getelementptr inbounds %struct.my_chain_onefrag, %struct.my_chain_onefrag* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %34, %26, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

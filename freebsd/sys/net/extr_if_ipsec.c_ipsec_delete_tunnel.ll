; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_delete_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ipsec.c_ipsec_delete_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsec_softc = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ipsec_ioctl_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@IPSEC_SPCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipsec_softc*)* @ipsec_delete_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsec_delete_tunnel(%struct.ipsec_softc* %0) #0 {
  %2 = alloca %struct.ipsec_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ipsec_softc* %0, %struct.ipsec_softc** %2, align 8
  %4 = load i32, i32* @SA_XLOCKED, align 4
  %5 = call i32 @sx_assert(i32* @ipsec_ioctl_sx, i32 %4)
  %6 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %7
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %20 = load i32, i32* @srchash, align 4
  %21 = call i32 @CK_LIST_REMOVE(%struct.ipsec_softc* %19, i32 %20)
  %22 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = call i32 (...) @IPSEC_WAIT()
  %25 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %29 = call i32 @key_unregister_ifnet(i32* %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %42, %18
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IPSEC_SPCOUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.ipsec_softc*, %struct.ipsec_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ipsec_softc, %struct.ipsec_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @key_freesp(i32* %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %30

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.ipsec_softc*, i32) #1

declare dso_local i32 @IPSEC_WAIT(...) #1

declare dso_local i32 @key_unregister_ifnet(i32*, i32) #1

declare dso_local i32 @key_freesp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

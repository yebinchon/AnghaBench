; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i32, i32*, i32*, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@UDBP_T_RD_CS = common dso_local global i64 0, align 8
@UDBP_T_RD = common dso_local global i64 0, align 8
@UDBP_T_WR_CS = common dso_local global i64 0, align 8
@UDBP_T_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ng_udbp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_udbp_disconnect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.udbp_softc*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @NG_HOOK_NODE(i32* %5)
  %7 = call %struct.udbp_softc* @NG_NODE_PRIVATE(i32 %6)
  store %struct.udbp_softc* %7, %struct.udbp_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %9 = icmp ne %struct.udbp_softc* %8, null
  br i1 %9, label %10, label %74

10:                                               ; preds = %1
  %11 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %16 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %70

21:                                               ; preds = %10
  %22 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %23 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @UDBP_T_RD_CS, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usbd_transfer_stop(i32 %27)
  %29 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %30 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @UDBP_T_RD, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usbd_transfer_stop(i32 %34)
  %36 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %37 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @UDBP_T_WR_CS, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usbd_transfer_stop(i32 %41)
  %43 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %44 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @UDBP_T_WR, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usbd_transfer_stop(i32 %48)
  %50 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %51 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %50, i32 0, i32 4
  %52 = call i32 @NG_BT_MBUFQ_DRAIN(i32* %51)
  %53 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %54 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %53, i32 0, i32 3
  %55 = call i32 @NG_BT_MBUFQ_DRAIN(i32* %54)
  %56 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %57 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %21
  %61 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %62 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @m_freem(i32* %63)
  %65 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %66 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %60, %21
  %68 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %69 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %67, %19
  %71 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %72 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %71, i32 0, i32 0
  %73 = call i32 @mtx_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %1
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @NG_HOOK_NODE(i32* %75)
  %77 = call i64 @NG_NODE_NUMHOOKS(i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @NG_HOOK_NODE(i32* %80)
  %82 = call i64 @NG_NODE_IS_VALID(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @NG_HOOK_NODE(i32* %85)
  %87 = call i32 @ng_rmnode_self(i32 %86)
  br label %88

88:                                               ; preds = %84, %79, %74
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.udbp_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @NG_BT_MBUFQ_DRAIN(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

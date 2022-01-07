; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i32, i32*, %struct.ng_bt_mbufq, %struct.ng_bt_mbufq }
%struct.ng_bt_mbufq = type { i32 }
%struct.mbuf = type { i32 }
%struct.ng_tag_prio = type { i64 }

@EHOSTDOWN = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NG_TAG_PRIO = common dso_local global i32 0, align 4
@NG_PRIO_CUTOFF = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@UDBP_T_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ng_udbp_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_udbp_rcvdata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.udbp_softc*, align 8
  %7 = alloca %struct.ng_bt_mbufq*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ng_tag_prio*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @NG_HOOK_NODE(i32 %11)
  %13 = call %struct.udbp_softc* @NG_NODE_PRIVATE(i32 %12)
  store %struct.udbp_softc* %13, %struct.udbp_softc** %6, align 8
  %14 = load %struct.udbp_softc*, %struct.udbp_softc** %6, align 8
  %15 = icmp eq %struct.udbp_softc* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @NG_FREE_ITEM(i32 %17)
  %19 = load i32, i32* @EHOSTDOWN, align 4
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %23 = call i32 @NGI_GET_M(i32 %21, %struct.mbuf* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @NG_FREE_ITEM(i32 %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %27 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %28 = load i32, i32* @NG_TAG_PRIO, align 4
  %29 = call i64 @m_tag_locate(%struct.mbuf* %26, i32 %27, i32 %28, i32* null)
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.ng_tag_prio*
  store %struct.ng_tag_prio* %31, %struct.ng_tag_prio** %9, align 8
  %32 = load %struct.ng_tag_prio*, %struct.ng_tag_prio** %9, align 8
  %33 = icmp ne %struct.ng_tag_prio* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = load %struct.ng_tag_prio*, %struct.ng_tag_prio** %9, align 8
  %36 = getelementptr inbounds %struct.ng_tag_prio, %struct.ng_tag_prio* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NG_PRIO_CUTOFF, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.udbp_softc*, %struct.udbp_softc** %6, align 8
  %42 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %41, i32 0, i32 3
  store %struct.ng_bt_mbufq* %42, %struct.ng_bt_mbufq** %7, align 8
  br label %46

43:                                               ; preds = %34, %20
  %44 = load %struct.udbp_softc*, %struct.udbp_softc** %6, align 8
  %45 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %44, i32 0, i32 2
  store %struct.ng_bt_mbufq* %45, %struct.ng_bt_mbufq** %7, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.udbp_softc*, %struct.udbp_softc** %6, align 8
  %48 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %47, i32 0, i32 0
  %49 = call i32 @mtx_lock(i32* %48)
  %50 = load %struct.ng_bt_mbufq*, %struct.ng_bt_mbufq** %7, align 8
  %51 = call i64 @NG_BT_MBUFQ_FULL(%struct.ng_bt_mbufq* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.ng_bt_mbufq*, %struct.ng_bt_mbufq** %7, align 8
  %55 = call i32 @NG_BT_MBUFQ_DROP(%struct.ng_bt_mbufq* %54)
  %56 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %57 = call i32 @NG_FREE_M(%struct.mbuf* %56)
  %58 = load i32, i32* @ENOBUFS, align 4
  store i32 %58, i32* %10, align 4
  br label %70

59:                                               ; preds = %46
  %60 = load %struct.ng_bt_mbufq*, %struct.ng_bt_mbufq** %7, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %62 = call i32 @NG_BT_MBUFQ_ENQUEUE(%struct.ng_bt_mbufq* %60, %struct.mbuf* %61)
  %63 = load %struct.udbp_softc*, %struct.udbp_softc** %6, align 8
  %64 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @UDBP_T_WR, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usbd_transfer_start(i32 %68)
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %59, %53
  %71 = load %struct.udbp_softc*, %struct.udbp_softc** %6, align 8
  %72 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %71, i32 0, i32 0
  %73 = call i32 @mtx_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.udbp_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i64 @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @NG_BT_MBUFQ_FULL(%struct.ng_bt_mbufq*) #1

declare dso_local i32 @NG_BT_MBUFQ_DROP(%struct.ng_bt_mbufq*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @NG_BT_MBUFQ_ENQUEUE(%struct.ng_bt_mbufq*, %struct.mbuf*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

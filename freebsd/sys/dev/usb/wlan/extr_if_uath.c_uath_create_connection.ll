; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_create_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_create_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_rateset = type { i32, i32 }
%struct.ieee80211vap = type { i32 }
%struct.ieee80211_node = type { i32, %struct.ieee80211_rateset }
%struct.uath_cmd_create_connection = type { %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@WLAN_MODE_11a = common dso_local global i32 0, align 4
@WLAN_MODE_11g = common dso_local global i32 0, align 4
@WLAN_MODE_11b = common dso_local global i32 0, align 4
@WDCMSG_CREATE_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32)* @uath_create_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_create_connection(%struct.uath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_rateset*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.uath_cmd_create_connection, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %10, i32 0, i32 0
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %12, i32 0, i32 0
  %14 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %13)
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %7, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %17)
  store %struct.ieee80211_node* %18, %struct.ieee80211_node** %8, align 8
  %19 = call i32 @memset(%struct.uath_cmd_create_connection* %9, i32 0, i32 48)
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @htobe32(i32 %20)
  %22 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 3
  store i8* %21, i8** %22, align 8
  %23 = call i8* @htobe32(i32 0)
  %24 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = call i8* @htobe32(i32 4)
  %26 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 1
  store %struct.ieee80211_rateset* %28, %struct.ieee80211_rateset** %5, align 8
  %29 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bcopy(i32 %37, i32* %42, i32 %45)
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IEEE80211_IS_CHAN_A(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %2
  %53 = load i32, i32* @WLAN_MODE_11a, align 4
  %54 = call i8* @htobe32(i32 %53)
  %55 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %74

57:                                               ; preds = %2
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IEEE80211_IS_CHAN_ANYG(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @WLAN_MODE_11g, align 4
  %65 = call i8* @htobe32(i32 %64)
  %66 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @WLAN_MODE_11b, align 4
  %70 = call i8* @htobe32(i32 %69)
  %71 = getelementptr inbounds %struct.uath_cmd_create_connection, %struct.uath_cmd_create_connection* %9, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %76 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %75)
  %77 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %78 = load i32, i32* @WDCMSG_CREATE_CONNECTION, align 4
  %79 = call i32 @uath_cmd_write(%struct.uath_softc* %77, i32 %78, %struct.uath_cmd_create_connection* %9, i32 48, i32 0)
  ret i32 %79
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @memset(%struct.uath_cmd_create_connection*, i32, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, %struct.uath_cmd_create_connection*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

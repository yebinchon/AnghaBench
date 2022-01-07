; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_setup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.adapter = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64* }

@.str = private unnamed_addr constant [26 x i8] c"em_setup_interface: begin\00", align 1
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@IFM_1000_SX = common dso_local global i32 0, align 4
@e1000_82545 = common dso_local global i64 0, align 8
@IFM_1000_LX = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@e1000_phy_ife = common dso_local global i64 0, align 8
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @em_setup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_setup_interface(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ifnet* @iflib_get_ifp(i32 %7)
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.adapter* @iflib_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @if_setsendqlen(%struct.ifnet* %20, i64 %26)
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = call i32 @if_setsendqready(%struct.ifnet* %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_media_type_fiber, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %38, %30
  %47 = load i32, i32* @IFM_1000_SX, align 4
  store i32 %47, i32* %6, align 4
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @e1000_82545, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @IFM_1000_LX, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %46
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFM_ETHER, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IFM_FDX, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @ifmedia_add(i32 %60, i32 %65, i32 0, i32* null)
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFM_ETHER, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @ifmedia_add(i32 %69, i32 %72, i32 0, i32* null)
  br label %132

74:                                               ; preds = %38
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IFM_ETHER, align 4
  %79 = load i32, i32* @IFM_10_T, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ifmedia_add(i32 %77, i32 %80, i32 0, i32* null)
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IFM_ETHER, align 4
  %86 = load i32, i32* @IFM_10_T, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IFM_FDX, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @ifmedia_add(i32 %84, i32 %89, i32 0, i32* null)
  %91 = load %struct.adapter*, %struct.adapter** %4, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IFM_ETHER, align 4
  %95 = load i32, i32* @IFM_100_TX, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @ifmedia_add(i32 %93, i32 %96, i32 0, i32* null)
  %98 = load %struct.adapter*, %struct.adapter** %4, align 8
  %99 = getelementptr inbounds %struct.adapter, %struct.adapter* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IFM_ETHER, align 4
  %102 = load i32, i32* @IFM_100_TX, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @IFM_FDX, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @ifmedia_add(i32 %100, i32 %105, i32 0, i32* null)
  %107 = load %struct.adapter*, %struct.adapter** %4, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @e1000_phy_ife, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %74
  %115 = load %struct.adapter*, %struct.adapter** %4, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IFM_ETHER, align 4
  %119 = load i32, i32* @IFM_1000_T, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @IFM_FDX, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @ifmedia_add(i32 %117, i32 %122, i32 0, i32* null)
  %124 = load %struct.adapter*, %struct.adapter** %4, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IFM_ETHER, align 4
  %128 = load i32, i32* @IFM_1000_T, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @ifmedia_add(i32 %126, i32 %129, i32 0, i32* null)
  br label %131

131:                                              ; preds = %114, %74
  br label %132

132:                                              ; preds = %131, %57
  %133 = load %struct.adapter*, %struct.adapter** %4, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @IFM_ETHER, align 4
  %137 = load i32, i32* @IFM_AUTO, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @ifmedia_add(i32 %135, i32 %138, i32 0, i32* null)
  %140 = load %struct.adapter*, %struct.adapter** %4, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IFM_ETHER, align 4
  %144 = load i32, i32* @IFM_AUTO, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @ifmedia_set(i32 %142, i32 %145)
  ret i32 0
}

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @if_setsendqlen(%struct.ifnet*, i64) #1

declare dso_local i32 @if_setsendqready(%struct.ifnet*) #1

declare dso_local i32 @ifmedia_add(i32, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

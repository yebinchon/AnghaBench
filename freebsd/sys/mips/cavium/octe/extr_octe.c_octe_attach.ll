; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32*, i32*, %struct.ifnet* }

@octe_mii_medchange = common dso_local global i32 0, align 4
@octe_mii_medstat = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"attaching PHYs failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"missing phy %u device %s\0A\00", align 1
@octe_medchange = common dso_local global i32 0, align 4
@octe_medstat = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@octe_init = common dso_local global i32 0, align 4
@octe_ioctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"octe tx send queue\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"octe tx free queue\00", align 1
@MAX_OUT_QUEUE_DEPTH = common dso_local global i32 0, align 4
@octe_transmit = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @octe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octe_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call %struct.TYPE_7__* @device_get_softc(i32* %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 8
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @device_get_name(i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @device_get_unit(i32* %16)
  %18 = call i32 @if_initname(%struct.ifnet* %13, i32 %15, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %66

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = load i32, i32* @octe_mii_medchange, align 4
  %34 = load i32, i32* @octe_mii_medstat, align 4
  %35 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MII_OFFSET_ANY, align 4
  %40 = call i32 @mii_attach(i32* %29, i32** %31, %struct.ifnet* %32, i32 %33, i32 %34, i32 %35, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 (i32*, i8*, ...) @device_printf(i32* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %28
  br label %65

47:                                               ; preds = %23
  %48 = load i32*, i32** %2, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = call i32* @device_add_child(i32* %48, i32* %51, i32 -1)
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load i32*, i32** %2, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 (i32*, i8*, ...) @device_printf(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32* %62)
  br label %64

64:                                               ; preds = %55, %47
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 5
  %74 = load i32, i32* @octe_medchange, align 4
  %75 = load i32, i32* @octe_medstat, align 4
  %76 = call i32 @ifmedia_init(i32* %73, i32 0, i32 %74, i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = load i32, i32* @IFM_ETHER, align 4
  %80 = load i32, i32* @IFM_AUTO, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @ifmedia_add(i32* %78, i32 %81, i32 0, i32* null)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  %85 = load i32, i32* @IFM_ETHER, align 4
  %86 = load i32, i32* @IFM_AUTO, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @ifmedia_set(i32* %84, i32 %87)
  br label %89

89:                                               ; preds = %71, %66
  %90 = load i32, i32* @IFF_BROADCAST, align 4
  %91 = load i32, i32* @IFF_SIMPLEX, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IFF_MULTICAST, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IFF_ALLMULTI, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @octe_init, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @octe_ioctl, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %106 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MTX_DEF, align 4
  %116 = call i32 @mtx_init(i32* %111, i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %141, %89
  %118 = load i32, i32* %6, align 4
  %119 = icmp ult i32 %118, 16
  br i1 %119, label %120, label %144

120:                                              ; preds = %117
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %129 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MTX_DEF, align 4
  %132 = call i32 @mtx_init(i32* %127, i32 %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = load i32, i32* @MAX_OUT_QUEUE_DEPTH, align 4
  %140 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_8__* %138, i32 %139)
  br label %141

141:                                              ; preds = %120
  %142 = load i32, i32* %6, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %117

144:                                              ; preds = %117
  %145 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ether_ifattach(%struct.ifnet* %145, i32 %148)
  %150 = load i32, i32* @octe_transmit, align 4
  %151 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %152 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 4
  %153 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 1
  store i32 4, i32* %154, align 4
  %155 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %156 = load i32, i32* @IFCAP_HWCSUM, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %159 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %164 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @CSUM_TCP, align 4
  %166 = load i32, i32* @CSUM_UDP, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = call i32 @OCTE_TX_LOCK(%struct.TYPE_7__* %170)
  %172 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 5
  %174 = load i32, i32* @MAX_OUT_QUEUE_DEPTH, align 4
  %175 = call i32 @IFQ_SET_MAXLEN(%struct.TYPE_8__* %173, i32 %174)
  %176 = load i32, i32* @MAX_OUT_QUEUE_DEPTH, align 4
  %177 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %178 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 4
  %180 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %181 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %180, i32 0, i32 5
  %182 = call i32 @IFQ_SET_READY(%struct.TYPE_8__* %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = call i32 @OCTE_TX_UNLOCK(%struct.TYPE_7__* %183)
  %185 = load i32*, i32** %2, align 8
  %186 = call i32 @bus_generic_attach(i32* %185)
  ret i32 %186
}

declare dso_local %struct.TYPE_7__* @device_get_softc(i32*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32*) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local i32 @mii_attach(i32*, i32**, %struct.ifnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32) #1

declare dso_local i32 @OCTE_TX_LOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @IFQ_SET_READY(%struct.TYPE_8__*) #1

declare dso_local i32 @OCTE_TX_UNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

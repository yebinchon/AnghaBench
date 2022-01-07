; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__, i8*, i8*, i8*, i8*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ip17x_softc.0*, i32)*, i32 (%struct.ip17x_softc.1*)* }
%struct.ip17x_softc.0 = type opaque
%struct.ip17x_softc.1 = type opaque
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ip17x\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"phymask\00", align 1
@IP17X_MAX_VLANS = common dso_local global i32 0, align 4
@IP175C = common dso_local global i32 0, align 4
@IP175D = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@M_IP17X = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ip17x_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17x_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip17x_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ip17x_softc* @device_get_softc(i32 %6)
  store %struct.ip17x_softc* %7, %struct.ip17x_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %9, i32 0, i32 13
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %11, i32 0, i32 12
  %13 = load i32, i32* @MTX_DEF, align 4
  %14 = call i32 @mtx_init(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %13)
  %15 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_desc(i32 %19)
  %21 = call i32 @strlcpy(i32 %18, i32 %20, i32 4)
  %22 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %22, i32 0, i32 0
  store i32 15, i32* %23, align 8
  %24 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %24, i32 0, i32 1
  store i32 100, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_get_name(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_unit(i32 %28)
  %30 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %30, i32 0, i32 0
  %32 = call i32 @resource_int_value(i32 %27, i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %34 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %34, i32 0, i32 11
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %38 = load i32, i32* @IP175C, align 4
  %39 = call i64 @IP17X_IS_SWITCH(%struct.ip17x_softc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %43 = call i32 @ip175c_attach(%struct.ip17x_softc* %42)
  br label %55

44:                                               ; preds = %1
  %45 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %46 = load i32, i32* @IP175D, align 4
  %47 = call i64 @IP17X_IS_SWITCH(%struct.ip17x_softc* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %51 = call i32 @ip175d_attach(%struct.ip17x_softc* %50)
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %160

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 8, %67
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @M_IP17X, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @malloc(i32 %69, i32 %70, i32 %73)
  %75 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %76 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @M_IP17X, align 4
  %84 = load i32, i32* @M_WAITOK, align 4
  %85 = load i32, i32* @M_ZERO, align 4
  %86 = or i32 %84, %85
  %87 = call i8* @malloc(i32 %82, i32 %83, i32 %86)
  %88 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %88, i32 0, i32 9
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %91 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 8, %93
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @M_IP17X, align 4
  %97 = load i32, i32* @M_WAITOK, align 4
  %98 = load i32, i32* @M_ZERO, align 4
  %99 = or i32 %97, %98
  %100 = call i8* @malloc(i32 %95, i32 %96, i32 %99)
  %101 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %102 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @M_IP17X, align 4
  %110 = load i32, i32* @M_WAITOK, align 4
  %111 = load i32, i32* @M_ZERO, align 4
  %112 = or i32 %110, %111
  %113 = call i8* @malloc(i32 %108, i32 %109, i32 %112)
  %114 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %115 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %114, i32 0, i32 7
  store i8* %113, i8** %115, align 8
  %116 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32 (%struct.ip17x_softc.1*)*, i32 (%struct.ip17x_softc.1*)** %118, align 8
  %120 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %121 = bitcast %struct.ip17x_softc* %120 to %struct.ip17x_softc.1*
  %122 = call i32 %119(%struct.ip17x_softc.1* %121)
  %123 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %124 = call i32 @ip17x_attach_phys(%struct.ip17x_softc* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %55
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %160

129:                                              ; preds = %55
  %130 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %131 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32 (%struct.ip17x_softc.0*, i32)*, i32 (%struct.ip17x_softc.0*, i32)** %132, align 8
  %134 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %135 = bitcast %struct.ip17x_softc* %134 to %struct.ip17x_softc.0*
  %136 = load i32, i32* @ETHERSWITCH_VLAN_PORT, align 4
  %137 = call i32 %133(%struct.ip17x_softc.0* %135, i32 %136)
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @bus_generic_probe(i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @bus_enumerate_hinted_children(i32 %140)
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @bus_generic_attach(i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %129
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %160

148:                                              ; preds = %129
  %149 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %155 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %154, i32 0, i32 4
  %156 = call i32 @callout_init(i32* %155, i32 0)
  %157 = load %struct.ip17x_softc*, %struct.ip17x_softc** %4, align 8
  %158 = call i32 @ip17x_tick(%struct.ip17x_softc* %157)
  br label %159

159:                                              ; preds = %153, %148
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %146, %127, %52
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.ip17x_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @IP17X_IS_SWITCH(%struct.ip17x_softc*, i32) #1

declare dso_local i32 @ip175c_attach(%struct.ip17x_softc*) #1

declare dso_local i32 @ip175d_attach(%struct.ip17x_softc*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ip17x_attach_phys(%struct.ip17x_softc*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @ip17x_tick(%struct.ip17x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

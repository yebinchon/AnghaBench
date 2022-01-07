; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_setport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.adm6996fc_softc = type { i64, i64, i64*, i64 }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifnet = type { i32 }

@__const.adm6996fc_setport.bcaddr = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 5, i32 7, i32 8, i32 9], align 16
@__const.adm6996fc_setport.vidaddr = private unnamed_addr constant [6 x i32] [i32 40, i32 41, i32 42, i32 43, i32 43, i32 44], align 16
@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@ADM6996FC_PVID_SHIFT = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_ADDTAG = common dso_local global i32 0, align 4
@ADM6996FC_OPTE_SHIFT = common dso_local global i32 0, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @adm6996fc_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_setport(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.adm6996fc_softc*, align 8
  %7 = alloca %struct.ifmedia*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i32], align 16
  %14 = alloca [6 x i32], align 16
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %15 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x i32]* @__const.adm6996fc_setport.bcaddr to i8*), i64 24, i1 false)
  %16 = bitcast [6 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x i32]* @__const.adm6996fc_setport.vidaddr to i8*), i64 24, i1 false)
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.adm6996fc_softc* @device_get_softc(i32 %17)
  store %struct.adm6996fc_softc* %18, %struct.adm6996fc_softc** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %30 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25, %2
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %3, align 4
  br label %181

35:                                               ; preds = %25
  %36 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %37 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %126

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ADM6996FC_READREG(i32 %42, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, -15361
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 15
  %55 = load i32, i32* @ADM6996FC_PVID_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ETHERSWITCH_PORT_ADDTAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %41
  %66 = load i32, i32* @ADM6996FC_OPTE_SHIFT, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  br label %76

70:                                               ; preds = %41
  %71 = load i32, i32* @ADM6996FC_OPTE_SHIFT, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @ADM6996FC_WRITEREG(i32 %77, i32 %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ADM6996FC_READREG(i32 %85, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %107

96:                                               ; preds = %76
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, -65281
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 4
  %104 = and i32 %103, 255
  %105 = shl i32 %104, 8
  %106 = or i32 %99, %105
  store i32 %106, i32* %12, align 4
  br label %117

107:                                              ; preds = %76
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, -256
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 4
  %115 = and i32 %114, 255
  %116 = or i32 %110, %115
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %107, %96
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @ADM6996FC_WRITEREG(i32 %118, i32 %123, i32 %124)
  store i32 0, i32* %11, align 4
  br label %142

126:                                              ; preds = %35
  %127 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %128 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i64, i64* %129, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %136 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %126
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %3, align 4
  br label %181

141:                                              ; preds = %126
  br label %142

142:                                              ; preds = %141, %117
  %143 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %144 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %143, i32 0, i32 2
  %145 = load i64*, i64** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %152 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %142
  %156 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call %struct.mii_data* @adm6996fc_miiforport(%struct.adm6996fc_softc* %156, i64 %159)
  store %struct.mii_data* %160, %struct.mii_data** %8, align 8
  %161 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %162 = icmp eq %struct.mii_data* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* @ENXIO, align 4
  store i32 %164, i32* %3, align 4
  br label %181

165:                                              ; preds = %155
  %166 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call %struct.ifnet* @adm6996fc_ifpforport(%struct.adm6996fc_softc* %166, i64 %169)
  store %struct.ifnet* %170, %struct.ifnet** %9, align 8
  %171 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %172 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %171, i32 0, i32 0
  store %struct.ifmedia* %172, %struct.ifmedia** %7, align 8
  %173 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load %struct.ifmedia*, %struct.ifmedia** %7, align 8
  %177 = load i32, i32* @SIOCSIFMEDIA, align 4
  %178 = call i32 @ifmedia_ioctl(%struct.ifnet* %173, i32* %175, %struct.ifmedia* %176, i32 %177)
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %165, %142
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %163, %139, %33
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @ADM6996FC_READREG(i32, i32) #2

declare dso_local i32 @ADM6996FC_WRITEREG(i32, i32, i32) #2

declare dso_local %struct.mii_data* @adm6996fc_miiforport(%struct.adm6996fc_softc*, i64) #2

declare dso_local %struct.ifnet* @adm6996fc_ifpforport(%struct.adm6996fc_softc*, i64) #2

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, i32*, %struct.ifmedia*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

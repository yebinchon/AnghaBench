; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_getvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_getvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.adm6996fc_softc = type { i64 }

@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@ETHERSWITCH_VID_VALID = common dso_local global i8* null, align 8
@ADM6996FC_VF0L = common dso_local global i64 0, align 8
@ADM6996FC_VF0H = common dso_local global i64 0, align 8
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@ADM6996FC_VV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @adm6996fc_getvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_getvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.adm6996fc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.adm6996fc_softc* @device_get_softc(i32 %9)
  store %struct.adm6996fc_softc* %10, %struct.adm6996fc_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %5, align 8
  %14 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 5
  br i1 %22, label %23, label %64

23:                                               ; preds = %18
  %24 = load i8*, i8** @ETHERSWITCH_VID_VALID, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* @ADM6996FC_VF0L, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %36, %41
  %43 = call i32 @ADM6996FC_READREG(i32 %35, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* @ADM6996FC_VF0H, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %45, %50
  %52 = call i32 @ADM6996FC_READREG(i32 %44, i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 63
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  br label %67

64:                                               ; preds = %18
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %23
  br label %129

68:                                               ; preds = %2
  %69 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %5, align 8
  %70 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %125

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* @ADM6996FC_VF0L, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %76, %81
  %83 = call i32 @ADM6996FC_READREG(i32 %75, i64 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i64, i64* @ADM6996FC_VF0H, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %85, %90
  %92 = call i32 @ADM6996FC_READREG(i32 %84, i64 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @ADM6996FC_VV_SHIFT, align 4
  %95 = shl i32 1, %94
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %74
  %99 = load i8*, i8** @ETHERSWITCH_VID_VALID, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, 4095
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 63
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = xor i32 %113, -1
  %115 = ashr i32 %114, 6
  %116 = and i32 %115, 63
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  br label %124

121:                                              ; preds = %74
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %98
  br label %128

125:                                              ; preds = %68
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %125, %124
  br label %129

129:                                              ; preds = %128, %67
  ret i32 0
}

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ADM6996FC_READREG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

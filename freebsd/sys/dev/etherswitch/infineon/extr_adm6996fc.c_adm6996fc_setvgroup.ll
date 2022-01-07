; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.adm6996fc_softc = type { i64 }

@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@ADM6996FC_VF0L = common dso_local global i64 0, align 8
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@ADM6996FC_VF0H = common dso_local global i64 0, align 8
@ADM6996FC_VV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @adm6996fc_setvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_setvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.adm6996fc_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.adm6996fc_softc* @device_get_softc(i32 %7)
  store %struct.adm6996fc_softc* %8, %struct.adm6996fc_softc** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* @ADM6996FC_VF0L, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %18, %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ADM6996FC_WRITEREG(i32 %17, i64 %24, i32 %27)
  br label %71

29:                                               ; preds = %2
  %30 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %5, align 8
  %31 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* @ADM6996FC_VF0L, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %37, %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %50, 63
  %52 = shl i32 %51, 6
  %53 = or i32 %46, %52
  %54 = call i32 @ADM6996FC_WRITEREG(i32 %36, i64 %43, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* @ADM6996FC_VF0H, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* @ADM6996FC_VV_SHIFT, align 4
  %64 = shl i32 1, %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = call i32 @ADM6996FC_WRITEREG(i32 %55, i64 %62, i32 %68)
  br label %70

70:                                               ; preds = %35, %29
  br label %71

71:                                               ; preds = %70, %16
  ret i32 0
}

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ADM6996FC_WRITEREG(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

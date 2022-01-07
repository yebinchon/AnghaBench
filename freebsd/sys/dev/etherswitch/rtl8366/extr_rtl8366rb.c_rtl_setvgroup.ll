; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.rtl8366rb_softc = type { i32*, i64, i64 }

@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@RTL8366_VMCR_DOT1Q_REG = common dso_local global i32 0, align 4
@RTL8366_VMCR_DOT1Q_VID_SHIFT = common dso_local global i32 0, align 4
@RTL8366_VMCR_DOT1Q_VID_MASK = common dso_local global i32 0, align 4
@RTL8366RB = common dso_local global i64 0, align 8
@RTL8366_VMCR_MU_REG = common dso_local global i32 0, align 4
@RTL8366_VMCR_MU_MEMBER_SHIFT = common dso_local global i32 0, align 4
@RTL8366_VMCR_MU_MEMBER_MASK = common dso_local global i32 0, align 4
@RTL8366_VMCR_MU_UNTAG_SHIFT = common dso_local global i32 0, align 4
@RTL8366_VMCR_MU_UNTAG_MASK = common dso_local global i32 0, align 4
@RTL8366_VMCR_FID_REG = common dso_local global i32 0, align 4
@RTL8366_VMCR_FID_FID_SHIFT = common dso_local global i32 0, align 4
@RTL8366_VMCR_FID_FID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @rtl_setvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_setvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.rtl8366rb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %10)
  store %struct.rtl8366rb_softc* %11, %struct.rtl8366rb_softc** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %19 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %150

39:                                               ; preds = %33, %28, %2
  %40 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %41 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %42 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %40
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RTL8366_VMCR_DOT1Q_REG, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @RTL8366_VMCR(i32 %50, i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RTL8366_VMCR_DOT1Q_VID_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @RTL8366_VMCR_DOT1Q_VID_MASK, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @rtl_writereg(i32 %49, i32 %52, i32 %59)
  %61 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %62 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %39
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 15
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 16
  %74 = shl i32 %73, 1
  %75 = or i32 %69, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 16
  %84 = shl i32 %83, 1
  %85 = or i32 %79, %84
  store i32 %85, i32* %9, align 4
  br label %93

86:                                               ; preds = %39
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %86, %65
  %94 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %95 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RTL8366RB, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %93
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @RTL8366_VMCR_MU_REG, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @RTL8366_VMCR(i32 %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @RTL8366_VMCR_MU_MEMBER_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @RTL8366_VMCR_MU_MEMBER_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @RTL8366_VMCR_MU_UNTAG_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* @RTL8366_VMCR_MU_UNTAG_MASK, align 4
  %113 = and i32 %111, %112
  %114 = or i32 %108, %113
  %115 = call i32 @rtl_writereg(i32 %100, i32 %103, i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @RTL8366_VMCR_FID_REG, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @RTL8366_VMCR(i32 %117, i32 %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @rtl_writereg(i32 %116, i32 %119, i32 %122)
  br label %149

124:                                              ; preds = %93
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @RTL8366_VMCR_MU_REG, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @RTL8366_VMCR(i32 %126, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @RTL8366_VMCR_MU_MEMBER_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* @RTL8366_VMCR_MU_MEMBER_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @RTL8366_VMCR_MU_UNTAG_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* @RTL8366_VMCR_MU_UNTAG_MASK, align 4
  %138 = and i32 %136, %137
  %139 = or i32 %133, %138
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @RTL8366_VMCR_FID_FID_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* @RTL8366_VMCR_FID_FID_MASK, align 4
  %146 = and i32 %144, %145
  %147 = or i32 %139, %146
  %148 = call i32 @rtl_writereg(i32 %125, i32 %128, i32 %147)
  br label %149

149:                                              ; preds = %124, %99
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %38
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @rtl_writereg(i32, i32, i32) #1

declare dso_local i32 @RTL8366_VMCR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

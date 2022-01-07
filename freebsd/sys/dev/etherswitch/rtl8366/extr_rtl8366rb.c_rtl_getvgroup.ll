; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_getvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_getvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }
%struct.rtl8366rb_softc = type { i64, i32* }

@RTL8366_VMCR_MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @rtl_getvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_getvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.rtl8366rb_softc*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %10)
  store %struct.rtl8366rb_softc* %11, %struct.rtl8366rb_softc** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @RTL8366_VMCR_MULT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @RTL8366_VMCR(i32 %18, i64 %21)
  %23 = call i32 @rtl_readreg(i32 %17, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %5, align 8
  %32 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %42 = call i32 @RTL8366_VMCR_MEMBER(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %44 = call i32 @RTL8366_VMCR_UNTAG(i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %5, align 8
  %46 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %30
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 32
  %52 = ashr i32 %51, 1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 15
  %55 = or i32 %52, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 32
  %60 = ashr i32 %59, 1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 15
  %63 = or i32 %60, %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %73

66:                                               ; preds = %30
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %49
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %75 = call i32 @RTL8366_VMCR_FID(i32* %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  ret i32 0
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @rtl_readreg(i32, i32) #1

declare dso_local i32 @RTL8366_VMCR(i32, i64) #1

declare dso_local i32 @RTL8366_VMCR_MEMBER(i32*) #1

declare dso_local i32 @RTL8366_VMCR_UNTAG(i32*) #1

declare dso_local i32 @RTL8366_VMCR_FID(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

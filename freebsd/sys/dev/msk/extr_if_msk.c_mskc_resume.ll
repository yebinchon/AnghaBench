; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@PCI_OUR_REG_3 = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MSK_FLAG_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mskc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mskc_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.msk_softc* @device_get_softc(i32 %5)
  store %struct.msk_softc* %6, %struct.msk_softc** %3, align 8
  %7 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %8 = call i32 @MSK_LOCK(%struct.msk_softc* %7)
  %9 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %10 = load i32, i32* @PCI_OUR_REG_3, align 4
  %11 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %9, i32 %10, i32 0)
  %12 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %13 = call i32 @mskc_reset(%struct.msk_softc* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %79, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %17 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %14
  %21 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %22 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %78

29:                                               ; preds = %20
  %30 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %31 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %78

40:                                               ; preds = %29
  %41 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %42 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_UP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %40
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %59 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %57
  store i32 %69, i32* %67, align 4
  %70 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %71 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i32 @msk_init_locked(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %55, %40, %29, %20
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %14

82:                                               ; preds = %14
  %83 = load i32, i32* @MSK_FLAG_SUSPEND, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %86 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %90 = call i32 @MSK_UNLOCK(%struct.msk_softc* %89)
  ret i32 0
}

declare dso_local %struct.msk_softc* @device_get_softc(i32) #1

declare dso_local i32 @MSK_LOCK(%struct.msk_softc*) #1

declare dso_local i32 @CSR_PCI_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @mskc_reset(%struct.msk_softc*) #1

declare dso_local i32 @msk_init_locked(%struct.TYPE_4__*) #1

declare dso_local i32 @MSK_UNLOCK(%struct.msk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_mskc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mskc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mskc_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.msk_softc* @device_get_softc(i32 %5)
  store %struct.msk_softc* %6, %struct.msk_softc** %3, align 8
  %7 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %8 = call i32 @MSK_LOCK(%struct.msk_softc* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %60, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %12 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %9
  %16 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %17 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %15
  %25 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %26 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %24
  %36 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %37 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %52 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @msk_stop(%struct.TYPE_4__* %57)
  br label %59

59:                                               ; preds = %50, %35, %24, %15
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %9

63:                                               ; preds = %9
  %64 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %65 = call i32 @MSK_UNLOCK(%struct.msk_softc* %64)
  %66 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %67 = load i32, i32* @B0_CTST, align 4
  %68 = load i32, i32* @CS_RST_SET, align 4
  %69 = call i32 @CSR_WRITE_2(%struct.msk_softc* %66, i32 %67, i32 %68)
  ret i32 0
}

declare dso_local %struct.msk_softc* @device_get_softc(i32) #1

declare dso_local i32 @MSK_LOCK(%struct.msk_softc*) #1

declare dso_local i32 @msk_stop(%struct.TYPE_4__*) #1

declare dso_local i32 @MSK_UNLOCK(%struct.msk_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

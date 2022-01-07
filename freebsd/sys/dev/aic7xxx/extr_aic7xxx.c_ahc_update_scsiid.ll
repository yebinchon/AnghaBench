; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_update_scsiid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_update_scsiid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }

@AHC_MULTI_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ahc_update_scsiid called on non-multitid unit\0A\00", align 1
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SCSIID_ULTRA2 = common dso_local global i32 0, align 4
@SCSIID = common dso_local global i32 0, align 4
@OID = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, i32)* @ahc_update_scsiid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_update_scsiid(%struct.ahc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHC_MULTI_TID, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AHC_ULTRA2, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %25 = load i32, i32* @SCSIID_ULTRA2, align 4
  %26 = call i32 @ahc_inb(%struct.ahc_softc* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %29 = load i32, i32* @SCSIID, align 4
  %30 = call i32 @ahc_inb(%struct.ahc_softc* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @OID, align 4
  %34 = and i32 %32, %33
  %35 = shl i32 1, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ffs(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* @TID, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %31
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AHC_ULTRA2, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %68 = load i32, i32* @SCSIID_ULTRA2, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ahc_outb(%struct.ahc_softc* %67, i32 %68, i32 %69)
  br label %76

71:                                               ; preds = %59
  %72 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %73 = load i32, i32* @SCSIID, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ahc_outb(%struct.ahc_softc* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

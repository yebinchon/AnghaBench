; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_setleds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahciem.c_ahci_em_setleds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_enclosure = type { i32**, i32, i32 }

@SESCTL_RQSACT = common dso_local global i32 0, align 4
@SESCTL_RQSRR = common dso_local global i32 0, align 4
@SESCTL_RQSID = common dso_local global i32 0, align 4
@SESCTL_RQSFLT = common dso_local global i32 0, align 4
@AHCI_EM_TM = common dso_local global i32 0, align 4
@AHCI_EM_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Transmit timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ahci_em_setleds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_em_setleds(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_enclosure*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ahci_enclosure* @device_get_softc(i32 %8)
  store %struct.ahci_enclosure* %9, %struct.ahci_enclosure** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %11 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SESCTL_RQSACT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %27 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SESCTL_RQSRR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 72
  store i32 %40, i32* %7, align 4
  br label %75

41:                                               ; preds = %25
  %42 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %43 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SESCTL_RQSID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 8
  store i32 %56, i32* %7, align 4
  br label %74

57:                                               ; preds = %41
  %58 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %59 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SESCTL_RQSFLT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, 64
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %57
  br label %74

74:                                               ; preds = %73, %54
  br label %75

75:                                               ; preds = %74, %38
  store i32 10000, i32* %6, align 4
  br label %76

76:                                               ; preds = %92, %75
  %77 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %78 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ATA_INL(i32 %79, i32 0)
  %81 = load i32, i32* @AHCI_EM_TM, align 4
  %82 = load i32, i32* @AHCI_EM_RST, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  %89 = icmp sgt i32 %88, 0
  br label %90

90:                                               ; preds = %86, %76
  %91 = phi i1 [ false, %76 ], [ %89, %86 ]
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = call i32 @DELAY(i32 100)
  br label %76

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %102 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ATA_OUTL(i32 %103, i32 0, i32 256)
  %105 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %106 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %7, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  %112 = call i32 @ATA_OUTL(i32 %107, i32 4, i32 %111)
  %113 = load %struct.ahci_enclosure*, %struct.ahci_enclosure** %5, align 8
  %114 = getelementptr inbounds %struct.ahci_enclosure, %struct.ahci_enclosure* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @AHCI_EM_TM, align 4
  %117 = call i32 @ATA_OUTL(i32 %115, i32 0, i32 %116)
  ret void
}

declare dso_local %struct.ahci_enclosure* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

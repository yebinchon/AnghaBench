; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_ue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i32 }

@STX_CTRL_UE_AFAR = common dso_local global i32 0, align 4
@STX_CTRL_UE_AFSR = common dso_local global i32 0, align 4
@STX_CTRL_CE_AFSR_ERRPNDG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: uncorrectable DMA error AFAR %#llx AFSR %#llx\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @schizo_ue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_ue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.schizo_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.schizo_softc*
  store %struct.schizo_softc* %8, %struct.schizo_softc** %3, align 8
  %9 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %10 = load i32, i32* @STX_CTRL_UE_AFAR, align 4
  %11 = call i32 @SCHIZO_CTRL_READ_8(%struct.schizo_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %17 = load i32, i32* @STX_CTRL_UE_AFSR, align 4
  %18 = call i32 @SCHIZO_CTRL_READ_8(%struct.schizo_softc* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @STX_CTRL_CE_AFSR_ERRPNDG, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %12

27:                                               ; preds = %22, %12
  %28 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %29 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_get_nameunit(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %33, i64 %35)
  %37 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @SCHIZO_CTRL_READ_8(%struct.schizo_softc*, i32) #1

declare dso_local i32 @panic(i8*, i32, i64, i64) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

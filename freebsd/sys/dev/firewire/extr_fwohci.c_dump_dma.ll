; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_dump_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_dump_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OHCI_ATQOFF = common dso_local global i32 0, align 4
@OHCI_ATSOFF = common dso_local global i32 0, align 4
@OHCI_ARQOFF = common dso_local global i32 0, align 4
@OHCI_ARSOFF = common dso_local global i32 0, align 4
@IRX_CH = common dso_local global i32 0, align 4
@ITX_CH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"ch %1x cntl:0x%08x cmd:0x%08x match:0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dma %d ch:%s%s%s%s%s%s %s(%x)\0A\00", align 1
@OHCI_CNTL_DMA_RUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"RUN,\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OHCI_CNTL_DMA_WAKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"WAKE,\00", align 1
@OHCI_CNTL_DMA_DEAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"DEAD,\00", align 1
@OHCI_CNTL_DMA_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"ACTIVE,\00", align 1
@OHCI_CNTL_DMA_BT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"BRANCH,\00", align 1
@OHCI_CNTL_DMA_BAD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"BADDMA,\00", align 1
@fwohcicode = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"dma %d ch: Nostat\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_dma(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @OHCI_ATQOFF, align 4
  store i32 %13, i32* %5, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @OHCI_ATSOFF, align 4
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @OHCI_ARQOFF, align 4
  store i32 %23, i32* %5, align 4
  br label %46

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @OHCI_ARSOFF, align 4
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IRX_CH, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @ITX_CH, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @OHCI_ITCTL(i64 %37)
  store i32 %38, i32* %5, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IRX_CH, align 4
  %42 = sub nsw i32 %40, %41
  %43 = call i32 @OHCI_IRCTL(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %22
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47, %12
  %49 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @OREAD(%struct.fwohci_softc* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 12
  %55 = call i32 @OREAD(%struct.fwohci_softc* %52, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 16
  %59 = call i32 @OREAD(%struct.fwohci_softc* %56, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %61 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %124

73:                                               ; preds = %48
  %74 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %75 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @OHCI_CNTL_DMA_RUN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @OHCI_CNTL_DMA_WAKE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @OHCI_CNTL_DMA_DEAD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @OHCI_CNTL_DMA_ACTIVE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @OHCI_CNTL_DMA_BT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @OHCI_CNTL_DMA_BAD, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %115 = load i32*, i32** @fwohcicode, align 8
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, 31
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = and i32 %121, 31
  %123 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %78, i8* %84, i8* %90, i8* %96, i8* %102, i8* %108, i8* %114, i32 %120, i32 %122)
  br label %131

124:                                              ; preds = %48
  %125 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %126 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %124, %73
  ret void
}

declare dso_local i32 @OHCI_ITCTL(i64) #1

declare dso_local i32 @OHCI_IRCTL(i32) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

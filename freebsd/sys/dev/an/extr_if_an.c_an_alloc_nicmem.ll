; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_alloc_nicmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_alloc_nicmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32, i32 }

@AN_CMD_ALLOC_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate %d bytes on NIC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AN_TIMEOUT = common dso_local global i32 0, align 4
@AN_EV_ALLOC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AN_ALLOC_FID = common dso_local global i32 0, align 4
@AN_BAP0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AN_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, i32, i32*)* @an_alloc_nicmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_alloc_nicmem(%struct.an_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.an_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %10 = load i32, i32* @AN_CMD_ALLOC_MEM, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @an_cmd(%struct.an_softc* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %16 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @if_printf(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %81

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @AN_TIMEOUT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %28 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %29 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AN_EVENT_STAT(i32 %30)
  %32 = call i32 @CSR_READ_2(%struct.an_softc* %27, i32 %31)
  %33 = load i32, i32* @AN_EV_ALLOC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %41

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %22

41:                                               ; preds = %36, %22
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @AN_TIMEOUT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %46, i32* %4, align 4
  br label %81

47:                                               ; preds = %41
  %48 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %49 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %50 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AN_EVENT_ACK(i32 %51)
  %53 = load i32, i32* @AN_EV_ALLOC, align 4
  %54 = call i32 @CSR_WRITE_2(%struct.an_softc* %48, i32 %52, i32 %53)
  %55 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %56 = load i32, i32* @AN_ALLOC_FID, align 4
  %57 = call i32 @CSR_READ_2(%struct.an_softc* %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AN_BAP0, align 4
  %63 = call i64 @an_seek(%struct.an_softc* %59, i32 %61, i32 0, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %4, align 4
  br label %81

67:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %77, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sdiv i32 %70, 2
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %75 = load i32, i32* @AN_DATA0, align 4
  %76 = call i32 @CSR_WRITE_2(%struct.an_softc* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %68

80:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %65, %45, %14
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @an_cmd(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @if_printf(i32, i8*, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

declare dso_local i32 @AN_EVENT_STAT(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_EVENT_ACK(i32) #1

declare dso_local i64 @an_seek(%struct.an_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

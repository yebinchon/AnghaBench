; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i32, i32 }

@CORE_REGISTER = common dso_local global i64 0, align 8
@SWITCH_ID = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Switch Identifier Register %x\0A\00", align 1
@E6060 = common dso_local global i32 0, align 4
@E6063 = common dso_local global i32 0, align 4
@E6065 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"88E6060\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"88E6063\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"88E6065\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Marvell %s MDIO switch driver at 0x%02x\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @e6060sw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6060sw_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.e6060sw_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.e6060sw_softc* @device_get_softc(i32 %10)
  store %struct.e6060sw_softc* %11, %struct.e6060sw_softc** %5, align 8
  %12 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %13 = call i32 @bzero(%struct.e6060sw_softc* %12, i32 8)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %56, %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = load i64, i64* @CORE_REGISTER, align 8
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %21, 16
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* @SWITCH_ID, align 4
  %26 = call i32 @MDIO_READREG(i32 %19, i64 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @E6060, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @E6063, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @E6065, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %39, %33
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %50 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 16
  %53 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %54 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %14

59:                                               ; preds = %47, %14
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @E6060, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %78

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @E6063, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @E6065, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %2, align 4
  br label %89

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %68
  br label %78

78:                                               ; preds = %77, %63
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %5, align 8
  %82 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %87 = call i32 @device_set_desc_copy(i32 %85, i8* %86)
  %88 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %78, %74
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.e6060sw_softc*, i32) #1

declare dso_local i32 @MDIO_READREG(i32, i64, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

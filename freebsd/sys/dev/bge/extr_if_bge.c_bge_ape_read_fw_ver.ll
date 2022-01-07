; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_read_fw_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_read_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32 }

@BGE_APE_SEG_SIG = common dso_local global i32 0, align 4
@BGE_APE_SEG_SIG_MAGIC = common dso_local global i32 0, align 4
@BGE_MFW_ON_APE = common dso_local global i32 0, align 4
@BGE_APE_FW_STATUS = common dso_local global i32 0, align 4
@BGE_APE_FW_STATUS_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"APE signature found but FW status not ready! 0x%08x\0A\00", align 1
@BGE_APE_FW_VERSION = common dso_local global i32 0, align 4
@BGE_APE_FW_FEATURES = common dso_local global i32 0, align 4
@BGE_APE_FW_FEATURE_NCSI = common dso_local global i32 0, align 4
@BGE_MFW_TYPE_NCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"NCSI\00", align 1
@BGE_APE_FW_FEATURE_DASH = common dso_local global i32 0, align 4
@BGE_MFW_TYPE_DASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DASH\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UNKN\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"APE FW version: %s v%d.%d.%d.%d\0A\00", align 1
@BGE_APE_FW_VERSION_MAJMSK = common dso_local global i32 0, align 4
@BGE_APE_FW_VERSION_MAJSFT = common dso_local global i32 0, align 4
@BGE_APE_FW_VERSION_MINMSK = common dso_local global i32 0, align 4
@BGE_APE_FW_VERSION_MINSFT = common dso_local global i32 0, align 4
@BGE_APE_FW_VERSION_REVMSK = common dso_local global i32 0, align 4
@BGE_APE_FW_VERSION_REVSFT = common dso_local global i32 0, align 4
@BGE_APE_FW_VERSION_BLDMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_ape_read_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_ape_read_fw_ver(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %6 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %7 = load i32, i32* @BGE_APE_SEG_SIG, align 4
  %8 = call i32 @APE_READ_4(%struct.bge_softc* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BGE_APE_SEG_SIG_MAGIC, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %92

19:                                               ; preds = %1
  %20 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %21 = load i32, i32* @BGE_APE_FW_STATUS, align 4
  %22 = call i32 @APE_READ_4(%struct.bge_softc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BGE_APE_FW_STATUS_READY, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %92

33:                                               ; preds = %19
  %34 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %35 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %40 = load i32, i32* @BGE_APE_FW_VERSION, align 4
  %41 = call i32 @APE_READ_4(%struct.bge_softc* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %43 = load i32, i32* @BGE_APE_FW_FEATURES, align 4
  %44 = call i32 @APE_READ_4(%struct.bge_softc* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @BGE_APE_FW_FEATURE_NCSI, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = load i32, i32* @BGE_MFW_TYPE_NCSI, align 4
  %51 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %68

55:                                               ; preds = %33
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @BGE_APE_FW_FEATURE_DASH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @BGE_MFW_TYPE_DASH, align 4
  %62 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %67

66:                                               ; preds = %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %67

67:                                               ; preds = %66, %60
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @BGE_APE_FW_VERSION_MAJMSK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @BGE_APE_FW_VERSION_MAJSFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @BGE_APE_FW_VERSION_MINMSK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @BGE_APE_FW_VERSION_MINSFT, align 4
  %82 = ashr i32 %80, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @BGE_APE_FW_VERSION_REVMSK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @BGE_APE_FW_VERSION_REVSFT, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @BGE_APE_FW_VERSION_BLDMSK, align 4
  %90 = and i32 %88, %89
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32 %77, i32 %82, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %68, %27, %12
  ret void
}

declare dso_local i32 @APE_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmrsa.c_xlp_rsa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmrsa.c_xlp_rsa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_rsa_softc = type { i64, i32, i32, i32 }

@DFS_DEVICE_RSA = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"RSA Freq: %dMHz\0A\00", align 1
@PCI_DEVICE_ID_NLM_RSA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"XLP RSA/ECC Accelerator\00", align 1
@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"xlp_rsaecc-err:couldn't get the driver id\0A\00", align 1
@CRK_MOD_EXP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"RSA Initialization complete!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xlp_rsa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_rsa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlp_rsa_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.xlp_rsa_softc* @device_get_softc(i32 %10)
  store %struct.xlp_rsa_softc* %11, %struct.xlp_rsa_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.xlp_rsa_softc*, %struct.xlp_rsa_softc** %4, align 8
  %14 = getelementptr inbounds %struct.xlp_rsa_softc, %struct.xlp_rsa_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_get_slot(i32 %15)
  %17 = call i32 @nlm_get_device_node(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DFS_DEVICE_RSA, align 4
  %20 = call i32 @nlm_set_device_frequency(i32 %18, i32 %19, i32 250)
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* @bootverbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @pci_get_device(i32 %28)
  %30 = load i64, i64* @PCI_DEVICE_ID_NLM_RSA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %37 = call i64 @crypto_get_driverid(i32 %35, i32 4, i32 %36)
  %38 = load %struct.xlp_rsa_softc*, %struct.xlp_rsa_softc** %4, align 8
  %39 = getelementptr inbounds %struct.xlp_rsa_softc, %struct.xlp_rsa_softc* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.xlp_rsa_softc*, %struct.xlp_rsa_softc** %4, align 8
  %41 = getelementptr inbounds %struct.xlp_rsa_softc, %struct.xlp_rsa_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %79

46:                                               ; preds = %32
  %47 = load %struct.xlp_rsa_softc*, %struct.xlp_rsa_softc** %4, align 8
  %48 = getelementptr inbounds %struct.xlp_rsa_softc, %struct.xlp_rsa_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @CRK_MOD_EXP, align 4
  %51 = call i64 @crypto_kregister(i64 %49, i32 %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %79

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @nlm_get_rsa_pcibase(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @nlm_qidstart(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @nlm_qnum(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.xlp_rsa_softc*, %struct.xlp_rsa_softc** %4, align 8
  %63 = getelementptr inbounds %struct.xlp_rsa_softc, %struct.xlp_rsa_softc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.xlp_rsa_softc*, %struct.xlp_rsa_softc** %4, align 8
  %69 = getelementptr inbounds %struct.xlp_rsa_softc, %struct.xlp_rsa_softc* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %54, %27
  %71 = load %struct.xlp_rsa_softc*, %struct.xlp_rsa_softc** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @xlp_rsa_init(%struct.xlp_rsa_softc* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

79:                                               ; preds = %75, %53, %44
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.xlp_rsa_softc* @device_get_softc(i32) #1

declare dso_local i32 @nlm_get_device_node(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @nlm_set_device_frequency(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @crypto_kregister(i64, i32, i32) #1

declare dso_local i32 @nlm_get_rsa_pcibase(i32) #1

declare dso_local i32 @nlm_qidstart(i32) #1

declare dso_local i32 @nlm_qnum(i32) #1

declare dso_local i64 @xlp_rsa_init(%struct.xlp_rsa_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

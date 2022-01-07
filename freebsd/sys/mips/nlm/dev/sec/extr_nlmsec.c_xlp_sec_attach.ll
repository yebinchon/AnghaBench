; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_sec_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmsec.c_xlp_sec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_sec_softc = type { i64, i32, i32, i32 }

@DFS_DEVICE_SAE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"SAE Freq: %dMHz\0A\00", align 1
@PCI_DEVICE_ID_NLM_SAE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"XLP Security Accelerator\00", align 1
@CRYPTOCAP_F_HARDWARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"xlp_sec - error : could not get the driver id\0A\00", align 1
@CRYPTO_DES_CBC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"register failed for CRYPTO_DES_CBC\0A\00", align 1
@CRYPTO_3DES_CBC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"register failed for CRYPTO_3DES_CBC\0A\00", align 1
@CRYPTO_AES_CBC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"register failed for CRYPTO_AES_CBC\0A\00", align 1
@CRYPTO_ARC4 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"register failed for CRYPTO_ARC4\0A\00", align 1
@CRYPTO_MD5 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"register failed for CRYPTO_MD5\0A\00", align 1
@CRYPTO_SHA1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"register failed for CRYPTO_SHA1\0A\00", align 1
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"register failed for CRYPTO_MD5_HMAC\0A\00", align 1
@CRYPTO_SHA1_HMAC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"register failed for CRYPTO_SHA1_HMAC\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"SEC Initialization complete!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xlp_sec_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_sec_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlp_sec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.xlp_sec_softc* @device_get_softc(i32 %10)
  store %struct.xlp_sec_softc* %11, %struct.xlp_sec_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %14 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_get_slot(i32 %15)
  %17 = call i32 @nlm_get_device_node(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DFS_DEVICE_SAE, align 4
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
  %30 = load i64, i64* @PCI_DEVICE_ID_NLM_SAE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %134

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CRYPTOCAP_F_HARDWARE, align 4
  %37 = call i64 @crypto_get_driverid(i32 %35, i32 4, i32 %36)
  %38 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %39 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %41 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %146

46:                                               ; preds = %32
  %47 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %48 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @CRYPTO_DES_CBC, align 4
  %51 = call i64 @crypto_register(i64 %49, i32 %50, i32 0, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %46
  %56 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %57 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @CRYPTO_3DES_CBC, align 4
  %60 = call i64 @crypto_register(i64 %58, i32 %59, i32 0, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %55
  %65 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %66 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @CRYPTO_AES_CBC, align 4
  %69 = call i64 @crypto_register(i64 %67, i32 %68, i32 0, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %64
  %74 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %75 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @CRYPTO_ARC4, align 4
  %78 = call i64 @crypto_register(i64 %76, i32 %77, i32 0, i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %73
  %83 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %84 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @CRYPTO_MD5, align 4
  %87 = call i64 @crypto_register(i64 %85, i32 %86, i32 0, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %82
  %92 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %93 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @CRYPTO_SHA1, align 4
  %96 = call i64 @crypto_register(i64 %94, i32 %95, i32 0, i32 0)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %91
  %101 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %102 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %105 = call i64 @crypto_register(i64 %103, i32 %104, i32 0, i32 0)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %100
  %110 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %111 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @CRYPTO_SHA1_HMAC, align 4
  %114 = call i64 @crypto_register(i64 %112, i32 %113, i32 0, i32 0)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @nlm_get_sec_pcibase(i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @nlm_qidstart(i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @nlm_qnum(i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %127 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %128, %129
  %131 = sub nsw i32 %130, 1
  %132 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %133 = getelementptr inbounds %struct.xlp_sec_softc, %struct.xlp_sec_softc* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %118, %27
  %135 = load %struct.xlp_sec_softc*, %struct.xlp_sec_softc** %4, align 8
  %136 = call i64 @xlp_sec_init(%struct.xlp_sec_softc* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %146

139:                                              ; preds = %134
  %140 = load i64, i64* @bootverbose, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %3, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %139
  store i32 0, i32* %2, align 4
  br label %148

146:                                              ; preds = %138, %44
  %147 = load i32, i32* @ENXIO, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.xlp_sec_softc* @device_get_softc(i32) #1

declare dso_local i32 @nlm_get_device_node(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @nlm_set_device_frequency(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i64 @crypto_get_driverid(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @crypto_register(i64, i32, i32, i32) #1

declare dso_local i32 @nlm_get_sec_pcibase(i32) #1

declare dso_local i32 @nlm_qidstart(i32) #1

declare dso_local i32 @nlm_qnum(i32) #1

declare dso_local i64 @xlp_sec_init(%struct.xlp_sec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

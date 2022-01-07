; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_load_ucode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_load_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.iwi_fw = type { i8*, i64 }

@IWI_CSR_RST = common dso_local global i32 0, align 4
@IWI_RST_STOP_MASTER = common dso_local global i32 0, align 4
@IWI_RST_MASTER_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"timeout waiting for master\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWI_RST_PRINCETON_RESET = common dso_local global i32 0, align 4
@IWI_MEM_EEPROM_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"timeout waiting for ucode to initialize\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, %struct.iwi_fw*)* @iwi_load_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_load_ucode(%struct.iwi_softc* %0, %struct.iwi_fw* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_fw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_fw* %1, %struct.iwi_fw** %4, align 8
  %12 = load %struct.iwi_fw*, %struct.iwi_fw** %4, align 8
  %13 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.iwi_fw*, %struct.iwi_fw** %4, align 8
  %16 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = call i32 @IWI_LOCK_ASSERT(%struct.iwi_softc* %18)
  store i32 0, i32* %11, align 4
  %20 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %21 = load i32, i32* @IWI_CSR_RST, align 4
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %23 = load i32, i32* @IWI_CSR_RST, align 4
  %24 = call i32 @CSR_READ_4(%struct.iwi_softc* %22, i32 %23)
  %25 = load i32, i32* @IWI_RST_STOP_MASTER, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %20, i32 %21, i32 %26)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %41, %2
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %33 = load i32, i32* @IWI_CSR_RST, align 4
  %34 = call i32 @CSR_READ_4(%struct.iwi_softc* %32, i32 %33)
  %35 = load i32, i32* @IWI_RST_MASTER_DISABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %44

39:                                               ; preds = %31
  %40 = call i32 @DELAY(i32 10)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %28

44:                                               ; preds = %38, %28
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  store i32 %52, i32* %11, align 4
  br label %142

53:                                               ; preds = %44
  %54 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %55 = call i32 @MEM_WRITE_4(%struct.iwi_softc* %54, i32 3145952, i32 -2147483648)
  %56 = call i32 @DELAY(i32 5000)
  %57 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %58 = load i32, i32* @IWI_CSR_RST, align 4
  %59 = call i32 @CSR_READ_4(%struct.iwi_softc* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @IWI_RST_PRINCETON_RESET, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %65 = load i32, i32* @IWI_CSR_RST, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %64, i32 %65, i32 %66)
  %68 = call i32 @DELAY(i32 5000)
  %69 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %70 = call i32 @MEM_WRITE_4(%struct.iwi_softc* %69, i32 3145952, i32 0)
  %71 = call i32 @DELAY(i32 1000)
  %72 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %73 = load i32, i32* @IWI_MEM_EEPROM_EVENT, align 4
  %74 = call i32 @MEM_WRITE_4(%struct.iwi_softc* %72, i32 %73, i32 1)
  %75 = call i32 @DELAY(i32 1000)
  %76 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %77 = load i32, i32* @IWI_MEM_EEPROM_EVENT, align 4
  %78 = call i32 @MEM_WRITE_4(%struct.iwi_softc* %76, i32 %77, i32 0)
  %79 = call i32 @DELAY(i32 1000)
  %80 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %81 = call i32 @MEM_WRITE_1(%struct.iwi_softc* %80, i32 2097152, i32 0)
  %82 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %83 = call i32 @MEM_WRITE_1(%struct.iwi_softc* %82, i32 2097152, i32 64)
  %84 = call i32 @DELAY(i32 1000)
  %85 = load i8*, i8** %7, align 8
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** %6, align 8
  br label %87

87:                                               ; preds = %96, %53
  %88 = load i64, i64* %8, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @htole16(i32 %93)
  %95 = call i32 @MEM_WRITE_2(%struct.iwi_softc* %91, i32 2097168, i32 %94)
  br label %96

96:                                               ; preds = %90
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %6, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub i64 %99, 2
  store i64 %100, i64* %8, align 8
  br label %87

101:                                              ; preds = %87
  %102 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %103 = call i32 @MEM_WRITE_1(%struct.iwi_softc* %102, i32 2097152, i32 0)
  %104 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %105 = call i32 @MEM_WRITE_1(%struct.iwi_softc* %104, i32 2097152, i32 128)
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %117, %101
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 100
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %111 = call i32 @MEM_READ_1(%struct.iwi_softc* %110, i32 2097152)
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %120

115:                                              ; preds = %109
  %116 = call i32 @DELAY(i32 100)
  br label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %106

120:                                              ; preds = %114, %106
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 100
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %125 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @device_printf(i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  store i32 %128, i32* %11, align 4
  br label %142

129:                                              ; preds = %120
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %136, %129
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 7
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %135 = call i32 @MEM_READ_4(%struct.iwi_softc* %134, i32 2097156)
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %130

139:                                              ; preds = %130
  %140 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %141 = call i32 @MEM_WRITE_1(%struct.iwi_softc* %140, i32 2097152, i32 0)
  br label %142

142:                                              ; preds = %139, %123, %47
  %143 = load i32, i32* %11, align 4
  ret i32 %143
}

declare dso_local i32 @IWI_LOCK_ASSERT(%struct.iwi_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MEM_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @MEM_WRITE_1(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @MEM_WRITE_2(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @MEM_READ_1(%struct.iwi_softc*, i32) #1

declare dso_local i32 @MEM_READ_4(%struct.iwi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

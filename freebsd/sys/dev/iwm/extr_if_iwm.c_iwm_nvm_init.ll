; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nvm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nvm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iwm_nvm_section = type { i32*, i64 }

@IWM_NVM_MAX_NUM_SECTIONS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IWM_DEBUG_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Read from NVM\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"OTP is blank\0A\00", align 1
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"nvm version = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_nvm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_nvm_init(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %14 = load i32, i32* @IWM_NVM_MAX_NUM_SECTIONS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca %struct.iwm_nvm_section, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  store i64 0, i64* %9, align 8
  %18 = mul nuw i64 16, %15
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(%struct.iwm_nvm_section* %17, i32 0, i32 %19)
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IWM_NVM_MAX_NUM_SECTIONS, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %149

30:                                               ; preds = %1
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %32 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %33 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %31, i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %35 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i32* @malloc(i64 %38, i32 %39, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %149

48:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %89, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IWM_NVM_MAX_NUM_SECTIONS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %49
  %54 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @iwm_nvm_read_section(%struct.iwm_softc* %54, i32 %55, i32* %56, i64* %12, i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %89

62:                                               ; preds = %53
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* @M_DEVBUF, align 4
  %68 = load i32, i32* @M_NOWAIT, align 4
  %69 = call i32* @malloc(i64 %66, i32 %67, i32 %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @ENOMEM, align 4
  store i32 %73, i32* %7, align 4
  br label %92

74:                                               ; preds = %62
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @memcpy(i32* %75, i32* %76, i64 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %17, i64 %81
  %83 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %82, i32 0, i32 0
  store i32* %79, i32** %83, align 16
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %17, i64 %86
  %88 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %87, i32 0, i32 1
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %74, %61
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %49

92:                                               ; preds = %72, %49
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %97 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* @M_DEVBUF, align 4
  %103 = call i32 @free(i32* %101, i32 %102)
  %104 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %105 = call %struct.TYPE_4__* @iwm_parse_nvm_sections(%struct.iwm_softc* %104, %struct.iwm_nvm_section* %17)
  %106 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %107 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %106, i32 0, i32 0
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %107, align 8
  %108 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %109 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %100
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %149

114:                                              ; preds = %100
  %115 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %116 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %117 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %120 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %115, i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %145, %114
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @IWM_NVM_MAX_NUM_SECTIONS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %17, i64 %131
  %133 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 16
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %129
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %17, i64 %138
  %140 = getelementptr inbounds %struct.iwm_nvm_section, %struct.iwm_nvm_section* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 16
  %142 = load i32, i32* @M_DEVBUF, align 4
  %143 = call i32 @free(i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %136, %129
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %125

148:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %149

149:                                              ; preds = %148, %112, %46, %28
  %150 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.iwm_nvm_section*, i32, i32) #2

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, ...) #2

declare dso_local i32* @malloc(i64, i32, i32) #2

declare dso_local i32 @iwm_nvm_read_section(%struct.iwm_softc*, i32, i32*, i64*, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @free(i32*, i32) #2

declare dso_local %struct.TYPE_4__* @iwm_parse_nvm_sections(%struct.iwm_softc*, %struct.iwm_nvm_section*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

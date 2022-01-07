; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppb_scan_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppbconf.c_ppb_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppb_data = type { i64, i64, i32 }

@PPB_NIBBLE = common dso_local global i32 0, align 4
@PPB_REQUEST_ID = common dso_local global i32 0, align 4
@PPB_ERROR = common dso_local global i64 0, align 8
@PPB_NOT_IEEE1284 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"IEEE1284 device found \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/NIBBLE\00", align 1
@PPB_PS2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"/PS2\00", align 1
@PPB_ECP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"/ECP\00", align 1
@PPB_USE_RLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"/ECP_RLE\00", align 1
@PPB_EPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"/EPP\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"/NIBBLE_ID\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"/PS2_ID\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"/ECP_ID\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"/ECP_RLE_ID\00", align 1
@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@PPB_EXTENSIBILITY_LINK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"/Extensibility Link\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppb_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppb_scan_bus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppb_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.ppb_data*
  store %struct.ppb_data* %8, %struct.ppb_data** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PPB_NIBBLE, align 4
  %11 = load i32, i32* @PPB_REQUEST_ID, align 4
  %12 = call i32 @ppb_1284_negociate(i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %14 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PPB_ERROR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %20 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PPB_NOT_IEEE1284, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %137

25:                                               ; preds = %18, %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ppb_1284_terminate(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @PPB_NIBBLE, align 4
  %32 = call i32 @ppb_1284_negociate(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ppb_1284_terminate(i32 %36)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PPB_PS2, align 4
  %41 = call i32 @ppb_1284_negociate(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ppb_1284_terminate(i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @PPB_ECP, align 4
  %50 = call i32 @ppb_1284_negociate(i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ppb_1284_terminate(i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @PPB_ECP, align 4
  %59 = load i32, i32* @PPB_USE_RLE, align 4
  %60 = call i32 @ppb_1284_negociate(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @ppb_1284_terminate(i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @PPB_EPP, align 4
  %69 = call i32 @ppb_1284_negociate(i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @ppb_1284_terminate(i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i64, i64* @bootverbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %131

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @PPB_NIBBLE, align 4
  %81 = load i32, i32* @PPB_REQUEST_ID, align 4
  %82 = call i32 @ppb_1284_negociate(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @ppb_1284_terminate(i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @PPB_PS2, align 4
  %91 = load i32, i32* @PPB_REQUEST_ID, align 4
  %92 = call i32 @ppb_1284_negociate(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @ppb_1284_terminate(i32 %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @PPB_ECP, align 4
  %101 = load i32, i32* @PPB_REQUEST_ID, align 4
  %102 = call i32 @ppb_1284_negociate(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @ppb_1284_terminate(i32 %106)
  br label %108

108:                                              ; preds = %104, %98
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @PPB_ECP, align 4
  %111 = load i32, i32* @PPB_REQUEST_ID, align 4
  %112 = load i32, i32* @PPB_USE_RLE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @ppb_1284_negociate(i32 %109, i32 %110, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @ppb_1284_terminate(i32 %118)
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @PPB_COMPATIBLE, align 4
  %123 = load i32, i32* @PPB_EXTENSIBILITY_LINK, align 4
  %124 = call i32 @ppb_1284_negociate(i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @ppb_1284_terminate(i32 %128)
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %75
  %132 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @ppb_pnp_detect(i32 %133)
  %135 = load %struct.ppb_data*, %struct.ppb_data** %4, align 8
  %136 = getelementptr inbounds %struct.ppb_data, %struct.ppb_data* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %2, align 4
  br label %139

137:                                              ; preds = %24
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %131
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ppb_1284_negociate(i32, i32, i32) #1

declare dso_local i32 @ppb_1284_terminate(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ppb_pnp_detect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

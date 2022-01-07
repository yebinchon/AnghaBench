; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32 }

@DECLARE_CPP_MICROSEQ = common dso_local global i32 0, align 4
@cpp_microseq = common dso_local global i32 0, align 4
@CPP_S1 = common dso_local global i32 0, align 4
@CPP_S2 = common dso_local global i32 0, align 4
@CPP_S3 = common dso_local global i32 0, align 4
@CPP_PARAM = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"(connect) s1=0x%x s2=0x%x, s3=0x%x\0A\00", align 1
@VP0_ECONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpoio_data*, i32, i32*, i32)* @imm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_connect(%struct.vpoio_data* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpoio_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @DECLARE_CPP_MICROSEQ, align 4
  %17 = load %struct.vpoio_data*, %struct.vpoio_data** %6, align 8
  %18 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.vpoio_data*, %struct.vpoio_data** %6, align 8
  %31 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ppb_request_bus(i32 %29, i32 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %121

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* @cpp_microseq, align 4
  %41 = load i32, i32* @CPP_S1, align 4
  %42 = ptrtoint i8* %11 to i32
  %43 = load i32, i32* @CPP_S2, align 4
  %44 = load i32, i32* @CPP_S3, align 4
  %45 = call i32 (i32, i32, i32, i32, ...) @ppb_MS_init_msq(i32 %40, i32 3, i32 %41, i32 %42, i32 %43, i8* %12, i32 %44, i8* %13)
  %46 = load i32, i32* @cpp_microseq, align 4
  %47 = load i32, i32* @CPP_PARAM, align 4
  %48 = call i32 (i32, i32, i32, i32, ...) @ppb_MS_init_msq(i32 %46, i32 1, i32 %47, i32 224)
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.vpoio_data*, %struct.vpoio_data** %6, align 8
  %51 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @cpp_microseq, align 4
  %54 = call i32 @ppb_MS_microseq(i32 %49, i32 %52, i32 %53, i32* %15)
  %55 = load i32, i32* @cpp_microseq, align 4
  %56 = load i32, i32* @CPP_PARAM, align 4
  %57 = call i32 (i32, i32, i32, i32, ...) @ppb_MS_init_msq(i32 %55, i32 1, i32 %56, i32 48)
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.vpoio_data*, %struct.vpoio_data** %6, align 8
  %60 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @cpp_microseq, align 4
  %63 = call i32 @ppb_MS_microseq(i32 %58, i32 %61, i32 %62, i32* %15)
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @PPB_IN_EPP_MODE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %39
  %68 = load i32, i32* @cpp_microseq, align 4
  %69 = load i32, i32* @CPP_PARAM, align 4
  %70 = call i32 (i32, i32, i32, i32, ...) @ppb_MS_init_msq(i32 %68, i32 1, i32 %69, i32 40)
  br label %75

71:                                               ; preds = %39
  %72 = load i32, i32* @cpp_microseq, align 4
  %73 = load i32, i32* @CPP_PARAM, align 4
  %74 = call i32 (i32, i32, i32, i32, ...) @ppb_MS_init_msq(i32 %72, i32 1, i32 %73, i32 224)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.vpoio_data*, %struct.vpoio_data** %6, align 8
  %78 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @cpp_microseq, align 4
  %81 = call i32 @ppb_MS_microseq(i32 %76, i32 %79, i32 %80, i32* %15)
  %82 = load i8, i8* %11, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, -72
  br i1 %84, label %93, label %85

85:                                               ; preds = %75
  %86 = load i8, i8* %12, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 24
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i8, i8* %13, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 48
  br i1 %92, label %93, label %120

93:                                               ; preds = %89, %85, %75
  %94 = load i64, i64* @bootverbose, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load %struct.vpoio_data*, %struct.vpoio_data** %6, align 8
  %98 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8, i8* %11, align 1
  %101 = sext i8 %100 to i32
  %102 = and i32 %101, 255
  %103 = trunc i32 %102 to i8
  %104 = load i8, i8* %12, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 255
  %107 = trunc i32 %106 to i8
  %108 = load i8, i8* %13, align 1
  %109 = sext i8 %108 to i32
  %110 = and i32 %109, 255
  %111 = trunc i32 %110 to i8
  %112 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %103, i8 signext %107, i8 signext %111)
  br label %113

113:                                              ; preds = %96, %93
  %114 = load i32*, i32** %8, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @VP0_ECONNECT, align 4
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %89
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %36
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @ppb_MS_init_msq(i32, i32, i32, i32, ...) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

declare dso_local i64 @PPB_IN_EPP_MODE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

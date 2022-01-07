; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_disconnect.c"
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
@.str = private unnamed_addr constant [39 x i8] c"(disconnect) s1=0x%x s2=0x%x, s3=0x%x\0A\00", align 1
@VP0_ECONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpoio_data*, i32*, i32)* @imm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_disconnect(%struct.vpoio_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpoio_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @DECLARE_CPP_MICROSEQ, align 4
  %14 = load %struct.vpoio_data*, %struct.vpoio_data** %5, align 8
  %15 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32, i32* @cpp_microseq, align 4
  %24 = load i32, i32* @CPP_S1, align 4
  %25 = load i32, i32* @CPP_S2, align 4
  %26 = load i32, i32* @CPP_S3, align 4
  %27 = load i32, i32* @CPP_PARAM, align 4
  %28 = call i32 @ppb_MS_init_msq(i32 %23, i32 4, i32 %24, i8* %9, i32 %25, i8* %10, i32 %26, i8* %11, i32 %27, i32 48)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.vpoio_data*, %struct.vpoio_data** %5, align 8
  %31 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @cpp_microseq, align 4
  %34 = call i32 @ppb_MS_microseq(i32 %29, i32 %32, i32 %33, i32* %12)
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, -72
  br i1 %37, label %46, label %38

38:                                               ; preds = %22
  %39 = load i8, i8* %10, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 24
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i8, i8* %11, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 56
  br i1 %45, label %46, label %73

46:                                               ; preds = %42, %38, %22
  %47 = load i64, i64* @bootverbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.vpoio_data*, %struct.vpoio_data** %5, align 8
  %51 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = and i32 %58, 255
  %60 = trunc i32 %59 to i8
  %61 = load i8, i8* %11, align 1
  %62 = sext i8 %61 to i32
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 signext %56, i8 signext %60, i8 signext %64)
  br label %66

66:                                               ; preds = %49, %46
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @VP0_ECONNECT, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.vpoio_data*, %struct.vpoio_data** %5, align 8
  %79 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ppb_release_bus(i32 %77, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %83

82:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_MS_init_msq(i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

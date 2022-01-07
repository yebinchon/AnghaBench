; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_aes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb.c_glxsb_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_softc = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"len must be a multiple of 16 (not %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SB_SOURCE_A = common dso_local global i32 0, align 4
@SB_DEST_A = common dso_local global i32 0, align 4
@SB_LENGTH_A = common dso_local global i32 0, align 4
@SB_CBC_IV = common dso_local global i32 0, align 4
@SB_CTL_CBC = common dso_local global i32 0, align 4
@SB_WKEY = common dso_local global i32 0, align 4
@SB_CTL_A = common dso_local global i32 0, align 4
@SB_CTL_WK = common dso_local global i32 0, align 4
@SB_CTL_DC = common dso_local global i32 0, align 4
@SB_CTL_SC = common dso_local global i32 0, align 4
@SB_CTL_ST = common dso_local global i32 0, align 4
@GLXSB_MAX_AES_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"operation failed to complete\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxsb_softc*, i32, i32, i32, i8*, i32, i8*)* @glxsb_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_aes(%struct.glxsb_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.glxsb_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.glxsb_softc* %0, %struct.glxsb_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %18 = load i32, i32* %14, align 4
  %19 = and i32 %18, 15
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %23 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %8, align 4
  br label %106

28:                                               ; preds = %7
  %29 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %30 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SB_SOURCE_A, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @bus_write_4(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %36 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SB_DEST_A, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @bus_write_4(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %42 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SB_LENGTH_A, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @bus_write_4(i32 %43, i32 %44, i32 %45)
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %28
  %50 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %51 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SB_CBC_IV, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @bus_write_region_4(i32 %52, i32 %53, i8* %54, i32 4)
  %56 = load i32, i32* @SB_CTL_CBC, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %49, %28
  %60 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %61 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SB_WKEY, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @bus_write_region_4(i32 %62, i32 %63, i8* %64, i32 4)
  %66 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %67 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SB_CTL_A, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @SB_CTL_WK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SB_CTL_DC, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SB_CTL_SC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SB_CTL_ST, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @bus_write_4(i32 %68, i32 %69, i32 %78)
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %97, %59
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @GLXSB_MAX_AES_LEN, align 4
  %83 = mul nsw i32 %82, 10
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %87 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SB_CTL_A, align 4
  %90 = call i32 @bus_read_4(i32 %88, i32 %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @SB_CTL_ST, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %106

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load %struct.glxsb_softc*, %struct.glxsb_softc** %9, align 8
  %102 = getelementptr inbounds %struct.glxsb_softc, %struct.glxsb_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @EIO, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %100, %95, %21
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_write_region_4(i32, i32, i8*, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

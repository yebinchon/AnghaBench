; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_run_qoutfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_run_qoutfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i32, %struct.ahd_completion* }
%struct.ahd_completion = type { i32, i32, i32 }
%struct.scb = type { i32 }

@AHD_RUNNING_QOUTFIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ahd_run_qoutfifo recursion\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: WARNING no command for scb %d (cmdcmplt)\0AQOUTPOS = %d\0A\00", align 1
@SG_STATUS_VALID = common dso_local global i32 0, align 4
@AHD_QOUT_SIZE = common dso_local global i32 0, align 4
@QOUTFIFO_ENTRY_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_run_qoutfifo(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.ahd_completion*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %6 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @AHD_RUNNING_QOUTFIFO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* @AHD_RUNNING_QOUTFIFO, align 4
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %22 = call i32 @ahd_sync_qoutfifo(%struct.ahd_softc* %20, i32 %21)
  br label %23

23:                                               ; preds = %98, %14
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %24, i32 0, i32 3
  %26 = load %struct.ahd_completion*, %struct.ahd_completion** %25, align 8
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %26, i64 %29
  store %struct.ahd_completion* %30, %struct.ahd_completion** %3, align 8
  %31 = load %struct.ahd_completion*, %struct.ahd_completion** %3, align 8
  %32 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %99

39:                                               ; preds = %23
  %40 = load %struct.ahd_completion*, %struct.ahd_completion** %3, align 8
  %41 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @aic_le16toh(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %44, i32 %45)
  store %struct.scb* %46, %struct.scb** %4, align 8
  %47 = load %struct.scb*, %struct.scb** %4, align 8
  %48 = icmp eq %struct.scb* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %51 = call i8* @ahd_name(%struct.ahd_softc* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %52, i64 %55)
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %58 = call i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc* %57)
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %60 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %59)
  br label %77

61:                                               ; preds = %39
  %62 = load %struct.ahd_completion*, %struct.ahd_completion** %3, align 8
  %63 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SG_STATUS_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %70 = load %struct.scb*, %struct.scb** %4, align 8
  %71 = call i32 @ahd_handle_scb_status(%struct.ahd_softc* %69, %struct.scb* %70)
  br label %76

72:                                               ; preds = %61
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %74 = load %struct.scb*, %struct.scb** %4, align 8
  %75 = call i32 @ahd_done(%struct.ahd_softc* %73, %struct.scb* %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %49
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  %82 = load i32, i32* @AHD_QOUT_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = and i64 %81, %84
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %89 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %77
  %93 = load i32, i32* @QOUTFIFO_ENTRY_VALID, align 4
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %95 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = xor i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %77
  br label %23

99:                                               ; preds = %38
  %100 = load i32, i32* @AHD_RUNNING_QOUTFIFO, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_sync_qoutfifo(%struct.ahd_softc*, i32) #1

declare dso_local i32 @aic_le16toh(i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i64) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_CORRECTABLE_ERROR(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_scb_status(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_done(%struct.ahd_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

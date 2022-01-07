; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_handshake_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_handshake_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }

@MPT_DB_STATE_READY = common dso_local global i64 0, align 8
@MPT_DB_STATE_RUNNING = common dso_local global i64 0, align 8
@MPT_DB_STATE_FAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"handshake aborted - invalid doorbell state\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MPT_OFFSET_INTR_STATUS = common dso_local global i32 0, align 4
@MPI_FUNCTION_HANDSHAKE = common dso_local global i64 0, align 8
@MPI_DOORBELL_FUNCTION_SHIFT = common dso_local global i64 0, align 8
@MPI_DOORBELL_ADD_DWORDS_SHIFT = common dso_local global i64 0, align 8
@MPT_OFFSET_DOORBELL = common dso_local global i32 0, align 4
@MPT_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"mpt_send_handshake_cmd: db ignored\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"mpt_send_handshake_cmd: db ack timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"mpt_send_handshake_cmd: timeout @ index %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_send_handshake_cmd(%struct.mpt_softc* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %12 = call i64 @mpt_rd_db(%struct.mpt_softc* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @MPT_STATE(i64 %13)
  %15 = load i64, i64* @MPT_DB_STATE_READY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @MPT_STATE(i64 %18)
  %20 = load i64, i64* @MPT_DB_STATE_RUNNING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @MPT_STATE(i64 %23)
  %25 = load i64, i64* @MPT_DB_STATE_FAULT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %17, %3
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @MPT_DB_IS_IN_USE(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %22
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %33 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @mpt_print_db(i64 %34)
  %36 = load i32, i32* @EBUSY, align 4
  store i32 %36, i32* %4, align 4
  br label %113

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 3
  %40 = lshr i64 %39, 2
  store i64 %40, i64* %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to i64*
  store i64* %42, i64** %10, align 8
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %44 = call i32 @mpt_rd_intr(%struct.mpt_softc* %43)
  %45 = call i64 @MPT_DB_INTR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %49 = load i32, i32* @MPT_OFFSET_INTR_STATUS, align 4
  %50 = call i32 @mpt_write(%struct.mpt_softc* %48, i32 %49, i64 0)
  br label %51

51:                                               ; preds = %47, %37
  %52 = load i64, i64* @MPI_FUNCTION_HANDSHAKE, align 8
  %53 = load i64, i64* @MPI_DOORBELL_FUNCTION_SHIFT, align 8
  %54 = shl i64 %52, %53
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @MPI_DOORBELL_ADD_DWORDS_SHIFT, align 8
  %57 = shl i64 %55, %56
  %58 = or i64 %54, %57
  store i64 %58, i64* %9, align 8
  %59 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %60 = load i32, i32* @MPT_OFFSET_DOORBELL, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @mpt_write(%struct.mpt_softc* %59, i32 %60, i64 %61)
  %63 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %64 = call i64 @mpt_wait_db_int(%struct.mpt_softc* %63)
  %65 = load i64, i64* @MPT_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %69 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %70, i32* %4, align 4
  br label %113

71:                                               ; preds = %51
  %72 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %73 = load i32, i32* @MPT_OFFSET_INTR_STATUS, align 4
  %74 = call i32 @mpt_write(%struct.mpt_softc* %72, i32 %73, i64 0)
  %75 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %76 = call i64 @mpt_wait_db_ack(%struct.mpt_softc* %75)
  %77 = load i64, i64* @MPT_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %81 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %82, i32* %4, align 4
  br label %113

83:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %107, %83
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %6, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %91 = load i32, i32* @MPT_OFFSET_DOORBELL, align 4
  %92 = load i64*, i64** %10, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  store i64* %93, i64** %10, align 8
  %94 = load i64, i64* %92, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @mpt_write_stream(%struct.mpt_softc* %90, i32 %91, i32 %95)
  %97 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %98 = call i64 @mpt_wait_db_ack(%struct.mpt_softc* %97)
  %99 = load i64, i64* @MPT_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %105, i32* %4, align 4
  br label %113

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %84

110:                                              ; preds = %84
  %111 = load i64, i64* @MPT_OK, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %101, %79, %67, %31
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @mpt_rd_db(%struct.mpt_softc*) #1

declare dso_local i64 @MPT_STATE(i64) #1

declare dso_local i64 @MPT_DB_IS_IN_USE(i64) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_print_db(i64) #1

declare dso_local i64 @MPT_DB_INTR(i32) #1

declare dso_local i32 @mpt_rd_intr(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_write(%struct.mpt_softc*, i32, i64) #1

declare dso_local i64 @mpt_wait_db_int(%struct.mpt_softc*) #1

declare dso_local i64 @mpt_wait_db_ack(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_write_stream(%struct.mpt_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

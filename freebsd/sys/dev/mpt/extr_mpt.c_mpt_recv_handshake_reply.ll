; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_recv_handshake_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_recv_handshake_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@MPT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"mpt_recv_handshake_cmd timeout1\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MPT_OFFSET_DOORBELL = common dso_local global i32 0, align 4
@MPT_DB_DATA_MASK = common dso_local global i32 0, align 4
@MPT_OFFSET_INTR_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"mpt_recv_handshake_cmd timeout2\0A\00", align 1
@MPI_FUNCTION_IOC_FACTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [82 x i8] c"reply length does not match message length: got %x; expected %zx for function %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"mpt_recv_handshake_cmd timeout3\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"mpt_recv_handshake_cmd timeout4\0A\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPT_PRT_TRACE = common dso_local global i64 0, align 8
@MPT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_recv_handshake_reply(%struct.mpt_softc* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = lshr i64 %13, 1
  store i64 %14, i64* %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %12, align 8
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %20 = call i64 @mpt_wait_db_int(%struct.mpt_softc* %19)
  %21 = load i64, i64* @MPT_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %25 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %26, i32* %4, align 4
  br label %165

27:                                               ; preds = %3
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %29 = load i32, i32* @MPT_OFFSET_DOORBELL, align 4
  %30 = call i32 @mpt_read(%struct.mpt_softc* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MPT_DB_DATA_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i8* @le16toh(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %39 = load i32, i32* @MPT_OFFSET_INTR_STATUS, align 4
  %40 = call i32 @mpt_write(%struct.mpt_softc* %38, i32 %39, i32 0)
  %41 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %42 = call i64 @mpt_wait_db_int(%struct.mpt_softc* %41)
  %43 = load i64, i64* @MPT_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %47 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %48, i32* %4, align 4
  br label %165

49:                                               ; preds = %27
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %51 = load i32, i32* @MPT_OFFSET_DOORBELL, align 4
  %52 = call i32 @mpt_read(%struct.mpt_softc* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @MPT_DB_DATA_MASK, align 4
  %55 = and i32 %53, %54
  %56 = call i8* @le16toh(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %61 = load i32, i32* @MPT_OFFSET_INTR_STATUS, align 4
  %62 = call i32 @mpt_write(%struct.mpt_softc* %60, i32 %61, i32 0)
  %63 = load i64, i64* %6, align 8
  %64 = lshr i64 %63, 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %49
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MPI_FUNCTION_IOC_FACTS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = shl i64 %79, 2
  %81 = load i64, i64* %6, align 8
  %82 = shl i64 %81, 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %76, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i64 %80, i64 %82, i64 %85)
  br label %87

87:                                               ; preds = %75, %69, %49
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = shl i64 %90, 1
  %92 = sub i64 %91, 2
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load i64, i64* %6, align 8
  %95 = sub i64 %94, 2
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %125, %87
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %8, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %103 = call i64 @mpt_wait_db_int(%struct.mpt_softc* %102)
  %104 = load i64, i64* @MPT_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %108 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %109, i32* %4, align 4
  br label %165

110:                                              ; preds = %101
  %111 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %112 = load i32, i32* @MPT_OFFSET_DOORBELL, align 4
  %113 = call i32 @mpt_read(%struct.mpt_softc* %111, i32 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  %116 = icmp sgt i32 %114, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @MPT_DB_DATA_MASK, align 4
  %120 = and i32 %118, %119
  %121 = call i8* @le16toh(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %127 = load i32, i32* @MPT_OFFSET_INTR_STATUS, align 4
  %128 = call i32 @mpt_write(%struct.mpt_softc* %126, i32 %127, i32 0)
  br label %97

129:                                              ; preds = %97
  %130 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %131 = call i64 @mpt_wait_db_int(%struct.mpt_softc* %130)
  %132 = load i64, i64* @MPT_OK, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %136 = call i32 (%struct.mpt_softc*, i8*, ...) @mpt_prt(%struct.mpt_softc* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %137, i32* %4, align 4
  br label %165

138:                                              ; preds = %129
  %139 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %140 = load i32, i32* @MPT_OFFSET_INTR_STATUS, align 4
  %141 = call i32 @mpt_write(%struct.mpt_softc* %139, i32 %140, i32 0)
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %138
  %150 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %151 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MPT_PRT_TRACE, align 8
  %154 = icmp sge i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %157 = call i32 @mpt_print_reply(%struct.TYPE_3__* %156)
  br label %158

158:                                              ; preds = %155, %149
  %159 = load i32, i32* @MPT_FAIL, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %159, %162
  store i32 %163, i32* %4, align 4
  br label %165

164:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %158, %134, %106, %45, %23
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i64 @mpt_wait_db_int(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*, ...) #1

declare dso_local i32 @mpt_read(%struct.mpt_softc*, i32) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @mpt_write(%struct.mpt_softc*, i32, i32) #1

declare dso_local i32 @mpt_print_reply(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

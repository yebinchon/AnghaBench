; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_sp_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_sp_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.eth_spe = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"EQ ring is full!\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SPQ ring is full!\0A\00", align 1
@SPE_HDR_T_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_T_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_T_CONN_TYPE = common dso_local global i32 0, align 4
@SPE_HDR_T_FUNCTION_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_T_FUNCTION_ID = common dso_local global i32 0, align 4
@DBG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"SPQE -> %#jx\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FUNC_RDATA -> %p / %#jx\0A\00", align 1
@func_rdata = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [99 x i8] c"SPQE[%x] (%x:%x) (cmd, common?) (%d,%d) hw_cid %x data (%x:%x) type(0x%x) left (CQ, EQ) (%lx,%lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bxe_sp_post(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.eth_spe*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @bxe_is_contextless_ramrod(i32 %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %21 = call i32 @BXE_SP_LOCK(%struct.bxe_softc* %20)
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %6
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %26 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %25, i32 0, i32 0
  %27 = call i32 @atomic_load_acq_long(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %31 = call i32 @BLOGE(%struct.bxe_softc* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %33 = call i32 @BXE_SP_UNLOCK(%struct.bxe_softc* %32)
  store i32 -1, i32* %7, align 4
  br label %169

34:                                               ; preds = %24
  br label %46

35:                                               ; preds = %6
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 1
  %38 = call i32 @atomic_load_acq_long(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %42 = call i32 @BLOGE(%struct.bxe_softc* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %44 = call i32 @BXE_SP_UNLOCK(%struct.bxe_softc* %43)
  store i32 -1, i32* %7, align 4
  br label %169

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %48 = call %struct.eth_spe* @bxe_sp_get_next(%struct.bxe_softc* %47)
  store %struct.eth_spe* %48, %struct.eth_spe** %14, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SPE_HDR_T_CMD_ID_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @HW_CID(%struct.bxe_softc* %52, i32 %53)
  %55 = or i32 %51, %54
  %56 = call i8* @htole32(i32 %55)
  %57 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %58 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @SPE_HDR_T_CONN_TYPE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @SPE_HDR_T_CONN_TYPE, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %66 = call i32 @SC_FUNC(%struct.bxe_softc* %65)
  %67 = load i32, i32* @SPE_HDR_T_FUNCTION_ID_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* @SPE_HDR_T_FUNCTION_ID, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %15, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @htole16(i32 %73)
  %75 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %76 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i8* @htole32(i32 %78)
  %80 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %81 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i8* %79, i8** %83, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i8* @htole32(i32 %84)
  %86 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %87 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %46
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %94 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %93, i32 0, i32 0
  %95 = call i32 @atomic_subtract_acq_long(i32* %94, i32 1)
  br label %100

96:                                               ; preds = %46
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %98 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %97, i32 0, i32 1
  %99 = call i32 @atomic_subtract_acq_long(i32* %98, i32 1)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %102 = load i32, i32* @DBG_SP, align 4
  %103 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %104 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %101, i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %110 = load i32, i32* @DBG_SP, align 4
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %112 = load i32, i32* @func_rdata, align 4
  %113 = call i32 @BXE_SP(%struct.bxe_softc* %111, i32 %112)
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %115 = load i32, i32* @func_rdata, align 4
  %116 = call i64 @BXE_SP_MAPPING(%struct.bxe_softc* %114, i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %109, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %117)
  %119 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %120 = load i32, i32* @DBG_SP, align 4
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %122 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %125 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @U64_HI(i64 %127)
  %129 = trunc i64 %128 to i32
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %131 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @U64_LO(i64 %133)
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %136 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = sext i32 %134 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %142 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = ptrtoint i32* %140 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @HW_CID(%struct.bxe_softc* %152, i32 %153)
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %159 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %158, i32 0, i32 1
  %160 = call i32 @atomic_load_acq_long(i32* %159)
  %161 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %162 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %161, i32 0, i32 0
  %163 = call i32 @atomic_load_acq_long(i32* %162)
  %164 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %119, i32 %120, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %129, i32 %149, i32 %150, i32 %151, i32 %154, i32 %155, i32 %156, i32 %157, i32 %160, i32 %163)
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %166 = call i32 @bxe_sp_prod_update(%struct.bxe_softc* %165)
  %167 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %168 = call i32 @BXE_SP_UNLOCK(%struct.bxe_softc* %167)
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %100, %40, %29
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local i32 @bxe_is_contextless_ramrod(i32, i32) #1

declare dso_local i32 @BXE_SP_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @atomic_load_acq_long(i32*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @BXE_SP_UNLOCK(%struct.bxe_softc*) #1

declare dso_local %struct.eth_spe* @bxe_sp_get_next(%struct.bxe_softc*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @HW_CID(%struct.bxe_softc*, i32) #1

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @atomic_subtract_acq_long(i32*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @BXE_SP_MAPPING(%struct.bxe_softc*, i32) #1

declare dso_local i64 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

declare dso_local i32 @bxe_sp_prod_update(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_write_wr_hdr_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_write_wr_hdr_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_desc = type { i32* }
%struct.txq_state = type { i64, i32 }
%struct.sge_txq = type { i64, %struct.tx_sw_desc*, %struct.tx_desc* }
%struct.tx_sw_desc = type { i32 }
%struct.sg_ent = type { i32 }
%struct.work_request_hdr = type { i32, i32 }

@F_WR_SOP = common dso_local global i32 0, align 4
@F_WR_EOP = common dso_local global i32 0, align 4
@WR_FLITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tx_desc*, %struct.txq_state*, %struct.sge_txq*, %struct.sg_ent*, i32, i32, i32, i32)* @write_wr_hdr_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_wr_hdr_sgl(i32 %0, %struct.tx_desc* %1, %struct.txq_state* %2, %struct.sge_txq* %3, %struct.sg_ent* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.tx_desc*, align 8
  %12 = alloca %struct.txq_state*, align 8
  %13 = alloca %struct.sge_txq*, align 8
  %14 = alloca %struct.sg_ent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.work_request_hdr*, align 8
  %20 = alloca %struct.tx_sw_desc*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.work_request_hdr*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.tx_desc* %1, %struct.tx_desc** %11, align 8
  store %struct.txq_state* %2, %struct.txq_state** %12, align 8
  store %struct.sge_txq* %3, %struct.sge_txq** %13, align 8
  store %struct.sg_ent* %4, %struct.sg_ent** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %25 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %26 = bitcast %struct.tx_desc* %25 to %struct.work_request_hdr*
  store %struct.work_request_hdr* %26, %struct.work_request_hdr** %19, align 8
  %27 = load %struct.sge_txq*, %struct.sge_txq** %13, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 1
  %29 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %28, align 8
  %30 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %31 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %29, i64 %32
  store %struct.tx_sw_desc* %33, %struct.tx_sw_desc** %20, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i64 @__predict_true(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %9
  %40 = load %struct.work_request_hdr*, %struct.work_request_hdr** %19, align 8
  %41 = load i32, i32* @F_WR_SOP, align 4
  %42 = load i32, i32* @F_WR_EOP, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @V_WR_DATATYPE(i32 1)
  %45 = or i32 %43, %44
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @V_WR_SGLSFLT(i32 %46)
  %48 = or i32 %45, %47
  %49 = call i32 @htonl(i32 %48)
  %50 = load i32, i32* %17, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add i32 %52, %53
  %55 = call i32 @V_WR_LEN(i32 %54)
  %56 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %57 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @V_WR_GEN(i32 %58)
  %60 = or i32 %55, %59
  %61 = call i32 @htonl(i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @set_wr_hdr(%struct.work_request_hdr* %40, i32 %51, i32 %63)
  %65 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %66 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %67 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wr_gen2(%struct.tx_desc* %65, i32 %68)
  br label %204

70:                                               ; preds = %9
  %71 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %72 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %21, align 4
  %74 = load %struct.sg_ent*, %struct.sg_ent** %14, align 8
  %75 = bitcast %struct.sg_ent* %74 to i32*
  store i32* %75, i32** %22, align 8
  %76 = load %struct.work_request_hdr*, %struct.work_request_hdr** %19, align 8
  store %struct.work_request_hdr* %76, %struct.work_request_hdr** %23, align 8
  %77 = load i32, i32* @F_WR_SOP, align 4
  %78 = call i32 @V_WR_DATATYPE(i32 1)
  %79 = or i32 %77, %78
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @V_WR_SGLSFLT(i32 %80)
  %82 = or i32 %79, %81
  %83 = call i32 @htonl(i32 %82)
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.work_request_hdr*, %struct.work_request_hdr** %19, align 8
  %87 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %151, %70
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %182

91:                                               ; preds = %88
  %92 = load i32, i32* @WR_FLITS, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sub i32 %92, %93
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %24, align 4
  br label %100

100:                                              ; preds = %98, %91
  %101 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %102 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32*, i32** %22, align 8
  %108 = load i32, i32* %24, align 4
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memcpy(i32* %106, i32* %107, i32 %111)
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %16, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, -1
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %100
  br label %182

121:                                              ; preds = %100
  %122 = load i32, i32* %24, align 4
  %123 = load i32*, i32** %22, align 8
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %22, align 8
  %126 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %127 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %126, i32 1
  store %struct.tx_desc* %127, %struct.tx_desc** %11, align 8
  %128 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %20, align 8
  %129 = getelementptr inbounds %struct.tx_sw_desc, %struct.tx_sw_desc* %128, i32 1
  store %struct.tx_sw_desc* %129, %struct.tx_sw_desc** %20, align 8
  %130 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %131 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.sge_txq*, %struct.sge_txq** %13, align 8
  %135 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %121
  %139 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %140 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %142 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = xor i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.sge_txq*, %struct.sge_txq** %13, align 8
  %146 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %145, i32 0, i32 2
  %147 = load %struct.tx_desc*, %struct.tx_desc** %146, align 8
  store %struct.tx_desc* %147, %struct.tx_desc** %11, align 8
  %148 = load %struct.sge_txq*, %struct.sge_txq** %13, align 8
  %149 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %148, i32 0, i32 1
  %150 = load %struct.tx_sw_desc*, %struct.tx_sw_desc** %149, align 8
  store %struct.tx_sw_desc* %150, %struct.tx_sw_desc** %20, align 8
  br label %151

151:                                              ; preds = %138, %121
  %152 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %153 = bitcast %struct.tx_desc* %152 to %struct.work_request_hdr*
  store %struct.work_request_hdr* %153, %struct.work_request_hdr** %19, align 8
  %154 = call i32 @V_WR_DATATYPE(i32 1)
  %155 = call i32 @V_WR_SGLSFLT(i32 1)
  %156 = or i32 %154, %155
  %157 = call i32 @htonl(i32 %156)
  %158 = load i32, i32* %17, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.work_request_hdr*, %struct.work_request_hdr** %19, align 8
  %161 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @WR_FLITS, align 4
  %163 = load i32, i32* %16, align 4
  %164 = add i32 %163, 1
  %165 = call i32 @min(i32 %162, i32 %164)
  %166 = call i32 @V_WR_LEN(i32 %165)
  %167 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %168 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @V_WR_GEN(i32 %169)
  %171 = or i32 %166, %170
  %172 = call i32 @htonl(i32 %171)
  %173 = load i32, i32* %18, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.work_request_hdr*, %struct.work_request_hdr** %19, align 8
  %176 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %178 = load %struct.txq_state*, %struct.txq_state** %12, align 8
  %179 = getelementptr inbounds %struct.txq_state, %struct.txq_state* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @wr_gen2(%struct.tx_desc* %177, i32 %180)
  store i32 1, i32* %15, align 4
  br label %88

182:                                              ; preds = %120, %88
  %183 = load i32, i32* @F_WR_EOP, align 4
  %184 = call i32 @htonl(i32 %183)
  %185 = load %struct.work_request_hdr*, %struct.work_request_hdr** %19, align 8
  %186 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = call i32 (...) @wmb()
  %190 = load i32, i32* @WR_FLITS, align 4
  %191 = call i32 @V_WR_LEN(i32 %190)
  %192 = load i32, i32* %21, align 4
  %193 = call i32 @V_WR_GEN(i32 %192)
  %194 = or i32 %191, %193
  %195 = call i32 @htonl(i32 %194)
  %196 = load i32, i32* %18, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.work_request_hdr*, %struct.work_request_hdr** %23, align 8
  %199 = getelementptr inbounds %struct.work_request_hdr, %struct.work_request_hdr* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.work_request_hdr*, %struct.work_request_hdr** %23, align 8
  %201 = bitcast %struct.work_request_hdr* %200 to %struct.tx_desc*
  %202 = load i32, i32* %21, align 4
  %203 = call i32 @wr_gen2(%struct.tx_desc* %201, i32 %202)
  br label %204

204:                                              ; preds = %182, %39
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @set_wr_hdr(%struct.work_request_hdr*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @V_WR_DATATYPE(i32) #1

declare dso_local i32 @V_WR_SGLSFLT(i32) #1

declare dso_local i32 @V_WR_LEN(i32) #1

declare dso_local i32 @V_WR_GEN(i32) #1

declare dso_local i32 @wr_gen2(%struct.tx_desc*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

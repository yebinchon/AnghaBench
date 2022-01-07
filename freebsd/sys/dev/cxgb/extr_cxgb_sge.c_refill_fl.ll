; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_refill_fl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_refill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_fl = type { i64, i64, i32, i64, i32, i32, i32, %struct.rx_desc*, %struct.rx_sw_desc*, i32, i32 }
%struct.rx_desc = type { i8*, i8*, i8*, i8* }
%struct.rx_sw_desc = type { i32, %struct.mbuf*, i32*, i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.refill_fl_cb_arg = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@zone_pack = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_NOINIT = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@RX_SW_DESC_MAP_CREATED = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bus_dmamap_create failed %d\0A\00", align 1
@RX_SW_DESC_INUSE = common dso_local global i32 0, align 4
@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@refill_fl_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sge_fl*, i32)* @refill_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_fl(i32* %0, %struct.sge_fl* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sge_fl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_sw_desc*, align 8
  %8 = alloca %struct.rx_desc*, align 8
  %9 = alloca %struct.refill_fl_cb_arg, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %14 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %13, i32 0, i32 8
  %15 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %14, align 8
  %16 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %17 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %15, i64 %18
  store %struct.rx_sw_desc* %19, %struct.rx_sw_desc** %7, align 8
  %20 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %21 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %20, i32 0, i32 7
  %22 = load %struct.rx_desc*, %struct.rx_desc** %21, align 8
  %23 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %24 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %22, i64 %25
  store %struct.rx_desc* %26, %struct.rx_desc** %8, align 8
  %27 = getelementptr inbounds %struct.refill_fl_cb_arg, %struct.refill_fl_cb_arg* %9, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %169, %3
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %178

32:                                               ; preds = %28
  %33 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %34 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @zone_pack, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = load i32, i32* @MT_NOINIT, align 4
  %41 = load i32, i32* @M_PKTHDR, align 4
  %42 = call %struct.mbuf* @m_getcl(i32 %39, i32 %40, i32 %41)
  store %struct.mbuf* %42, %struct.mbuf** %10, align 8
  %43 = icmp eq %struct.mbuf* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %178

45:                                               ; preds = %38
  %46 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %11, align 8
  br label %70

50:                                               ; preds = %32
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %53 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @m_cljget(i32* null, i32 %51, i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %178

58:                                               ; preds = %50
  %59 = load i32, i32* @M_NOWAIT, align 4
  %60 = load i32, i32* @MT_NOINIT, align 4
  %61 = call %struct.mbuf* @m_gethdr(i32 %59, i32 %60)
  store %struct.mbuf* %61, %struct.mbuf** %10, align 8
  %62 = icmp eq %struct.mbuf* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %65 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @uma_zfree(i64 %66, i32* %67)
  br label %178

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %45
  %71 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %72 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RX_SW_DESC_MAP_CREATED, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %79 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %82 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %81, i32 0, i32 3
  %83 = call i32 @bus_dmamap_create(i32 %80, i32 0, i32* %82)
  store i32 %83, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i32, i32* @LOG_WARNING, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @log(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %90 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @uma_zfree(i64 %91, i32* %92)
  br label %179

94:                                               ; preds = %77
  %95 = load i32, i32* @RX_SW_DESC_MAP_CREATED, align 4
  %96 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %97 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %70
  %101 = load i32*, i32** %11, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = call i32 @pmap_kextract(i32 %102)
  %104 = getelementptr inbounds %struct.refill_fl_cb_arg, %struct.refill_fl_cb_arg* %9, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @RX_SW_DESC_INUSE, align 4
  %107 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %108 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %113 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %115 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %116 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %115, i32 0, i32 1
  store %struct.mbuf* %114, %struct.mbuf** %116, align 8
  %117 = getelementptr inbounds %struct.refill_fl_cb_arg, %struct.refill_fl_cb_arg* %9, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @htobe32(i32 %119)
  %121 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %122 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds %struct.refill_fl_cb_arg, %struct.refill_fl_cb_arg* %9, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = ashr i32 %125, 32
  %127 = call i8* @htobe32(i32 %126)
  %128 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %129 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %131 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @V_FLD_GEN1(i32 %132)
  %134 = call i8* @htobe32(i32 %133)
  %135 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %136 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %138 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @V_FLD_GEN2(i32 %139)
  %141 = call i8* @htobe32(i32 %140)
  %142 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %143 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %145 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %144, i32 1
  store %struct.rx_desc* %145, %struct.rx_desc** %8, align 8
  %146 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %7, align 8
  %147 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %146, i32 1
  store %struct.rx_sw_desc* %147, %struct.rx_sw_desc** %7, align 8
  %148 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %149 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %153 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %100
  %157 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %158 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %160 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = xor i32 %161, 1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %164 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %163, i32 0, i32 8
  %165 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %164, align 8
  store %struct.rx_sw_desc* %165, %struct.rx_sw_desc** %7, align 8
  %166 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %167 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %166, i32 0, i32 7
  %168 = load %struct.rx_desc*, %struct.rx_desc** %167, align 8
  store %struct.rx_desc* %168, %struct.rx_desc** %8, align 8
  br label %169

169:                                              ; preds = %156, %100
  %170 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %171 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %175 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %28

178:                                              ; preds = %63, %57, %44, %28
  br label %179

179:                                              ; preds = %178, %85
  %180 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %181 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %182, 32
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %186 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %185, i32 0, i32 4
  store i32 0, i32* %186, align 8
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* @A_SG_KDOORBELL, align 4
  %189 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %190 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @V_EGRCNTX(i32 %191)
  %193 = call i32 @t3_write_reg(i32* %187, i32 %188, i32 %192)
  br label %194

194:                                              ; preds = %184, %179
  ret void
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32* @m_cljget(i32*, i32, i32) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @uma_zfree(i64, i32*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @V_FLD_GEN1(i32) #1

declare dso_local i32 @V_FLD_GEN2(i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

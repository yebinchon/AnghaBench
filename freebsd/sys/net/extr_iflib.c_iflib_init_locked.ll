; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__*, i32, i32, %struct.TYPE_21__*, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_SCTP = common dso_local global i32 0, align 4
@CSUM_IP6_TCP = common dso_local global i32 0, align 4
@CSUM_IP6_UDP = common dso_local global i32 0, align 4
@CSUM_IP6_SCTP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_IP_TSO = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"setting up free list %d failed - check cluster settings\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@iflib_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @iflib_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_init_locked(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %3, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 4
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %4, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = call i32 @if_setdrvflagbits(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %25 = call i32 @IFDI_INTR_DISABLE(%struct.TYPE_23__* %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CSUM_IP, align 4
  %30 = load i32, i32* @CSUM_TCP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CSUM_UDP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CSUM_SCTP, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %28, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSUM_IP6_TCP, align 4
  %41 = load i32, i32* @CSUM_IP6_UDP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CSUM_IP6_SCTP, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @if_clearhwassist(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @if_getcapenable(i32 %48)
  %50 = load i32, i32* @IFCAP_TXCSUM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @if_sethwassistbits(i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %1
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @if_getcapenable(i32 %58)
  %60 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @if_sethwassistbits(i32 %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @if_getcapenable(i32 %68)
  %70 = load i32, i32* @IFCAP_TSO4, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @CSUM_IP_TSO, align 4
  %76 = call i32 @if_sethwassistbits(i32 %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @if_getcapenable(i32 %78)
  %80 = load i32, i32* @IFCAP_TSO6, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @CSUM_IP6_TSO, align 4
  %86 = call i32 @if_sethwassistbits(i32 %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %83, %77
  store i32 0, i32* %9, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %7, align 8
  br label %91

91:                                               ; preds = %108, %87
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = call i32 @CALLOUT_LOCK(%struct.TYPE_20__* %98)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = call i32 @callout_stop(%struct.TYPE_19__* %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = call i32 @CALLOUT_UNLOCK(%struct.TYPE_20__* %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %107 = call i32 @iflib_netmap_txq_init(%struct.TYPE_23__* %105, %struct.TYPE_20__* %106)
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 1
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %7, align 8
  br label %91

113:                                              ; preds = %91
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %115 = call i32 @iflib_calc_rx_mbuf_sz(%struct.TYPE_23__* %114)
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %117 = call i32 @IFDI_INIT(%struct.TYPE_23__* %116)
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @if_getdrvflags(i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @MPASS(i32 %122)
  store i32 0, i32* %9, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  store %struct.TYPE_21__* %126, %struct.TYPE_21__** %8, align 8
  br label %127

127:                                              ; preds = %177, %113
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %182

133:                                              ; preds = %127
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @if_getcapenable(i32 %134)
  %136 = load i32, i32* @IFCAP_NETMAP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @MPASS(i32 %145)
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = call i32 @iflib_netmap_rxq_init(%struct.TYPE_23__* %147, %struct.TYPE_21__* %148)
  br label %177

150:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %171, %150
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %154
  %161 = load i32, i32* %6, align 4
  %162 = call i64 @iflib_fl_setup(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @device_printf(i32 %167, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %183

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %154

176:                                              ; preds = %154
  br label %177

177:                                              ; preds = %176, %139
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 1
  store %struct.TYPE_21__* %181, %struct.TYPE_21__** %8, align 8
  br label %127

182:                                              ; preds = %127
  br label %183

183:                                              ; preds = %182, %164
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %188 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %189 = call i32 @if_setdrvflagbits(i32 %186, i32 %187, i32 %188)
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %191 = call i32 @IFDI_INTR_ENABLE(%struct.TYPE_23__* %190)
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %193, align 8
  store %struct.TYPE_20__* %194, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %9, align 4
  br label %195

195:                                              ; preds = %213, %183
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %195
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i32, i32* @hz, align 4
  %205 = sdiv i32 %204, 2
  %206 = load i32, i32* @iflib_timer, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @callout_reset_on(%struct.TYPE_19__* %203, i32 %205, i32 %206, %struct.TYPE_20__* %207, i32 %211)
  br label %213

213:                                              ; preds = %201
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 1
  store %struct.TYPE_20__* %217, %struct.TYPE_20__** %7, align 8
  br label %195

218:                                              ; preds = %195
  ret void
}

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @IFDI_INTR_DISABLE(%struct.TYPE_23__*) #1

declare dso_local i32 @if_clearhwassist(i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @CALLOUT_LOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @callout_stop(%struct.TYPE_19__*) #1

declare dso_local i32 @CALLOUT_UNLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @iflib_netmap_txq_init(%struct.TYPE_23__*, %struct.TYPE_20__*) #1

declare dso_local i32 @iflib_calc_rx_mbuf_sz(%struct.TYPE_23__*) #1

declare dso_local i32 @IFDI_INIT(%struct.TYPE_23__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @iflib_netmap_rxq_init(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i64 @iflib_fl_setup(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @IFDI_INTR_ENABLE(%struct.TYPE_23__*) #1

declare dso_local i32 @callout_reset_on(%struct.TYPE_19__*, i32, i32, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

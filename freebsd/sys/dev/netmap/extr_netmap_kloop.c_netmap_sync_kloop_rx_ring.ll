; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_kloop_ring_args = type { i64, i64, i32, %struct.nm_csb_ktoa*, %struct.nm_csb_atok*, %struct.netmap_kring* }
%struct.nm_csb_ktoa = type { i32 }
%struct.nm_csb_atok = type { i32 }
%struct.netmap_kring = type { i64, i64, i32 (%struct.netmap_kring*, i32)*, i64, i32, i32 }
%struct.netmap_ring = type { i64, i32, i32 }

@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_RXSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pre rxsync\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rxsync() failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"post rxsync\00", align 1
@SYNC_LOOP_RX_DRY_CYCLES_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"nr_hwtail: %d rhead: %d dry_cycles: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sync_kloop_ring_args*)* @netmap_sync_kloop_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_sync_kloop_rx_ring(%struct.sync_kloop_ring_args* %0) #0 {
  %2 = alloca %struct.sync_kloop_ring_args*, align 8
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca %struct.nm_csb_atok*, align 8
  %5 = alloca %struct.nm_csb_ktoa*, align 8
  %6 = alloca %struct.netmap_ring, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sync_kloop_ring_args* %0, %struct.sync_kloop_ring_args** %2, align 8
  %11 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %12 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %11, i32 0, i32 5
  %13 = load %struct.netmap_kring*, %struct.netmap_kring** %12, align 8
  store %struct.netmap_kring* %13, %struct.netmap_kring** %3, align 8
  %14 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %15 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %14, i32 0, i32 4
  %16 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %15, align 8
  store %struct.nm_csb_atok* %16, %struct.nm_csb_atok** %4, align 8
  %17 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %18 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %17, i32 0, i32 3
  %19 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %18, align 8
  store %struct.nm_csb_ktoa* %19, %struct.nm_csb_ktoa** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %21 = call i32 @nm_kr_tryget(%struct.netmap_kring* %20, i32 1, i32* null)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %188

25:                                               ; preds = %1
  %26 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %27 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %30 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %33 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %38 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %37, i32 0)
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @sync_kloop_kernel_read(%struct.nm_csb_atok* %40, %struct.netmap_ring* %6, i64 %41)
  br label %43

43:                                               ; preds = %184, %154, %39
  %44 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %45 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %49 = call i64 @nm_rxsync_prologue(%struct.netmap_kring* %48, %struct.netmap_ring* %6)
  %50 = load i64, i64* %9, align 8
  %51 = icmp sge i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %43
  %56 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %57 = call i32 @netmap_ring_reinit(%struct.netmap_kring* %56)
  %58 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %59 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %64 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %63, i32 1)
  br label %65

65:                                               ; preds = %62, %55
  br label %185

66:                                               ; preds = %43
  %67 = load i32, i32* @netmap_debug, align 4
  %68 = load i32, i32* @NM_DEBUG_RXSYNC, align 4
  %69 = and i32 %67, %68
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %74 = call i32 @sync_kloop_kring_dump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.netmap_kring* %73)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %77 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %76, i32 0, i32 2
  %78 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %77, align 8
  %79 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %80 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %78(%struct.netmap_kring* %79, i32 %81)
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %75
  %86 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %87 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %92 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %91, i32 1)
  br label %93

93:                                               ; preds = %90, %85
  %94 = call i32 @nm_prerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %185

95:                                               ; preds = %75
  %96 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %97 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @NM_ACCESS_ONCE(i32 %98)
  store i64 %99, i64* %10, align 8
  %100 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %101 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %102 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @sync_kloop_kernel_write(%struct.nm_csb_ktoa* %100, i32 %103, i64 %104)
  %106 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %107 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %95
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %114 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %118

115:                                              ; preds = %95
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* @netmap_debug, align 4
  %120 = load i32, i32* @NM_DEBUG_RXSYNC, align 4
  %121 = and i32 %119, %120
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %126 = call i32 @sync_kloop_kring_dump(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.netmap_kring* %125)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %4, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @sync_kloop_kernel_read(%struct.nm_csb_atok* %128, %struct.netmap_ring* %6, i64 %129)
  %131 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %132 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @sync_kloop_norxslots(%struct.netmap_kring* %131, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %127
  %137 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %138 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %185

142:                                              ; preds = %136
  %143 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %144 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %143, i32 1)
  %145 = call i32 (...) @nm_stld_barrier()
  %146 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %4, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @sync_kloop_kernel_read(%struct.nm_csb_atok* %146, %struct.netmap_ring* %6, i64 %147)
  %149 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %150 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @sync_kloop_norxslots(%struct.netmap_kring* %149, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %142
  %155 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %156 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %155, i32 0)
  br label %43

157:                                              ; preds = %142
  br label %185

158:                                              ; preds = %127
  %159 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %160 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @NM_ACCESS_ONCE(i32 %161)
  store i64 %162, i64* %10, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %165 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @SYNC_LOOP_RX_DRY_CYCLES_MAX, align 4
  %171 = icmp sge i32 %169, %170
  br label %172

172:                                              ; preds = %168, %158
  %173 = phi i1 [ true, %158 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load i64, i64* %10, align 8
  %179 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %180 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @nm_prdis(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %178, i64 %181, i32 %182)
  br label %185

184:                                              ; preds = %172
  br label %43

185:                                              ; preds = %177, %157, %141, %93, %65
  %186 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %187 = call i32 @nm_kr_put(%struct.netmap_kring* %186)
  br label %188

188:                                              ; preds = %185, %24
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nm_kr_tryget(%struct.netmap_kring*, i32, i32*) #1

declare dso_local i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa*, i32) #1

declare dso_local i32 @sync_kloop_kernel_read(%struct.nm_csb_atok*, %struct.netmap_ring*, i64) #1

declare dso_local i64 @nm_rxsync_prologue(%struct.netmap_kring*, %struct.netmap_ring*) #1

declare dso_local i32 @netmap_ring_reinit(%struct.netmap_kring*) #1

declare dso_local i32 @sync_kloop_kring_dump(i8*, %struct.netmap_kring*) #1

declare dso_local i32 @nm_prerr(i8*) #1

declare dso_local i64 @NM_ACCESS_ONCE(i32) #1

declare dso_local i32 @sync_kloop_kernel_write(%struct.nm_csb_ktoa*, i32, i64) #1

declare dso_local i64 @sync_kloop_norxslots(%struct.netmap_kring*, i32) #1

declare dso_local i32 @nm_stld_barrier(...) #1

declare dso_local i32 @nm_prdis(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @nm_kr_put(%struct.netmap_kring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

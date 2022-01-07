; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_kloop_ring_args = type { i64, i64, i32, %struct.nm_csb_ktoa*, %struct.nm_csb_atok*, %struct.netmap_kring* }
%struct.nm_csb_ktoa = type { i32 }
%struct.nm_csb_atok = type { i32 }
%struct.netmap_kring = type { i32, i32, i64, i32 (%struct.netmap_kring*, i32)*, i64, i64 }
%struct.netmap_ring = type { i32, i64, i32 }

@NAF_FORCE_RECLAIM = common dso_local global i32 0, align 4
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_TXSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pre txsync\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"txsync() failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"post txsync\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TX ring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sync_kloop_ring_args*)* @netmap_sync_kloop_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_sync_kloop_tx_ring(%struct.sync_kloop_ring_args* %0) #0 {
  %2 = alloca %struct.sync_kloop_ring_args*, align 8
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca %struct.nm_csb_atok*, align 8
  %5 = alloca %struct.nm_csb_ktoa*, align 8
  %6 = alloca %struct.netmap_ring, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sync_kloop_ring_args* %0, %struct.sync_kloop_ring_args** %2, align 8
  %10 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %11 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %10, i32 0, i32 5
  %12 = load %struct.netmap_kring*, %struct.netmap_kring** %11, align 8
  store %struct.netmap_kring* %12, %struct.netmap_kring** %3, align 8
  %13 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %14 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %13, i32 0, i32 4
  %15 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %14, align 8
  store %struct.nm_csb_atok* %15, %struct.nm_csb_atok** %4, align 8
  %16 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %17 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %16, i32 0, i32 3
  %18 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %17, align 8
  store %struct.nm_csb_ktoa* %18, %struct.nm_csb_ktoa** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %20 = call i32 @nm_kr_tryget(%struct.netmap_kring* %19, i32 1, i32* null)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %191

24:                                               ; preds = %1
  %25 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %26 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %29 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %34 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @sync_kloop_kernel_read(%struct.nm_csb_atok* %36, %struct.netmap_ring* %6, i32 %37)
  br label %39

39:                                               ; preds = %187, %177, %35
  %40 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %43 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %39
  %53 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %54 = call i32 @nm_kr_txspace(%struct.netmap_kring* %53)
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 1
  %57 = icmp sle i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* @NAF_FORCE_RECLAIM, align 4
  %60 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %65 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  %68 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %69 = call i32 @nm_txsync_prologue(%struct.netmap_kring* %68, %struct.netmap_ring* %6)
  %70 = load i32, i32* %8, align 4
  %71 = icmp sge i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %63
  %76 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %77 = call i32 @netmap_ring_reinit(%struct.netmap_kring* %76)
  %78 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %79 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %84 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %83, i32 1)
  br label %85

85:                                               ; preds = %82, %75
  br label %188

86:                                               ; preds = %63
  %87 = load i32, i32* @netmap_debug, align 4
  %88 = load i32, i32* @NM_DEBUG_TXSYNC, align 4
  %89 = and i32 %87, %88
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %94 = call i32 @sync_kloop_kring_dump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.netmap_kring* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %97 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %96, i32 0, i32 3
  %98 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %97, align 8
  %99 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %100 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 %98(%struct.netmap_kring* %99, i32 %101)
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %95
  %106 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %107 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %112 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %111, i32 1)
  br label %113

113:                                              ; preds = %110, %105
  %114 = call i32 @nm_prerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %188

115:                                              ; preds = %95
  %116 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %117 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %118 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %121 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @sync_kloop_kernel_write(%struct.nm_csb_ktoa* %116, i32 %119, i64 %122)
  %124 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %125 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %128 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %126, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %115
  %132 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %133 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %136 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  store i32 1, i32* %7, align 4
  br label %137

137:                                              ; preds = %131, %115
  %138 = load i32, i32* @netmap_debug, align 4
  %139 = load i32, i32* @NM_DEBUG_TXSYNC, align 4
  %140 = and i32 %138, %139
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %145 = call i32 @sync_kloop_kring_dump(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.netmap_kring* %144)
  br label %146

146:                                              ; preds = %143, %137
  %147 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %4, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @sync_kloop_kernel_read(%struct.nm_csb_atok* %147, %struct.netmap_ring* %6, i32 %148)
  %150 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %154 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %157, label %181

157:                                              ; preds = %146
  %158 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %2, align 8
  %159 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %188

163:                                              ; preds = %157
  %164 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %165 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %164, i32 1)
  %166 = call i32 (...) @nm_stld_barrier()
  %167 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %4, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @sync_kloop_kernel_read(%struct.nm_csb_atok* %167, %struct.netmap_ring* %6, i32 %168)
  %170 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %6, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %174 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %163
  %178 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %5, align 8
  %179 = call i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa* %178, i32 0)
  br label %39

180:                                              ; preds = %163
  br label %188

181:                                              ; preds = %146
  %182 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %183 = call i64 @nm_kr_txempty(%struct.netmap_kring* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = call i32 (i32, i8*, ...) @nm_prdis(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %188

187:                                              ; preds = %181
  br label %39

188:                                              ; preds = %185, %180, %162, %113, %85
  %189 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %190 = call i32 @nm_kr_put(%struct.netmap_kring* %189)
  br label %191

191:                                              ; preds = %188, %23
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nm_kr_tryget(%struct.netmap_kring*, i32, i32*) #1

declare dso_local i32 @csb_ktoa_kick_enable(%struct.nm_csb_ktoa*, i32) #1

declare dso_local i32 @sync_kloop_kernel_read(%struct.nm_csb_atok*, %struct.netmap_ring*, i32) #1

declare dso_local i32 @nm_kr_txspace(%struct.netmap_kring*) #1

declare dso_local i32 @nm_txsync_prologue(%struct.netmap_kring*, %struct.netmap_ring*) #1

declare dso_local i32 @netmap_ring_reinit(%struct.netmap_kring*) #1

declare dso_local i32 @sync_kloop_kring_dump(i8*, %struct.netmap_kring*) #1

declare dso_local i32 @nm_prerr(i8*) #1

declare dso_local i32 @sync_kloop_kernel_write(%struct.nm_csb_ktoa*, i32, i64) #1

declare dso_local i32 @nm_stld_barrier(...) #1

declare dso_local i64 @nm_kr_txempty(%struct.netmap_kring*) #1

declare dso_local i32 @nm_prdis(i32, i8*, ...) #1

declare dso_local i32 @nm_kr_put(%struct.netmap_kring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

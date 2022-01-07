; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_alloccmd_cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_alloccmd_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.amr_command_cluster = type { %struct.amr_command* }
%struct.amr_command = type { i32, i32, i32, i64, i64, %struct.TYPE_2__, i64, %struct.amr_softc* }
%struct.TYPE_2__ = type { i64, i64 }

@AMR_CMD_CLUSTERSIZE = common dso_local global i32 0, align 4
@M_AMR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@acc_link = common dso_local global i32 0, align 4
@AMR_CMD_CLUSTERCOUNT = common dso_local global i32 0, align 4
@AMR_NSEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_softc*)* @amr_alloccmd_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_alloccmd_cluster(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca %struct.amr_command_cluster*, align 8
  %4 = alloca %struct.amr_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  %7 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %8 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %13 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %12, i32 0, i32 0
  store i32 2, i32* %13, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %16 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %19 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %182

23:                                               ; preds = %14
  %24 = load i32, i32* @AMR_CMD_CLUSTERSIZE, align 4
  %25 = load i32, i32* @M_AMR, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.amr_command_cluster* @malloc(i32 %24, i32 %25, i32 %28)
  store %struct.amr_command_cluster* %29, %struct.amr_command_cluster** %3, align 8
  %30 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %3, align 8
  %31 = icmp ne %struct.amr_command_cluster* %30, null
  br i1 %31, label %32, label %182

32:                                               ; preds = %23
  %33 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %34 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %37 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %36, i32 0, i32 9
  %38 = call i32 @mtx_lock(i32* %37)
  %39 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %40 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %39, i32 0, i32 10
  %41 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %3, align 8
  %42 = load i32, i32* @acc_link, align 4
  %43 = call i32 @TAILQ_INSERT_TAIL(i32* %40, %struct.amr_command_cluster* %41, i32 %42)
  %44 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %45 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %44, i32 0, i32 9
  %46 = call i32 @mtx_unlock(i32* %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %175, %32
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @AMR_CMD_CLUSTERCOUNT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %178

51:                                               ; preds = %47
  %52 = load %struct.amr_command_cluster*, %struct.amr_command_cluster** %3, align 8
  %53 = getelementptr inbounds %struct.amr_command_cluster, %struct.amr_command_cluster* %52, i32 0, i32 0
  %54 = load %struct.amr_command*, %struct.amr_command** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %54, i64 %56
  store %struct.amr_command* %57, %struct.amr_command** %4, align 8
  %58 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %59 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %60 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %59, i32 0, i32 7
  store %struct.amr_softc* %58, %struct.amr_softc** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %63 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %65 = call i64 @AMR_IS_SG64(%struct.amr_softc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %51
  %68 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %69 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %72 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AMR_NSEG, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 %70, %77
  %79 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %80 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %79, i32 0, i32 6
  store i64 %78, i64* %80, align 8
  %81 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %82 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %85 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @AMR_NSEG, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %83, %89
  %91 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %92 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  br label %121

94:                                               ; preds = %51
  %95 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %96 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %99 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @AMR_NSEG, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = add i64 %97, %104
  %106 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %107 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %106, i32 0, i32 6
  store i64 %105, i64* %107, align 8
  %108 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %109 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %112 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @AMR_NSEG, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %110, %116
  %118 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %119 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  br label %121

121:                                              ; preds = %94, %67
  %122 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %123 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %126 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %131 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  %132 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %133 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %136 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = add i64 %134, %139
  %141 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %142 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %144 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %147 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %146, i32 0, i32 2
  %148 = call i64 @bus_dmamap_create(i32 %145, i32 0, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %121
  br label %178

151:                                              ; preds = %121
  %152 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %153 = call i64 @AMR_IS_SG64(%struct.amr_softc* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %157 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %160 = getelementptr inbounds %struct.amr_command, %struct.amr_command* %159, i32 0, i32 1
  %161 = call i64 @bus_dmamap_create(i32 %158, i32 0, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %178

164:                                              ; preds = %155, %151
  %165 = load %struct.amr_command*, %struct.amr_command** %4, align 8
  %166 = call i32 @amr_releasecmd(%struct.amr_command* %165)
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  %169 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %170 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %164
  br label %178

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %47

178:                                              ; preds = %173, %163, %150, %47
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %181 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %22, %178, %23
  ret void
}

declare dso_local %struct.amr_command_cluster* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.amr_command_cluster*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @AMR_IS_SG64(%struct.amr_softc*) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @amr_releasecmd(%struct.amr_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

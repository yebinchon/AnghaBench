; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_ifnet_attevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_ifnet_attevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32* }
%struct.hn_softc = type { i32, i32, i32, i32, i64, i32, i32, %struct.ifnet*, %struct.ifnet* }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s was attached as VF\0A\00", align 1
@hn_xpnt_vf = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"%s uses if_start, which is unsupported in transparent VF mode.\0A\00", align 1
@hn_vfmap_lock = common dso_local global i32 0, align 4
@hn_vfmap_size = common dso_local global i32 0, align 4
@HN_VFMAP_SIZE_DEF = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@hn_vfmap = common dso_local global %struct.ifnet** null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: ifindex %d was mapped to %s\00", align 1
@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: transparent VF was enabled\00", align 1
@hn_xpnt_vf_input = common dso_local global i32 0, align 4
@hn_xpnt_vf_attwait = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifnet*)* @hn_ifnet_attevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_ifnet_attevent(i8* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.hn_softc*, align 8
  %6 = alloca %struct.ifnet**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.hn_softc*
  store %struct.hn_softc* %10, %struct.hn_softc** %5, align 8
  %11 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %12 = call i32 @HN_LOCK(%struct.hn_softc* %11)
  %13 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %14 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %183

20:                                               ; preds = %2
  %21 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = call i32 @hn_ismyvf(%struct.hn_softc* %21, %struct.ifnet* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %183

26:                                               ; preds = %20
  %27 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %28 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %27, i32 0, i32 7
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  %30 = icmp ne %struct.ifnet* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %33 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %32, i32 0, i32 8
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  %35 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %36 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %35, i32 0, i32 7
  %37 = load %struct.ifnet*, %struct.ifnet** %36, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @if_printf(%struct.ifnet* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %183

41:                                               ; preds = %26
  %42 = load i64, i64* @hn_xpnt_vf, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %51 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %50, i32 0, i32 8
  %52 = load %struct.ifnet*, %struct.ifnet** %51, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @if_printf(%struct.ifnet* %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %183

57:                                               ; preds = %44, %41
  %58 = call i32 @rm_wlock(i32* @hn_vfmap_lock)
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @hn_vfmap_size, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %57
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @HN_VFMAP_SIZE_DEF, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 8, %71
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = load i32, i32* @M_WAITOK, align 4
  %76 = load i32, i32* @M_ZERO, align 4
  %77 = or i32 %75, %76
  %78 = call %struct.ifnet** @malloc(i32 %73, i32 %74, i32 %77)
  store %struct.ifnet** %78, %struct.ifnet*** %6, align 8
  %79 = load %struct.ifnet**, %struct.ifnet*** %6, align 8
  %80 = load %struct.ifnet**, %struct.ifnet*** @hn_vfmap, align 8
  %81 = load i32, i32* @hn_vfmap_size, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(%struct.ifnet** %79, %struct.ifnet** %80, i32 %84)
  %86 = load %struct.ifnet**, %struct.ifnet*** @hn_vfmap, align 8
  %87 = load i32, i32* @M_DEVBUF, align 4
  %88 = call i32 @free(%struct.ifnet** %86, i32 %87)
  %89 = load %struct.ifnet**, %struct.ifnet*** %6, align 8
  store %struct.ifnet** %89, %struct.ifnet*** @hn_vfmap, align 8
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* @hn_vfmap_size, align 4
  br label %91

91:                                               ; preds = %64, %57
  %92 = load %struct.ifnet**, %struct.ifnet*** @hn_vfmap, align 8
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %92, i64 %96
  %98 = load %struct.ifnet*, %struct.ifnet** %97, align 8
  %99 = icmp eq %struct.ifnet* %98, null
  %100 = zext i1 %99 to i32
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %105 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ifnet**, %struct.ifnet*** @hn_vfmap, align 8
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %107, i64 %111
  %113 = load %struct.ifnet*, %struct.ifnet** %112, align 8
  %114 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @KASSERT(i32 %100, i8* %117)
  %119 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %120 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %119, i32 0, i32 8
  %121 = load %struct.ifnet*, %struct.ifnet** %120, align 8
  %122 = load %struct.ifnet**, %struct.ifnet*** @hn_vfmap, align 8
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %122, i64 %126
  store %struct.ifnet* %121, %struct.ifnet** %127, align 8
  %128 = call i32 @rm_wunlock(i32* @hn_vfmap_lock)
  %129 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %130 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %129, i32 0, i32 6
  %131 = call i32 @rm_wlock(i32* %130)
  %132 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %133 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %140 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %139, i32 0, i32 8
  %141 = load %struct.ifnet*, %struct.ifnet** %140, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @KASSERT(i32 %138, i8* %145)
  %147 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %148 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %149 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %148, i32 0, i32 7
  store %struct.ifnet* %147, %struct.ifnet** %149, align 8
  %150 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %151 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %150, i32 0, i32 6
  %152 = call i32 @rm_wunlock(i32* %151)
  %153 = load i64, i64* @hn_xpnt_vf, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %91
  %156 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %157 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %160 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @hn_xpnt_vf_input, align 4
  %162 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %165 = call i32 @hn_suspend_mgmt(%struct.hn_softc* %164)
  %166 = load i32, i32* @hn_xpnt_vf_attwait, align 4
  %167 = load i32, i32* @hz, align 4
  %168 = mul nsw i32 %166, %167
  store i32 %168, i32* %8, align 4
  %169 = load i64, i64* @ticks, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %169, %171
  %173 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %174 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %173, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  %175 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %176 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %179 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %178, i32 0, i32 2
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @taskqueue_enqueue_timeout(i32 %177, i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %155, %91
  br label %183

183:                                              ; preds = %182, %49, %31, %25, %19
  %184 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %185 = call i32 @HN_UNLOCK(%struct.hn_softc* %184)
  ret void
}

declare dso_local i32 @HN_LOCK(%struct.hn_softc*) #1

declare dso_local i32 @hn_ismyvf(%struct.hn_softc*, %struct.ifnet*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @rm_wlock(i32*) #1

declare dso_local %struct.ifnet** @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ifnet**, %struct.ifnet**, i32) #1

declare dso_local i32 @free(%struct.ifnet**, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rm_wunlock(i32*) #1

declare dso_local i32 @hn_suspend_mgmt(%struct.hn_softc*) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

declare dso_local i32 @HN_UNLOCK(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.ifnet = type { i32, i32, %struct.sbni_softc* }
%struct.sbni_softc = type { i64, %struct.sbni_in_stats, %struct.TYPE_2__, i32, i32 }
%struct.sbni_in_stats = type { i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifreq = type { %struct.sbni_in_stats }
%struct.sbni_flags = type { i64, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PRIV_DRIVER = common dso_local global i32 0, align 4
@DEF_RXL_DELTA = common dso_local global i32 0, align 4
@DEF_RXL = common dso_local global i64 0, align 8
@rxl_tab = common dso_local global i32* null, align 8
@DEFAULT_RATE = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i32 0, align 4
@PR_RES = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.sbni_in_stats*)* @sbni_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_ioctl(%struct.ifnet* %0, i32 %1, %struct.sbni_in_stats* %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbni_in_stats*, align 8
  %7 = alloca %struct.sbni_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.sbni_in_stats*, align 8
  %11 = alloca %struct.sbni_flags, align 8
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sbni_in_stats* %2, %struct.sbni_in_stats** %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 2
  %15 = load %struct.sbni_softc*, %struct.sbni_softc** %14, align 8
  store %struct.sbni_softc* %15, %struct.sbni_softc** %7, align 8
  %16 = load %struct.sbni_in_stats*, %struct.sbni_in_stats** %6, align 8
  %17 = bitcast %struct.sbni_in_stats* %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %204 [
    i32 128, label %20
    i32 134, label %54
    i32 133, label %54
    i32 132, label %55
    i32 131, label %89
    i32 129, label %108
    i32 130, label %190
  ]

20:                                               ; preds = %3
  %21 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %22 = call i32 @SBNI_LOCK(%struct.sbni_softc* %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %38 = call i32 @sbni_init_locked(%struct.sbni_softc* %37)
  br label %39

39:                                               ; preds = %36, %29
  br label %51

40:                                               ; preds = %20
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %49 = call i32 @sbni_stop(%struct.sbni_softc* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %53 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %52)
  br label %209

54:                                               ; preds = %3, %3
  store i32 0, i32* %12, align 4
  br label %209

55:                                               ; preds = %3
  %56 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %57 = call i32 @SBNI_LOCK(%struct.sbni_softc* %56)
  %58 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %59 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @IF_LLADDR(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct.sbni_in_stats*
  %64 = getelementptr inbounds %struct.sbni_in_stats, %struct.sbni_in_stats* %63, i64 3
  %65 = bitcast %struct.sbni_flags* %11 to %struct.sbni_in_stats*
  %66 = call i32 @bcopy(%struct.sbni_in_stats* %64, %struct.sbni_in_stats* %65, i32 3)
  %67 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %68 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %72 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 4
  store i32 %74, i32* %75, align 4
  %76 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %77 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 2
  store i32 1, i32* %82, align 4
  %83 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %84 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %83)
  %85 = bitcast %struct.sbni_flags* %11 to %struct.sbni_in_stats*
  %86 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %87 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %86, i32 0, i32 0
  %88 = call i32 @bcopy(%struct.sbni_in_stats* %85, %struct.sbni_in_stats* %87, i32 24)
  br label %209

89:                                               ; preds = %3
  %90 = load i32, i32* @M_DEVBUF, align 4
  %91 = load i32, i32* @M_WAITOK, align 4
  %92 = call %struct.sbni_in_stats* @malloc(i32 24, i32 %90, i32 %91)
  store %struct.sbni_in_stats* %92, %struct.sbni_in_stats** %10, align 8
  %93 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %94 = call i32 @SBNI_LOCK(%struct.sbni_softc* %93)
  %95 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %96 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %95, i32 0, i32 1
  %97 = load %struct.sbni_in_stats*, %struct.sbni_in_stats** %10, align 8
  %98 = call i32 @bcopy(%struct.sbni_in_stats* %96, %struct.sbni_in_stats* %97, i32 24)
  %99 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %100 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %99)
  %101 = load %struct.sbni_in_stats*, %struct.sbni_in_stats** %10, align 8
  %102 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %103 = call i32 @ifr_data_get_ptr(%struct.ifreq* %102)
  %104 = call i32 @copyout(%struct.sbni_in_stats* %101, i32 %103, i32 24)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.sbni_in_stats*, %struct.sbni_in_stats** %10, align 8
  %106 = load i32, i32* @M_DEVBUF, align 4
  %107 = call i32 @free(%struct.sbni_in_stats* %105, i32 %106)
  br label %209

108:                                              ; preds = %3
  %109 = load %struct.thread*, %struct.thread** %9, align 8
  %110 = load i32, i32* @PRIV_DRIVER, align 4
  %111 = call i32 @priv_check(%struct.thread* %109, i32 %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %209

115:                                              ; preds = %108
  %116 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %117 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %116, i32 0, i32 0
  %118 = bitcast %struct.sbni_flags* %11 to %struct.sbni_in_stats*
  %119 = call i32 @bcopy(%struct.sbni_in_stats* %117, %struct.sbni_in_stats* %118, i32 24)
  %120 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %121 = call i32 @SBNI_LOCK(%struct.sbni_softc* %120)
  %122 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %115
  %126 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %127 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %126, i32 0, i32 4
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %131 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %139

132:                                              ; preds = %115
  %133 = load i32, i32* @DEF_RXL_DELTA, align 4
  %134 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %135 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i64, i64* @DEF_RXL, align 8
  %137 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %138 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %132, %125
  %140 = load i32*, i32** @rxl_tab, align 8
  %141 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %142 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %147 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  br label %157

155:                                              ; preds = %139
  %156 = load i32, i32* @DEFAULT_RATE, align 4
  br label %157

157:                                              ; preds = %155, %152
  %158 = phi i32 [ %154, %152 ], [ %156, %155 ]
  %159 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %160 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %11, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %157
  %166 = bitcast %struct.sbni_flags* %11 to %struct.sbni_in_stats*
  %167 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %168 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @IF_LLADDR(i32 %169)
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to %struct.sbni_in_stats*
  %173 = getelementptr inbounds %struct.sbni_in_stats, %struct.sbni_in_stats* %172, i64 3
  %174 = call i32 @bcopy(%struct.sbni_in_stats* %166, %struct.sbni_in_stats* %173, i32 3)
  br label %175

175:                                              ; preds = %165, %157
  %176 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %177 = load i32, i32* @CSR1, align 4
  %178 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %179 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %178, i32 0, i32 2
  %180 = bitcast %struct.TYPE_2__* %179 to i8*
  %181 = load i8, i8* %180, align 8
  %182 = sext i8 %181 to i32
  %183 = load i8, i8* @PR_RES, align 1
  %184 = sext i8 %183 to i32
  %185 = or i32 %182, %184
  %186 = trunc i32 %185 to i8
  %187 = call i32 @sbni_outb(%struct.sbni_softc* %176, i32 %177, i8 signext %186)
  %188 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %189 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %188)
  br label %209

190:                                              ; preds = %3
  %191 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %192 = call i32 @SBNI_LOCK(%struct.sbni_softc* %191)
  %193 = load %struct.thread*, %struct.thread** %9, align 8
  %194 = load i32, i32* @PRIV_DRIVER, align 4
  %195 = call i32 @priv_check(%struct.thread* %193, i32 %194)
  store i32 %195, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %190
  %198 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %199 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %198, i32 0, i32 1
  %200 = call i32 @bzero(%struct.sbni_in_stats* %199, i32 24)
  br label %201

201:                                              ; preds = %197, %190
  %202 = load %struct.sbni_softc*, %struct.sbni_softc** %7, align 8
  %203 = call i32 @SBNI_UNLOCK(%struct.sbni_softc* %202)
  br label %209

204:                                              ; preds = %3
  %205 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.sbni_in_stats*, %struct.sbni_in_stats** %6, align 8
  %208 = call i32 @ether_ioctl(%struct.ifnet* %205, i32 %206, %struct.sbni_in_stats* %207)
  store i32 %208, i32* %12, align 4
  br label %209

209:                                              ; preds = %204, %201, %175, %114, %89, %55, %54, %51
  %210 = load i32, i32* %12, align 4
  ret i32 %210
}

declare dso_local i32 @SBNI_LOCK(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_init_locked(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_stop(%struct.sbni_softc*) #1

declare dso_local i32 @SBNI_UNLOCK(%struct.sbni_softc*) #1

declare dso_local i32 @bcopy(%struct.sbni_in_stats*, %struct.sbni_in_stats*, i32) #1

declare dso_local i32 @IF_LLADDR(i32) #1

declare dso_local %struct.sbni_in_stats* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyout(%struct.sbni_in_stats*, i32, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @free(%struct.sbni_in_stats*, i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i8 signext) #1

declare dso_local i32 @bzero(%struct.sbni_in_stats*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, %struct.sbni_in_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

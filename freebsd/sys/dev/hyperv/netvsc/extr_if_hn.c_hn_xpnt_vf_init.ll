; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: transparent VF was enabled\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"try bringing up %s\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bringing up %s failed: %d\0A\00", align 1
@HN_NVS_DATAPATH_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_xpnt_vf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_xpnt_vf_init(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %4 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %5 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %4)
  %6 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %14 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %12, i8* %19)
  %21 = load i64, i64* @bootverbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @if_printf(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %23, %1
  %34 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %35 = call i32 @hn_xpnt_vf_saveifflags(%struct.hn_softc* %34)
  %36 = load i32, i32* @IFF_UP, align 4
  %37 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %38 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %44 = call i32 @hn_xpnt_vf_iocsetflags(%struct.hn_softc* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %33
  %48 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %49 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %52 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @if_printf(%struct.TYPE_4__* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  br label %66

58:                                               ; preds = %33
  %59 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %60 = load i32, i32* @HN_NVS_DATAPATH_VF, align 4
  %61 = call i32 @hn_nvs_set_datapath(%struct.hn_softc* %59, i32 %60)
  %62 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %63 = call i32 @hn_vf_rss_fixup(%struct.hn_softc* %62, i32 1)
  %64 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %65 = call i32 @hn_xpnt_vf_setenable(%struct.hn_softc* %64)
  br label %66

66:                                               ; preds = %58, %47
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @if_printf(%struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i32 @hn_xpnt_vf_saveifflags(%struct.hn_softc*) #1

declare dso_local i32 @hn_xpnt_vf_iocsetflags(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_set_datapath(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_vf_rss_fixup(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_xpnt_vf_setenable(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_setready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_setready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i64, i64, i32, i64, %struct.ifnet*, %struct.ifnet* }
%struct.ifnet = type { i64, i64, i64, i64, i32 (%struct.ifnet*, i32, i32)*, i32, i32, i32 }
%struct.ifreq = type { i64, i32, i32 }

@ETHERMTU = common dso_local global i64 0, align 8
@SIOCSIFMTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s SIOCSIFMTU %u failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"change MTU to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_xpnt_vf_setready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_xpnt_vf_setready(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifreq, align 8
  %6 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %7 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %8 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %7)
  %9 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %9, i32 0, i32 6
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %13 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %12, i32 0, i32 5
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %21 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %36 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %1
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %1
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %64
  %79 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %80 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %78
  %93 = call i32 @memset(%struct.ifreq* %5, i32 0, i32 16)
  %94 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @strlcpy(i32 %95, i32 %98, i32 4)
  %100 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 2
  store i32 %102, i32* %103, align 4
  %104 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %105 = call i32 @hn_xpnt_vf_iocsetcaps(%struct.hn_softc* %104, %struct.ifreq* %5)
  %106 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ETHERMTU, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %158

111:                                              ; preds = %92
  %112 = call i32 @memset(%struct.ifreq* %5, i32 0, i32 16)
  %113 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @strlcpy(i32 %114, i32 %117, i32 4)
  %119 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %120 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  store i64 %121, i64* %122, align 8
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 4
  %125 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %124, align 8
  %126 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %127 = load i32, i32* @SIOCSIFMTU, align 4
  %128 = ptrtoint %struct.ifreq* %5 to i32
  %129 = call i32 %125(%struct.ifnet* %126, i32 %127, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %111
  %133 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %134 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %135 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %139 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (%struct.ifnet*, i8*, i64, ...) @if_printf(%struct.ifnet* %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %137, i64 %140)
  %142 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ETHERMTU, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %132
  %148 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %149 = load i64, i64* @ETHERMTU, align 8
  %150 = call i32 (%struct.ifnet*, i8*, i64, ...) @if_printf(%struct.ifnet* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %149)
  %151 = load i64, i64* @ETHERMTU, align 8
  %152 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %155 = call i32 @hn_mtu_change_fixup(%struct.hn_softc* %154)
  br label %156

156:                                              ; preds = %147, %132
  br label %157

157:                                              ; preds = %156, %111
  br label %158

158:                                              ; preds = %157, %92
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @hn_xpnt_vf_iocsetcaps(%struct.hn_softc*, %struct.ifreq*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i64, ...) #1

declare dso_local i32 @hn_mtu_change_fixup(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

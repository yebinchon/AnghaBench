; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_disconn_chim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_disconn_chim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i64, i64, i32*, i32, i32 }
%struct.hn_nvs_chim_disconn = type { i32, i32 }

@HN_FLAG_CHIM_CONNECTED = common dso_local global i32 0, align 4
@HN_NVS_TYPE_CHIM_DISCONN = common dso_local global i32 0, align 4
@HN_NVS_CHIM_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"send nvs chim disconn failed: %d\0A\00", align 1
@HN_FLAG_CHIM_REF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"waittx\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"lingtx\00", align 1
@hz = common dso_local global i32 0, align 4
@vmbus_current_version = common dso_local global i64 0, align 8
@VMBUS_VERSION_WIN10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"chim gpadl disconn failed: %d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_nvs_disconn_chim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_nvs_disconn_chim(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_nvs_chim_disconn, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HN_FLAG_CHIM_CONNECTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.hn_nvs_chim_disconn* %4, i32 0, i32 8)
  %13 = load i32, i32* @HN_NVS_TYPE_CHIM_DISCONN, align 4
  %14 = getelementptr inbounds %struct.hn_nvs_chim_disconn, %struct.hn_nvs_chim_disconn* %4, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @HN_NVS_CHIM_SIG, align 4
  %16 = getelementptr inbounds %struct.hn_nvs_chim_disconn, %struct.hn_nvs_chim_disconn* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %18 = call i32 @hn_nvs_req_send(%struct.hn_softc* %17, %struct.hn_nvs_chim_disconn* %4, i32 8)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %11
  %22 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @if_printf(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vmbus_chan_is_revoked(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @HN_FLAG_CHIM_REF, align 4
  %34 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %35 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %21
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* @HN_FLAG_CHIM_CONNECTED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %43 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %61, %39
  %47 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %48 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vmbus_chan_tx_empty(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %54 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vmbus_chan_is_revoked(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %52, %46
  %60 = phi i1 [ false, %46 ], [ %58, %52 ]
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %46

63:                                               ; preds = %59
  %64 = load i32, i32* @hz, align 4
  %65 = mul nsw i32 200, %64
  %66 = sdiv i32 %65, 1000
  %67 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %1
  %69 = load i64, i64* @vmbus_current_version, align 8
  %70 = load i64, i64* @VMBUS_VERSION_WIN10, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %68
  %73 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %74 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %72
  %78 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %79 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %82 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @vmbus_chan_gpadl_disconnect(i32 %80, i64 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %89 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @if_printf(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @HN_FLAG_CHIM_REF, align 4
  %94 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %95 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %87, %77
  %99 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %100 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %72, %68
  %102 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %103 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %108 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @M_DEVBUF, align 4
  %111 = call i32 @free(i32* %109, i32 %110)
  %112 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %113 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %112, i32 0, i32 3
  store i32* null, i32** %113, align 8
  %114 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %115 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %106, %101
  ret void
}

declare dso_local i32 @memset(%struct.hn_nvs_chim_disconn*, i32, i32) #1

declare dso_local i32 @hn_nvs_req_send(%struct.hn_softc*, %struct.hn_nvs_chim_disconn*, i32) #1

declare dso_local i32 @if_printf(i32, i8*, i32) #1

declare dso_local i32 @vmbus_chan_is_revoked(i32) #1

declare dso_local i32 @vmbus_chan_tx_empty(i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @vmbus_chan_gpadl_disconnect(i32, i64) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

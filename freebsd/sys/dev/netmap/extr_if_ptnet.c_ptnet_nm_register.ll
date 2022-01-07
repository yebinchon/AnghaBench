; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_nm_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_nm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ptnet_softc = type { i32, i32, %struct.TYPE_10__*, %struct.ptnet_queue* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.netmap_adapter }
%struct.ptnet_queue = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Exit netmap mode, re-enable interrupts\00", align 1
@IFCAP_POLLING = common dso_local global i32 0, align 4
@PTNETMAP_PTCTL_CREATE = common dso_local global i32 0, align 4
@PTNETMAP_PTCTL_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_adapter*, i32)* @ptnet_nm_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptnet_nm_register(%struct.netmap_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.ptnet_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ptnet_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = call %struct.ptnet_softc* @if_getsoftc(%struct.TYPE_11__* %15)
  store %struct.ptnet_softc* %16, %struct.ptnet_softc** %7, align 8
  %17 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %18 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %19 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = icmp eq %struct.netmap_adapter* %17, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %29 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %27, %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %37
  %41 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = call i32 @nm_prinf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %64, %45
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %50 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %55 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %54, i32 0, i32 3
  %56 = load %struct.ptnet_queue*, %struct.ptnet_queue** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %56, i64 %58
  store %struct.ptnet_queue* %59, %struct.ptnet_queue** %9, align 8
  %60 = load %struct.ptnet_queue*, %struct.ptnet_queue** %9, align 8
  %61 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %47

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %40, %37, %34
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %142

71:                                               ; preds = %68
  %72 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %73 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %132

78:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %115, %78
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %82 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %118

85:                                               ; preds = %79
  %86 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %87 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %86, i32 0, i32 3
  %88 = load %struct.ptnet_queue*, %struct.ptnet_queue** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %88, i64 %90
  store %struct.ptnet_queue* %91, %struct.ptnet_queue** %9, align 8
  %92 = load %struct.ptnet_queue*, %struct.ptnet_queue** %9, align 8
  %93 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IFCAP_POLLING, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %85
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %105 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %103, %106
  br label %108

108:                                              ; preds = %102, %85
  %109 = phi i1 [ false, %85 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = load %struct.ptnet_queue*, %struct.ptnet_queue** %9, align 8
  %112 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %79

118:                                              ; preds = %79
  %119 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %120 = call i32 @ptnet_update_vnet_hdr(%struct.ptnet_softc* %119)
  %121 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %122 = load i32, i32* @PTNETMAP_PTCTL_CREATE, align 4
  %123 = call i32 @ptnet_nm_ptctl(%struct.ptnet_softc* %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %175

128:                                              ; preds = %118
  %129 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %130 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %131 = call i32 @ptnet_sync_from_csb(%struct.ptnet_softc* %129, %struct.netmap_adapter* %130)
  br label %132

132:                                              ; preds = %128, %71
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @netmap_krings_mode_commit(%struct.netmap_adapter* %136, i32 %137)
  %139 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %140 = call i32 @nm_set_native_flags(%struct.netmap_adapter* %139)
  br label %141

141:                                              ; preds = %135, %132
  br label %163

142:                                              ; preds = %68
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %147 = call i32 @nm_clear_native_flags(%struct.netmap_adapter* %146)
  %148 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @netmap_krings_mode_commit(%struct.netmap_adapter* %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %142
  %152 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %153 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %152, i32 0, i32 2
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %160 = load i32, i32* @PTNETMAP_PTCTL_DELETE, align 4
  %161 = call i32 @ptnet_nm_ptctl(%struct.ptnet_softc* %159, i32 %160)
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %158, %151
  br label %163

163:                                              ; preds = %162, %141
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.ptnet_softc*, %struct.ptnet_softc** %7, align 8
  %168 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %167, i32 0, i32 2
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %166, %163
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %126
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.ptnet_softc* @if_getsoftc(%struct.TYPE_11__*) #1

declare dso_local i32 @nm_prinf(i8*) #1

declare dso_local i32 @ptnet_update_vnet_hdr(%struct.ptnet_softc*) #1

declare dso_local i32 @ptnet_nm_ptctl(%struct.ptnet_softc*, i32) #1

declare dso_local i32 @ptnet_sync_from_csb(%struct.ptnet_softc*, %struct.netmap_adapter*) #1

declare dso_local i32 @netmap_krings_mode_commit(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @nm_set_native_flags(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_clear_native_flags(%struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

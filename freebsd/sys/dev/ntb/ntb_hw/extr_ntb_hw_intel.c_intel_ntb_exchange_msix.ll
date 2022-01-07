; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_exchange_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_exchange_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i32, i64, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@msix_ready = common dso_local global i32 0, align 4
@XEON_NONLINK_DB_MSIX_BITS = common dso_local global i32 0, align 4
@NTB_MSIX_DATA0 = common dso_local global i64 0, align 8
@NTB_MSIX_OFS0 = common dso_local global i64 0, align 8
@NTB_MSIX_GUARD = common dso_local global i64 0, align 8
@NTB_MSIX_VER_GUARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"remote MSIX data(%u): 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"remote MSIX addr(%u): 0x%x\0A\00", align 1
@NTB_MSIX_DONE = common dso_local global i64 0, align 8
@NTB_MSIX_RECEIVED = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @intel_ntb_exchange_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_exchange_msix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ntb_softc*
  store %struct.ntb_softc* %7, %struct.ntb_softc** %3, align 8
  %8 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %159

13:                                               ; preds = %1
  %14 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %136

19:                                               ; preds = %13
  %20 = load i32, i32* @msix_ready, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %166

23:                                               ; preds = %19
  %24 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %25 = call i32 @intel_ntb_get_msix_info(%struct.ntb_softc* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %67, %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @XEON_NONLINK_DB_MSIX_BITS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @NTB_MSIX_DATA0, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %38, i32 0, i32 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @intel_ntb_peer_spad_write(i32 %33, i64 %37, i64 %45)
  %47 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* @NTB_MSIX_OFS0, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %54, i32 0, i32 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = call i32 @intel_ntb_peer_spad_write(i32 %49, i64 %53, i64 %65)
  br label %67

67:                                               ; preds = %30
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %26

70:                                               ; preds = %26
  %71 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* @NTB_MSIX_GUARD, align 8
  %75 = load i64, i64* @NTB_MSIX_VER_GUARD, align 8
  %76 = call i32 @intel_ntb_peer_spad_write(i32 %73, i64 %74, i64 %75)
  %77 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* @NTB_MSIX_GUARD, align 8
  %81 = call i32 @intel_ntb_spad_read(i32 %79, i64 %80, i64* %4)
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @NTB_MSIX_VER_GUARD, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %166

86:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %130, %86
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @XEON_NONLINK_DB_MSIX_BITS, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %87
  %92 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* @NTB_MSIX_DATA0, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = call i32 @intel_ntb_spad_read(i32 %94, i64 %98, i64* %4)
  %100 = load i32, i32* %5, align 4
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @intel_ntb_printf(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %100, i64 %101)
  %103 = load i64, i64* %4, align 8
  %104 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %105 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %104, i32 0, i32 7
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i64 %103, i64* %110, align 8
  %111 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* @NTB_MSIX_OFS0, align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = call i32 @intel_ntb_spad_read(i32 %113, i64 %117, i64* %4)
  %119 = load i32, i32* %5, align 4
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @intel_ntb_printf(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %119, i64 %120)
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %123, i32 0, i32 7
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i64 %122, i64* %129, align 8
  br label %130

130:                                              ; preds = %91
  %131 = load i32, i32* %5, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %87

133:                                              ; preds = %87
  %134 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %18
  %137 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* @NTB_MSIX_DONE, align 8
  %141 = load i64, i64* @NTB_MSIX_RECEIVED, align 8
  %142 = call i32 @intel_ntb_peer_spad_write(i32 %139, i64 %140, i64 %141)
  %143 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %144 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* @NTB_MSIX_DONE, align 8
  %147 = call i32 @intel_ntb_spad_read(i32 %145, i64 %146, i64* %4)
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* @NTB_MSIX_RECEIVED, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %136
  br label %166

152:                                              ; preds = %136
  %153 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @intel_ntb_spad_clear(i32 %155)
  %157 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %166

159:                                              ; preds = %12
  %160 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %161 = call i32 @intel_ntb_poll_link(%struct.ntb_softc* %160)
  %162 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ntb_link_event(i32 %164)
  br label %200

166:                                              ; preds = %152, %151, %85, %22
  %167 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %171 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %170, i32 0, i32 5
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @pci_read_config(i32 %169, i32 %174, i32 2)
  %176 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %177 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %179 = call i64 @_xeon_link_is_up(%struct.ntb_softc* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %166
  %182 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %183 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %182, i32 0, i32 4
  %184 = load i32, i32* @hz, align 4
  %185 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %186 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 2, i32 1
  %191 = mul nsw i32 %184, %190
  %192 = sdiv i32 %191, 10
  %193 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %194 = call i32 @callout_reset(i32* %183, i32 %192, void (i8*)* @intel_ntb_exchange_msix, %struct.ntb_softc* %193)
  br label %200

195:                                              ; preds = %166
  %196 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %197 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @intel_ntb_spad_clear(i32 %198)
  br label %200

200:                                              ; preds = %159, %195, %181
  ret void
}

declare dso_local i32 @intel_ntb_get_msix_info(%struct.ntb_softc*) #1

declare dso_local i32 @intel_ntb_peer_spad_write(i32, i64, i64) #1

declare dso_local i32 @intel_ntb_spad_read(i32, i64, i64*) #1

declare dso_local i32 @intel_ntb_printf(i32, i8*, i32, i64) #1

declare dso_local i32 @intel_ntb_spad_clear(i32) #1

declare dso_local i32 @intel_ntb_poll_link(%struct.ntb_softc*) #1

declare dso_local i32 @ntb_link_event(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @_xeon_link_is_up(%struct.ntb_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ntb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

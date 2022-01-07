; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_rx_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.axe_softc = type { i32, i32 }
%struct.axe_sframe_hdr = type { i32, i32, i32 }
%struct.axe_csum_hdr = type { i32, i32, i32 }

@AXE_FLAG_STD_FRAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AXE_FLAG_CSUM_FRAME = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ether*, %struct.usb_page_cache*, i32)* @axe_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axe_rx_frame(%struct.usb_ether* %0, %struct.usb_page_cache* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ether*, align 8
  %5 = alloca %struct.usb_page_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.axe_softc*, align 8
  %8 = alloca %struct.axe_sframe_hdr, align 4
  %9 = alloca %struct.axe_csum_hdr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %4, align 8
  store %struct.usb_page_cache* %1, %struct.usb_page_cache** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %14 = call %struct.axe_softc* @uether_getsc(%struct.usb_ether* %13)
  store %struct.axe_softc* %14, %struct.axe_softc** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %16 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AXE_FLAG_STD_FRAME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %66, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 12
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %10, align 4
  br label %78

35:                                               ; preds = %26
  %36 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @usbd_copy_out(%struct.usb_page_cache* %36, i32 %37, %struct.axe_sframe_hdr* %8, i32 12)
  %39 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %40, %42
  %44 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %45 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %10, align 4
  br label %78

50:                                               ; preds = %35
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 12
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  %55 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le16toh(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %10, align 4
  br label %78

66:                                               ; preds = %50
  %67 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %68 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @axe_rxeof(%struct.usb_ether* %67, %struct.usb_page_cache* %68, i32 %69, i32 %70, %struct.axe_sframe_hdr* null)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = srem i32 %73, 2
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %22

78:                                               ; preds = %64, %48, %33, %22
  br label %172

79:                                               ; preds = %3
  %80 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %81 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AXE_FLAG_CSUM_FRAME, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %166

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %150, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %165

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 12
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %10, align 4
  br label %165

100:                                              ; preds = %91
  %101 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %102 = load i32, i32* %12, align 4
  %103 = bitcast %struct.axe_csum_hdr* %9 to %struct.axe_sframe_hdr*
  %104 = call i32 @usbd_copy_out(%struct.usb_page_cache* %101, i32 %102, %struct.axe_sframe_hdr* %103, i32 12)
  %105 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le16toh(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le16toh(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le16toh(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @AXE_CSUM_RXBYTES(i32 %121)
  %123 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @AXE_CSUM_RXBYTES(i32 %124)
  %126 = xor i32 %122, %125
  %127 = load %struct.axe_softc*, %struct.axe_softc** %7, align 8
  %128 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %100
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %10, align 4
  br label %165

133:                                              ; preds = %100
  %134 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @AXE_CSUM_RXBYTES(i32 %135)
  %137 = sext i32 %136 to i64
  %138 = add i64 12, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 3
  %142 = and i32 %141, -4
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %6, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %133
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %10, align 4
  br label %165

150:                                              ; preds = %133
  %151 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %152 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 %154, 12
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds %struct.axe_csum_hdr, %struct.axe_csum_hdr* %9, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @AXE_CSUM_RXBYTES(i32 %158)
  %160 = bitcast %struct.axe_csum_hdr* %9 to %struct.axe_sframe_hdr*
  %161 = call i32 @axe_rxeof(%struct.usb_ether* %151, %struct.usb_page_cache* %152, i32 %156, i32 %159, %struct.axe_sframe_hdr* %160)
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %12, align 4
  br label %87

165:                                              ; preds = %148, %131, %98, %87
  br label %171

166:                                              ; preds = %79
  %167 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %168 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @axe_rxeof(%struct.usb_ether* %167, %struct.usb_page_cache* %168, i32 0, i32 %169, %struct.axe_sframe_hdr* null)
  br label %171

171:                                              ; preds = %166, %165
  br label %172

172:                                              ; preds = %171, %78
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.usb_ether*, %struct.usb_ether** %4, align 8
  %177 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %180 = call i32 @if_inc_counter(i32 %178, i32 %179, i32 1)
  br label %181

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %10, align 4
  ret i32 %182
}

declare dso_local %struct.axe_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.axe_sframe_hdr*, i32) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @axe_rxeof(%struct.usb_ether*, %struct.usb_page_cache*, i32, i32, %struct.axe_sframe_hdr*) #1

declare dso_local i32 @AXE_CSUM_RXBYTES(i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

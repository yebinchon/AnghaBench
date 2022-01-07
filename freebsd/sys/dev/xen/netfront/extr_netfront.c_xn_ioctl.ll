; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.netfront_info* }
%struct.netfront_info = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@XN_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"performing interface reset due to feature change\0A\00", align 1
@XST_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"feature-gso-tcpv4\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"feature-no-csum-offload\00", align 1
@XenbusStateClosing = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"xn_rst\00", align 1
@hz = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @xn_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xn_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.netfront_info*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 5
  %15 = load %struct.netfront_info*, %struct.netfront_info** %14, align 8
  store %struct.netfront_info* %15, %struct.netfront_info** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %19 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %190 [
    i32 132, label %22
    i32 128, label %27
    i32 130, label %50
    i32 131, label %81
    i32 135, label %182
    i32 134, label %182
    i32 129, label %183
    i32 133, label %183
  ]

22:                                               ; preds = %3
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @ether_ioctl(%struct.ifnet* %23, i32 %24, i64 %25)
  store i32 %26, i32* %11, align 4
  br label %195

27:                                               ; preds = %3
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %195

36:                                               ; preds = %27
  %37 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %38 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %49 = call i32 @xn_ifinit(%struct.netfront_info* %48)
  br label %195

50:                                               ; preds = %3
  %51 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %52 = call i32 @XN_LOCK(%struct.netfront_info* %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IFF_UP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %61 = call i32 @xn_ifinit_locked(%struct.netfront_info* %60)
  br label %73

62:                                               ; preds = %50
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %71 = call i32 @xn_stop(%struct.netfront_info* %70)
  br label %72

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %78 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %80 = call i32 @XN_UNLOCK(%struct.netfront_info* %79)
  br label %195

81:                                               ; preds = %3
  %82 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %84, %87
  store i32 %88, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @IFCAP_TXCSUM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %81
  %94 = load i32, i32* @IFCAP_TXCSUM, align 4
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = xor i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @XN_CSUM_FEATURES, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %93, %81
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @IFCAP_TSO4, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32, i32* @IFCAP_TSO4, align 4
  %111 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = xor i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @CSUM_TSO, align 4
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %109, %104
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @IFCAP_RXCSUM, align 4
  %123 = load i32, i32* @IFCAP_LRO, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %120
  store i32 1, i32* %12, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @IFCAP_RXCSUM, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* @IFCAP_RXCSUM, align 4
  %134 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %135 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = xor i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @IFCAP_LRO, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* @IFCAP_LRO, align 4
  %145 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %146 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = xor i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %138
  br label %150

150:                                              ; preds = %149, %120
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %195

154:                                              ; preds = %150
  %155 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %156 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %159 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %160 = call i32 @XN_LOCK(%struct.netfront_info* %159)
  %161 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %162 = call i32 @netfront_carrier_off(%struct.netfront_info* %161)
  %163 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %164 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %163, i32 0, i32 1
  store i32 1, i32* %164, align 4
  %165 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %166 = call i32 @XN_UNLOCK(%struct.netfront_info* %165)
  %167 = load i32, i32* @XST_NIL, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @xenbus_get_node(i32 %168)
  %170 = call i32 @xs_rm(i32 %167, i32 %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* @XST_NIL, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @xenbus_get_node(i32 %172)
  %174 = call i32 @xs_rm(i32 %171, i32 %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @XenbusStateClosing, align 4
  %177 = call i32 @xenbus_set_state(i32 %175, i32 %176)
  %178 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %179 = load i32, i32* @hz, align 4
  %180 = mul nsw i32 30, %179
  %181 = call i32 @tsleep(%struct.netfront_info* %178, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  store i32 %181, i32* %11, align 4
  br label %195

182:                                              ; preds = %3, %3
  br label %195

183:                                              ; preds = %3, %3
  %184 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %185 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %186 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %187 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %186, i32 0, i32 2
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @ifmedia_ioctl(%struct.ifnet* %184, %struct.ifreq* %185, i32* %187, i32 %188)
  store i32 %189, i32* %11, align 4
  br label %195

190:                                              ; preds = %3
  %191 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @ether_ioctl(%struct.ifnet* %191, i32 %192, i64 %193)
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %190, %183, %182, %154, %153, %73, %36, %35, %22
  %196 = load i32, i32* %11, align 4
  ret i32 %196
}

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @xn_ifinit(%struct.netfront_info*) #1

declare dso_local i32 @XN_LOCK(%struct.netfront_info*) #1

declare dso_local i32 @xn_ifinit_locked(%struct.netfront_info*) #1

declare dso_local i32 @xn_stop(%struct.netfront_info*) #1

declare dso_local i32 @XN_UNLOCK(%struct.netfront_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @netfront_carrier_off(%struct.netfront_info*) #1

declare dso_local i32 @xs_rm(i32, i32, i8*) #1

declare dso_local i32 @xenbus_get_node(i32) #1

declare dso_local i32 @xenbus_set_state(i32, i32) #1

declare dso_local i32 @tsleep(%struct.netfront_info*, i32, i8*, i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

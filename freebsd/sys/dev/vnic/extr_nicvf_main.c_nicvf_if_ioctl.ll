; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.nicvf = type { i32, %struct.TYPE_4__*, %struct.ifnet*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.rcv_queue* }
%struct.rcv_queue = type { i32 }
%struct.ifreq = type { i32, i32 }

@NIC_HW_MIN_FRS = common dso_local global i32 0, align 4
@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @nicvf_if_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_if_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nicvf*, align 8
  %8 = alloca %struct.rcv_queue*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = call %struct.nicvf* @if_getsoftc(%struct.ifnet* %14)
  store %struct.nicvf* %15, %struct.nicvf** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %228 [
    i32 132, label %19
    i32 128, label %24
    i32 130, label %58
    i32 135, label %114
    i32 134, label %114
    i32 129, label %122
    i32 133, label %122
    i32 131, label %129
  ]

19:                                               ; preds = %3
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @ether_ioctl(%struct.ifnet* %20, i32 %21, i64 %22)
  store i32 %23, i32* %12, align 4
  br label %233

24:                                               ; preds = %3
  %25 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %12, align 4
  br label %57

38:                                               ; preds = %30
  %39 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %40 = call i32 @NICVF_CORE_LOCK(%struct.nicvf* %39)
  %41 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %42 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nicvf_update_hw_max_frs(%struct.nicvf* %41, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %51 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @if_setmtu(%struct.ifnet* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %38
  %55 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %56 = call i32 @NICVF_CORE_UNLOCK(%struct.nicvf* %55)
  br label %57

57:                                               ; preds = %54, %36
  br label %233

58:                                               ; preds = %3
  %59 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %60 = call i32 @NICVF_CORE_LOCK(%struct.nicvf* %59)
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = call i32 @if_getflags(%struct.ifnet* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @IFF_UP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %58
  %68 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %69 = call i32 @if_getdrvflags(%struct.ifnet* %68)
  %70 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %76 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = xor i32 %74, %77
  %79 = load i32, i32* @IFF_PROMISC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %86 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %84, %87
  %89 = load i32, i32* @IFF_ALLMULTI, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %83
  br label %97

94:                                               ; preds = %67
  %95 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %96 = call i32 @nicvf_if_init_locked(%struct.nicvf* %95)
  br label %97

97:                                               ; preds = %94, %93
  br label %108

98:                                               ; preds = %58
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = call i32 @if_getdrvflags(%struct.ifnet* %99)
  %101 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %106 = call i32 @nicvf_stop_locked(%struct.nicvf* %105)
  br label %107

107:                                              ; preds = %104, %98
  br label %108

108:                                              ; preds = %107, %97
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %111 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %113 = call i32 @NICVF_CORE_UNLOCK(%struct.nicvf* %112)
  br label %233

114:                                              ; preds = %3, %3
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = call i32 @if_getdrvflags(%struct.ifnet* %115)
  %117 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %114
  br label %233

122:                                              ; preds = %3, %3
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %125 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %126 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %125, i32 0, i32 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @ifmedia_ioctl(%struct.ifnet* %123, %struct.ifreq* %124, i32* %126, i32 %127)
  store i32 %128, i32* %12, align 4
  br label %233

129:                                              ; preds = %3
  %130 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %131 = call i32 @if_getcapenable(%struct.ifnet* %130)
  %132 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %133 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %131, %134
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %142 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %143 = call i32 @if_togglecapenable(%struct.ifnet* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %129
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @IFCAP_TXCSUM, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %151 = load i32, i32* @IFCAP_TXCSUM, align 4
  %152 = call i32 @if_togglecapenable(%struct.ifnet* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @IFCAP_RXCSUM, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %160 = load i32, i32* @IFCAP_RXCSUM, align 4
  %161 = call i32 @if_togglecapenable(%struct.ifnet* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @IFCAP_TSO4, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %169 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %174 = load i32, i32* @IFCAP_TSO4, align 4
  %175 = call i32 @if_togglecapenable(%struct.ifnet* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %167, %162
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @IFCAP_LRO, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %227

181:                                              ; preds = %176
  %182 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %183 = call i32 @NICVF_CORE_LOCK(%struct.nicvf* %182)
  %184 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %185 = load i32, i32* @IFCAP_LRO, align 4
  %186 = call i32 @if_togglecapenable(%struct.ifnet* %184, i32 %185)
  %187 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %188 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %187, i32 0, i32 2
  %189 = load %struct.ifnet*, %struct.ifnet** %188, align 8
  %190 = call i32 @if_getdrvflags(%struct.ifnet* %189)
  %191 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %181
  store i32 0, i32* %13, align 4
  br label %195

195:                                              ; preds = %220, %194
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %198 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %196, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %195
  %204 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %205 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load %struct.rcv_queue*, %struct.rcv_queue** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %208, i64 %210
  store %struct.rcv_queue* %211, %struct.rcv_queue** %8, align 8
  %212 = load %struct.rcv_queue*, %struct.rcv_queue** %8, align 8
  %213 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = load %struct.rcv_queue*, %struct.rcv_queue** %8, align 8
  %219 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %203
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %195

223:                                              ; preds = %195
  br label %224

224:                                              ; preds = %223, %181
  %225 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %226 = call i32 @NICVF_CORE_UNLOCK(%struct.nicvf* %225)
  br label %227

227:                                              ; preds = %224, %176
  br label %233

228:                                              ; preds = %3
  %229 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %230 = load i32, i32* %5, align 4
  %231 = load i64, i64* %6, align 8
  %232 = call i32 @ether_ioctl(%struct.ifnet* %229, i32 %230, i64 %231)
  store i32 %232, i32* %12, align 4
  br label %233

233:                                              ; preds = %228, %227, %122, %121, %108, %57, %19
  %234 = load i32, i32* %12, align 4
  ret i32 %234
}

declare dso_local %struct.nicvf* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @NICVF_CORE_LOCK(%struct.nicvf*) #1

declare dso_local i32 @nicvf_update_hw_max_frs(%struct.nicvf*, i32) #1

declare dso_local i32 @if_setmtu(%struct.ifnet*, i32) #1

declare dso_local i32 @NICVF_CORE_UNLOCK(%struct.nicvf*) #1

declare dso_local i32 @if_getflags(%struct.ifnet*) #1

declare dso_local i32 @if_getdrvflags(%struct.ifnet*) #1

declare dso_local i32 @nicvf_if_init_locked(%struct.nicvf*) #1

declare dso_local i32 @nicvf_stop_locked(%struct.nicvf*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @if_togglecapenable(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

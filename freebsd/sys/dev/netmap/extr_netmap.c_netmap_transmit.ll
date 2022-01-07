; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.netmap_adapter = type { i64, i32, i32 }
%struct.netmap_kring = type { i64, i32, i32, i32, i32 (%struct.netmap_kring*, i32)*, %struct.mbq }
%struct.mbq = type { i32 }

@ENOBUFS = common dso_local global i64 0, align 8
@NR_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s not in netmap mode anymore\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@NR_TX = common dso_local global i32 0, align 4
@NKR_NETMAP_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s from_host, drop packet size %d > %d\00", align 1
@netmap_generic_hwcsum = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%s drop mbuf that needs checksum offload\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%s drop mbuf that needs generic segmentation offload\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s full hwcur %d hwtail %d qlen %d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s %d bufs in queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.netmap_adapter*, align 8
  %7 = alloca %struct.netmap_kring*, align 8
  %8 = alloca %struct.netmap_kring*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = call %struct.netmap_adapter* @NA(%struct.ifnet* %15)
  store %struct.netmap_adapter* %16, %struct.netmap_adapter** %6, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = call i64 @MBUF_LEN(%struct.mbuf* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* @ENOBUFS, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i8* @MBUF_TXQ(%struct.mbuf* %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i64, i64* %14, align 8
  %30 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = urem i64 %29, %32
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %28, %2
  %35 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %36 = load i32, i32* @NR_RX, align 4
  %37 = call %struct.netmap_kring** @NMR(%struct.netmap_adapter* %35, i32 %36)
  %38 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %39 = load i32, i32* @NR_RX, align 4
  %40 = call i64 @nma_get_nrings(%struct.netmap_adapter* %38, i32 %39)
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %40, %41
  %43 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %37, i64 %42
  %44 = load %struct.netmap_kring*, %struct.netmap_kring** %43, align 8
  store %struct.netmap_kring* %44, %struct.netmap_kring** %7, align 8
  %45 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %46 = call i32 @nm_netmap_on(%struct.netmap_adapter* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %34
  %49 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @ENXIO, align 8
  store i64 %53, i64* %10, align 8
  br label %178

54:                                               ; preds = %34
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = call i8* @MBUF_TXQ(%struct.mbuf* %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp uge i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = urem i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %54
  %70 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %71 = load i32, i32* @NR_TX, align 4
  %72 = call %struct.netmap_kring** @NMR(%struct.netmap_adapter* %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %72, i64 %74
  %76 = load %struct.netmap_kring*, %struct.netmap_kring** %75, align 8
  store %struct.netmap_kring* %76, %struct.netmap_kring** %8, align 8
  %77 = load %struct.netmap_kring*, %struct.netmap_kring** %8, align 8
  %78 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NKR_NETMAP_OFF, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = call i32 @MBUF_TRANSMIT(%struct.netmap_adapter* %83, %struct.ifnet* %84, %struct.mbuf* %85)
  store i32 %86, i32* %3, align 4
  br label %192

87:                                               ; preds = %69
  %88 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %89 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %88, i32 0, i32 5
  store %struct.mbq* %89, %struct.mbq** %12, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %92 = call i64 @NETMAP_BUF_SIZE(%struct.netmap_adapter* %91)
  %93 = icmp ugt i64 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %96 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %100 = call i64 @NETMAP_BUF_SIZE(%struct.netmap_adapter* %99)
  %101 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %97, i64 %98, i64 %100)
  br label %178

102:                                              ; preds = %87
  %103 = load i32, i32* @netmap_generic_hwcsum, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %107 = call i64 @nm_os_mbuf_has_csum_offld(%struct.mbuf* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %111 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, i32, ...) @nm_prlim(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %178

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %102
  %116 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %117 = call i64 @nm_os_mbuf_has_seg_offld(%struct.mbuf* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, i32, ...) @nm_prlim(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %178

124:                                              ; preds = %115
  %125 = load %struct.mbq*, %struct.mbq** %12, align 8
  %126 = call i32 @mbq_lock(%struct.mbq* %125)
  %127 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %128 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %131 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %129, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %138 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %136, %124
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.mbq*, %struct.mbq** %12, align 8
  %145 = call i32 @mbq_len(%struct.mbq* %144)
  %146 = add nsw i32 %143, %145
  %147 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %148 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = icmp sge i32 %146, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %142
  %153 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %154 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %157 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %160 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.mbq*, %struct.mbq** %12, align 8
  %163 = call i32 @mbq_len(%struct.mbq* %162)
  %164 = call i32 (i32, i8*, i32, ...) @nm_prlim(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %158, i32 %161, i32 %163)
  br label %175

165:                                              ; preds = %142
  %166 = load %struct.mbq*, %struct.mbq** %12, align 8
  %167 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %168 = call i32 @mbq_enqueue(%struct.mbq* %166, %struct.mbuf* %167)
  %169 = load %struct.netmap_adapter*, %struct.netmap_adapter** %6, align 8
  %170 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mbq*, %struct.mbq** %12, align 8
  %173 = call i32 @mbq_len(%struct.mbq* %172)
  %174 = call i32 @nm_prdis(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %171, i32 %173)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  store i64 0, i64* %10, align 8
  br label %175

175:                                              ; preds = %165, %152
  %176 = load %struct.mbq*, %struct.mbq** %12, align 8
  %177 = call i32 @mbq_unlock(%struct.mbq* %176)
  br label %178

178:                                              ; preds = %175, %119, %109, %94, %48
  %179 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %180 = icmp ne %struct.mbuf* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %183 = call i32 @m_freem(%struct.mbuf* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %186 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %185, i32 0, i32 4
  %187 = load i32 (%struct.netmap_kring*, i32)*, i32 (%struct.netmap_kring*, i32)** %186, align 8
  %188 = load %struct.netmap_kring*, %struct.netmap_kring** %7, align 8
  %189 = call i32 %187(%struct.netmap_kring* %188, i32 0)
  %190 = load i64, i64* %10, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %184, %82
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.netmap_adapter* @NA(%struct.ifnet*) #1

declare dso_local i64 @MBUF_LEN(%struct.mbuf*) #1

declare dso_local i8* @MBUF_TXQ(%struct.mbuf*) #1

declare dso_local %struct.netmap_kring** @NMR(%struct.netmap_adapter*, i32) #1

declare dso_local i64 @nma_get_nrings(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @nm_netmap_on(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prerr(i8*, i32, ...) #1

declare dso_local i32 @MBUF_TRANSMIT(%struct.netmap_adapter*, %struct.ifnet*, %struct.mbuf*) #1

declare dso_local i64 @NETMAP_BUF_SIZE(%struct.netmap_adapter*) #1

declare dso_local i64 @nm_os_mbuf_has_csum_offld(%struct.mbuf*) #1

declare dso_local i32 @nm_prlim(i32, i8*, i32, ...) #1

declare dso_local i64 @nm_os_mbuf_has_seg_offld(%struct.mbuf*) #1

declare dso_local i32 @mbq_lock(%struct.mbq*) #1

declare dso_local i32 @mbq_len(%struct.mbq*) #1

declare dso_local i32 @mbq_enqueue(%struct.mbq*, %struct.mbuf*) #1

declare dso_local i32 @nm_prdis(i32, i8*, i32, i32) #1

declare dso_local i32 @mbq_unlock(%struct.mbq*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

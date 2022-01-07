; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_do_regif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_do_regif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_priv_d = type { %struct.netmap_adapter*, %struct.netmap_if* }
%struct.netmap_if = type { i32 }
%struct.netmap_adapter = type { i64, i32 (%struct.netmap_adapter*)*, i32 (%struct.netmap_adapter*, i32)*, %struct.TYPE_3__, i32 (%struct.netmap_adapter*)*, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"lut %p bufs %u size %u\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: mtu %d rx_buf_maxsize %d netmap_buf_size %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: error: rx_buf_maxsize == 0\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_do_regif(%struct.netmap_priv_d* %0, %struct.netmap_adapter* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.netmap_priv_d*, align 8
  %8 = alloca %struct.netmap_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netmap_if*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.netmap_priv_d* %0, %struct.netmap_priv_d** %7, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.netmap_if* null, %struct.netmap_if** %12, align 8
  %15 = call i32 (...) @NMG_LOCK_ASSERT()
  %16 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %17 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %18 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %17, i32 0, i32 0
  store %struct.netmap_adapter* %16, %struct.netmap_adapter** %18, align 8
  %19 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %23 = call i32 @netmap_mem_finalize(i32 %21, %struct.netmap_adapter* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %201

27:                                               ; preds = %5
  %28 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %29 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %34 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %37 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %36, i32 0, i32 3
  %38 = call i32 @netmap_mem_get_lut(i32 %35, %struct.TYPE_3__* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %198

42:                                               ; preds = %32
  %43 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %44 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %52 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, i32, i32, ...) @nm_prdis(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50, i32 %54)
  %56 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %57 = call i32 @netmap_update_config(%struct.netmap_adapter* %56)
  br label %58

58:                                               ; preds = %42, %27
  %59 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @netmap_set_ringid(%struct.netmap_priv_d* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %188

67:                                               ; preds = %58
  %68 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %69 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %124

72:                                               ; preds = %67
  %73 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %72
  %78 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %79 = call i64 @nm_priv_rx_enabled(%struct.netmap_priv_d* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %77
  %82 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %83 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @nm_os_ifnet_mtu(i64 %84)
  store i32 %85, i32* %14, align 4
  %86 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %87 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %91 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %94 = call i32 @NETMAP_BUF_SIZE(%struct.netmap_adapter* %93)
  %95 = call i32 (i8*, i32, i32, i32, ...) @nm_prdis(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %92, i32 %94)
  %96 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %97 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %81
  %101 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %102 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EIO, align 4
  store i32 %105, i32* %13, align 4
  br label %198

106:                                              ; preds = %81
  %107 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @netmap_buf_size_validate(%struct.netmap_adapter* %107, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %198

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %77, %72
  %115 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %116 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %115, i32 0, i32 1
  %117 = load i32 (%struct.netmap_adapter*)*, i32 (%struct.netmap_adapter*)** %116, align 8
  %118 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %119 = call i32 %117(%struct.netmap_adapter* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %188

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %67
  %125 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %126 = call i32 @netmap_krings_get(%struct.netmap_priv_d* %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %176

130:                                              ; preds = %124
  %131 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %132 = call i32 @netmap_mem_rings_create(%struct.netmap_adapter* %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %171

136:                                              ; preds = %130
  %137 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %138 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %139 = call %struct.netmap_if* @netmap_mem_if_new(%struct.netmap_adapter* %137, %struct.netmap_priv_d* %138)
  store %struct.netmap_if* %139, %struct.netmap_if** %12, align 8
  %140 = load %struct.netmap_if*, %struct.netmap_if** %12, align 8
  %141 = icmp eq %struct.netmap_if* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @ENOMEM, align 4
  store i32 %143, i32* %13, align 4
  br label %171

144:                                              ; preds = %136
  %145 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %146 = call i64 @nm_kring_pending(%struct.netmap_priv_d* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %150 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %149, i32 0, i32 2
  %151 = load i32 (%struct.netmap_adapter*, i32)*, i32 (%struct.netmap_adapter*, i32)** %150, align 8
  %152 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %153 = call i32 %151(%struct.netmap_adapter* %152, i32 1)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %167

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %144
  %159 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %160 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %160, align 8
  %163 = call i32 (...) @mb()
  %164 = load %struct.netmap_if*, %struct.netmap_if** %12, align 8
  %165 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %166 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %165, i32 0, i32 1
  store %struct.netmap_if* %164, %struct.netmap_if** %166, align 8
  store i32 0, i32* %6, align 4
  br label %205

167:                                              ; preds = %156
  %168 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %169 = load %struct.netmap_if*, %struct.netmap_if** %12, align 8
  %170 = call i32 @netmap_mem_if_delete(%struct.netmap_adapter* %168, %struct.netmap_if* %169)
  br label %171

171:                                              ; preds = %167, %142, %135
  %172 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %173 = call i32 @netmap_krings_put(%struct.netmap_priv_d* %172)
  %174 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %175 = call i32 @netmap_mem_rings_delete(%struct.netmap_adapter* %174)
  br label %176

176:                                              ; preds = %171, %129
  %177 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %178 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %183 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %182, i32 0, i32 4
  %184 = load i32 (%struct.netmap_adapter*)*, i32 (%struct.netmap_adapter*)** %183, align 8
  %185 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %186 = call i32 %184(%struct.netmap_adapter* %185)
  br label %187

187:                                              ; preds = %181, %176
  br label %188

188:                                              ; preds = %187, %122, %66
  %189 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %190 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %195 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %194, i32 0, i32 3
  %196 = call i32 @memset(%struct.TYPE_3__* %195, i32 0, i32 12)
  br label %197

197:                                              ; preds = %193, %188
  br label %198

198:                                              ; preds = %197, %112, %100, %41
  %199 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %200 = call i32 @netmap_mem_drop(%struct.netmap_adapter* %199)
  br label %201

201:                                              ; preds = %198, %26
  %202 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %7, align 8
  %203 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %202, i32 0, i32 0
  store %struct.netmap_adapter* null, %struct.netmap_adapter** %203, align 8
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %201, %158
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @NMG_LOCK_ASSERT(...) #1

declare dso_local i32 @netmap_mem_finalize(i32, %struct.netmap_adapter*) #1

declare dso_local i32 @netmap_mem_get_lut(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @nm_prdis(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @netmap_update_config(%struct.netmap_adapter*) #1

declare dso_local i32 @netmap_set_ringid(%struct.netmap_priv_d*, i32, i32, i32) #1

declare dso_local i64 @nm_priv_rx_enabled(%struct.netmap_priv_d*) #1

declare dso_local i32 @nm_os_ifnet_mtu(i64) #1

declare dso_local i32 @NETMAP_BUF_SIZE(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prerr(i8*, i32) #1

declare dso_local i32 @netmap_buf_size_validate(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @netmap_krings_get(%struct.netmap_priv_d*) #1

declare dso_local i32 @netmap_mem_rings_create(%struct.netmap_adapter*) #1

declare dso_local %struct.netmap_if* @netmap_mem_if_new(%struct.netmap_adapter*, %struct.netmap_priv_d*) #1

declare dso_local i64 @nm_kring_pending(%struct.netmap_priv_d*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @netmap_mem_if_delete(%struct.netmap_adapter*, %struct.netmap_if*) #1

declare dso_local i32 @netmap_krings_put(%struct.netmap_priv_d*) #1

declare dso_local i32 @netmap_mem_rings_delete(%struct.netmap_adapter*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @netmap_mem_drop(%struct.netmap_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

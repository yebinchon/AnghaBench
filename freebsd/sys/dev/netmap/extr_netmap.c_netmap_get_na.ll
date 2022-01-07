; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_get_na.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_get_na.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_header = type { i64, i32, i64 }
%struct.netmap_adapter = type { i32, i64, i64, i64, i32 }
%struct.ifnet = type { i32 }
%struct.netmap_mem_d = type { i32 }
%struct.nmreq_register = type { i64, i64, i64, i64 }

@NETMAP_REQ_REGISTER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NR_REG_PIPE_MASTER = common dso_local global i64 0, align 8
@NR_REG_PIPE_SLAVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Deprecated pipe nr_mode, use xx{yy or xx}yy syntax\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NAF_HOST_RINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: host tx %d rx %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_get_na(%struct.nmreq_header* %0, %struct.netmap_adapter** %1, %struct.ifnet** %2, %struct.netmap_mem_d* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nmreq_header*, align 8
  %8 = alloca %struct.netmap_adapter**, align 8
  %9 = alloca %struct.ifnet**, align 8
  %10 = alloca %struct.netmap_mem_d*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nmreq_register*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.netmap_adapter*, align 8
  %15 = alloca i32, align 4
  store %struct.nmreq_header* %0, %struct.nmreq_header** %7, align 8
  store %struct.netmap_adapter** %1, %struct.netmap_adapter*** %8, align 8
  store %struct.ifnet** %2, %struct.ifnet*** %9, align 8
  store %struct.netmap_mem_d* %3, %struct.netmap_mem_d** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.nmreq_header*, %struct.nmreq_header** %7, align 8
  %17 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.nmreq_register*
  store %struct.nmreq_register* %19, %struct.nmreq_register** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.netmap_adapter* null, %struct.netmap_adapter** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  store %struct.netmap_adapter* null, %struct.netmap_adapter** %20, align 8
  %21 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  store %struct.ifnet* null, %struct.ifnet** %21, align 8
  %22 = load %struct.nmreq_header*, %struct.nmreq_header** %7, align 8
  %23 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NETMAP_REQ_REGISTER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %219

29:                                               ; preds = %5
  %30 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %31 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NR_REG_PIPE_MASTER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %37 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NR_REG_PIPE_SLAVE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29
  %42 = call i32 @nm_prerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %219

44:                                               ; preds = %35
  %45 = call i32 (...) @NMG_LOCK_ASSERT()
  %46 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %47 = icmp eq %struct.netmap_mem_d* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %50 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %55 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.netmap_mem_d* @netmap_mem_find(i64 %56)
  store %struct.netmap_mem_d* %57, %struct.netmap_mem_d** %10, align 8
  %58 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %59 = icmp eq %struct.netmap_mem_d* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %6, align 4
  br label %219

62:                                               ; preds = %53
  store i32 1, i32* %15, align 4
  br label %63

63:                                               ; preds = %62, %48, %44
  %64 = load %struct.nmreq_header*, %struct.nmreq_header** %7, align 8
  %65 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %66 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @netmap_get_null_na(%struct.nmreq_header* %64, %struct.netmap_adapter** %65, %struct.netmap_mem_d* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %73 = load %struct.netmap_adapter*, %struct.netmap_adapter** %72, align 8
  %74 = icmp ne %struct.netmap_adapter* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %63
  br label %192

76:                                               ; preds = %71
  %77 = load %struct.nmreq_header*, %struct.nmreq_header** %7, align 8
  %78 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %79 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @netmap_get_monitor_na(%struct.nmreq_header* %77, %struct.netmap_adapter** %78, %struct.netmap_mem_d* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %86 = load %struct.netmap_adapter*, %struct.netmap_adapter** %85, align 8
  %87 = icmp ne %struct.netmap_adapter* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %76
  br label %192

89:                                               ; preds = %84
  %90 = load %struct.nmreq_header*, %struct.nmreq_header** %7, align 8
  %91 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %92 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @netmap_get_pipe_na(%struct.nmreq_header* %90, %struct.netmap_adapter** %91, %struct.netmap_mem_d* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %99 = load %struct.netmap_adapter*, %struct.netmap_adapter** %98, align 8
  %100 = icmp ne %struct.netmap_adapter* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %89
  br label %192

102:                                              ; preds = %97
  %103 = load %struct.nmreq_header*, %struct.nmreq_header** %7, align 8
  %104 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %105 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @netmap_get_vale_na(%struct.nmreq_header* %103, %struct.netmap_adapter** %104, %struct.netmap_mem_d* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %192

111:                                              ; preds = %102
  %112 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %113 = load %struct.netmap_adapter*, %struct.netmap_adapter** %112, align 8
  %114 = icmp ne %struct.netmap_adapter* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %192

116:                                              ; preds = %111
  %117 = load %struct.nmreq_header*, %struct.nmreq_header** %7, align 8
  %118 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.ifnet* @ifunit_ref(i32 %119)
  %121 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  store %struct.ifnet* %120, %struct.ifnet** %121, align 8
  %122 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %123 = load %struct.ifnet*, %struct.ifnet** %122, align 8
  %124 = icmp eq %struct.ifnet* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* @ENXIO, align 4
  store i32 %126, i32* %13, align 4
  br label %192

127:                                              ; preds = %116
  %128 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %129 = load %struct.ifnet*, %struct.ifnet** %128, align 8
  %130 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %131 = call i32 @netmap_get_hw_na(%struct.ifnet* %129, %struct.netmap_mem_d* %130, %struct.netmap_adapter** %14)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %192

135:                                              ; preds = %127
  %136 = load %struct.netmap_adapter*, %struct.netmap_adapter** %14, align 8
  %137 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  store %struct.netmap_adapter* %136, %struct.netmap_adapter** %137, align 8
  %138 = load %struct.netmap_adapter*, %struct.netmap_adapter** %14, align 8
  %139 = call i32 @netmap_adapter_get(%struct.netmap_adapter* %138)
  %140 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %141 = load %struct.netmap_adapter*, %struct.netmap_adapter** %140, align 8
  %142 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @NAF_HOST_RINGS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %135
  %148 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %149 = load %struct.netmap_adapter*, %struct.netmap_adapter** %148, align 8
  %150 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %147
  %154 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %155 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %160 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %163 = load %struct.netmap_adapter*, %struct.netmap_adapter** %162, align 8
  %164 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %163, i32 0, i32 3
  store i64 %161, i64* %164, align 8
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %167 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.nmreq_register*, %struct.nmreq_register** %12, align 8
  %172 = getelementptr inbounds %struct.nmreq_register, %struct.nmreq_register* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %175 = load %struct.netmap_adapter*, %struct.netmap_adapter** %174, align 8
  %176 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %175, i32 0, i32 2
  store i64 %173, i64* %176, align 8
  br label %177

177:                                              ; preds = %170, %165
  br label %178

178:                                              ; preds = %177, %147, %135
  %179 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %180 = load %struct.netmap_adapter*, %struct.netmap_adapter** %179, align 8
  %181 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %184 = load %struct.netmap_adapter*, %struct.netmap_adapter** %183, align 8
  %185 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.netmap_adapter**, %struct.netmap_adapter*** %8, align 8
  %188 = load %struct.netmap_adapter*, %struct.netmap_adapter** %187, align 8
  %189 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @nm_prdis(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %182, i64 %186, i64 %190)
  br label %192

192:                                              ; preds = %178, %134, %125, %115, %110, %101, %88, %75
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %192
  %196 = load %struct.netmap_adapter*, %struct.netmap_adapter** %14, align 8
  %197 = icmp ne %struct.netmap_adapter* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.netmap_adapter*, %struct.netmap_adapter** %14, align 8
  %200 = call i32 @netmap_adapter_put(%struct.netmap_adapter* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %203 = load %struct.ifnet*, %struct.ifnet** %202, align 8
  %204 = icmp ne %struct.ifnet* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  %207 = load %struct.ifnet*, %struct.ifnet** %206, align 8
  %208 = call i32 @if_rele(%struct.ifnet* %207)
  %209 = load %struct.ifnet**, %struct.ifnet*** %9, align 8
  store %struct.ifnet* null, %struct.ifnet** %209, align 8
  br label %210

210:                                              ; preds = %205, %201
  br label %211

211:                                              ; preds = %210, %192
  %212 = load i32, i32* %15, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %10, align 8
  %216 = call i32 @netmap_mem_put(%struct.netmap_mem_d* %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i32, i32* %13, align 4
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %217, %60, %41, %27
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local i32 @nm_prerr(i8*) #1

declare dso_local i32 @NMG_LOCK_ASSERT(...) #1

declare dso_local %struct.netmap_mem_d* @netmap_mem_find(i64) #1

declare dso_local i32 @netmap_get_null_na(%struct.nmreq_header*, %struct.netmap_adapter**, %struct.netmap_mem_d*, i32) #1

declare dso_local i32 @netmap_get_monitor_na(%struct.nmreq_header*, %struct.netmap_adapter**, %struct.netmap_mem_d*, i32) #1

declare dso_local i32 @netmap_get_pipe_na(%struct.nmreq_header*, %struct.netmap_adapter**, %struct.netmap_mem_d*, i32) #1

declare dso_local i32 @netmap_get_vale_na(%struct.nmreq_header*, %struct.netmap_adapter**, %struct.netmap_mem_d*, i32) #1

declare dso_local %struct.ifnet* @ifunit_ref(i32) #1

declare dso_local i32 @netmap_get_hw_na(%struct.ifnet*, %struct.netmap_mem_d*, %struct.netmap_adapter**) #1

declare dso_local i32 @netmap_adapter_get(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prdis(i8*, i32, i64, i64) #1

declare dso_local i32 @netmap_adapter_put(%struct.netmap_adapter*) #1

declare dso_local i32 @if_rele(%struct.ifnet*) #1

declare dso_local i32 @netmap_mem_put(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

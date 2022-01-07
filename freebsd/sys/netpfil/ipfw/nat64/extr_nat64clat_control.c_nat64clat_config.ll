; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_nat64clat_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_nat64clat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32 }
%struct.nat64clat_cfg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32 }
%struct.namedobj_instance = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_MAX_SETS = common dso_local global i64 0, align 8
@SOPT_GET = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NAT64_PLATPFX = common dso_local global i32 0, align 4
@NAT64_CLATPFX = common dso_local global i32 0, align 4
@NAT64CLAT_FLAGSMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat64clat_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64clat_config(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.nat64clat_cfg*, align 8
  %11 = alloca %struct.namedobj_instance*, align 8
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %13 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %14 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 48
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %227

20:                                               ; preds = %3
  %21 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %22 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %21, i32 48)
  %23 = inttoptr i64 %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %8, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 1
  %26 = bitcast %struct.TYPE_10__* %25 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ipfw_check_object_name_generic(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %20
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IPFW_MAX_SETS, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %20
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %227

42:                                               ; preds = %33
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %44 = call %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain* %43)
  store %struct.namedobj_instance* %44, %struct.namedobj_instance** %11, align 8
  %45 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %46 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SOPT_GET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %42
  %53 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %54 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %53)
  %55 = load %struct.namedobj_instance*, %struct.namedobj_instance** %11, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.nat64clat_cfg* @nat64clat_find(%struct.namedobj_instance* %55, i32 %59, i64 %63)
  store %struct.nat64clat_cfg* %64, %struct.nat64clat_cfg** %10, align 8
  %65 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %66 = icmp eq %struct.nat64clat_cfg* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %69 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %68)
  %70 = load i32, i32* @ENOENT, align 4
  store i32 %70, i32* %4, align 4
  br label %227

71:                                               ; preds = %52
  %72 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %73 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = call i32 @nat64clat_export_config(%struct.ip_fw_chain* %72, %struct.nat64clat_cfg* %73, %struct.TYPE_11__* %74)
  %76 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %77 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %76)
  store i32 0, i32* %4, align 4
  br label %227

78:                                               ; preds = %42
  %79 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %80 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %79)
  %81 = load %struct.namedobj_instance*, %struct.namedobj_instance** %11, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.nat64clat_cfg* @nat64clat_find(%struct.namedobj_instance* %81, i32 %85, i64 %89)
  store %struct.nat64clat_cfg* %90, %struct.nat64clat_cfg** %10, align 8
  %91 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %92 = icmp eq %struct.nat64clat_cfg* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %95 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %94)
  %96 = load i32, i32* @ENOENT, align 4
  store i32 %96, i32* %4, align 4
  br label %227

97:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %102 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %100, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %97
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %110 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %108, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %106, %97
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @nat64_check_prefix6(i32* %116, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %124 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %123)
  %125 = load i32, i32* @EINVAL, align 4
  store i32 %125, i32* %4, align 4
  br label %227

126:                                              ; preds = %114
  %127 = load i32, i32* @NAT64_PLATPFX, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %106
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %135 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %133, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %130
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %143 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  %145 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %141, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %139, %130
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @nat64_check_prefix6(i32* %149, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %157 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %156)
  %158 = load i32, i32* @EINVAL, align 4
  store i32 %158, i32* %4, align 4
  br label %227

159:                                              ; preds = %147
  %160 = load i32, i32* @NAT64_CLATPFX, align 4
  %161 = load i32, i32* %12, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %159, %139
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %207

166:                                              ; preds = %163
  %167 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %168 = call i32 @IPFW_WLOCK(%struct.ip_fw_chain* %167)
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @NAT64_PLATPFX, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %178 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 4
  store i32 %176, i32* %179, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %184 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %173, %166
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @NAT64_CLATPFX, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %196 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  store i32 %194, i32* %197, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %202 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store i64 %200, i64* %203, align 8
  br label %204

204:                                              ; preds = %191, %186
  %205 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %206 = call i32 @IPFW_WUNLOCK(%struct.ip_fw_chain* %205)
  br label %207

207:                                              ; preds = %204, %163
  %208 = load i32, i32* @NAT64CLAT_FLAGSMASK, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %211 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, %209
  store i32 %214, i32* %212, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @NAT64CLAT_FLAGSMASK, align 4
  %219 = and i32 %217, %218
  %220 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %10, align 8
  %221 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 8
  %225 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %226 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %225)
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %207, %155, %122, %93, %71, %67, %40, %18
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i64 @ipfw_check_object_name_generic(i32) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64clat_cfg* @nat64clat_find(%struct.namedobj_instance*, i32, i64) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @nat64clat_export_config(%struct.ip_fw_chain*, %struct.nat64clat_cfg*, %struct.TYPE_11__*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i64 @nat64_check_prefix6(i32*, i64) #1

declare dso_local i32 @IPFW_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

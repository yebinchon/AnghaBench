; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_check_fspec_against_fconf_iconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_check_fspec_against_fconf_iconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tp_params }
%struct.tp_params = type { i32, i32 }
%struct.t4_filter_specification = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@F_FRAGMENTATION = common dso_local global i32 0, align 4
@F_MPSHITTYPE = common dso_local global i32 0, align 4
@F_MACMATCH = common dso_local global i32 0, align 4
@F_ETHERTYPE = common dso_local global i32 0, align 4
@F_PROTOCOL = common dso_local global i32 0, align 4
@F_TOS = common dso_local global i32 0, align 4
@F_VLAN = common dso_local global i32 0, align 4
@F_VNIC_ID = common dso_local global i32 0, align 4
@F_VNIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@F_PORT = common dso_local global i32 0, align 4
@F_FCOE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_filter_specification*)* @check_fspec_against_fconf_iconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fspec_against_fconf_iconf(%struct.adapter* %0, %struct.t4_filter_specification* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_filter_specification*, align 8
  %6 = alloca %struct.tp_params*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_filter_specification* %1, %struct.t4_filter_specification** %5, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.tp_params* %10, %struct.tp_params** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %12 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %18 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @F_FRAGMENTATION, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %28 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %34 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @F_MPSHITTYPE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %44 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %50 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @F_MACMATCH, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %60 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %66 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %58
  %71 = load i32, i32* @F_ETHERTYPE, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %76 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %82 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @F_PROTOCOL, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %92 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %98 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %90
  %103 = load i32, i32* @F_TOS, align 4
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %108 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %114 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112, %106
  %119 = load i32, i32* @F_VLAN, align 4
  %120 = load i32, i32* %7, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %124 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %130 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %128, %122
  %135 = load i32, i32* @F_VNIC_ID, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %139 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @F_VNIC, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* @EINVAL, align 4
  store i32 %145, i32* %3, align 4
  br label %217

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %128
  %148 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %149 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %155 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %153, %147
  %160 = load i32, i32* @F_VNIC_ID, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %164 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @F_VNIC, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i32, i32* @EINVAL, align 4
  store i32 %170, i32* %3, align 4
  br label %217

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171, %153
  %173 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %174 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %180 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %178, %172
  %185 = load i32, i32* @F_PORT, align 4
  %186 = load i32, i32* %7, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %184, %178
  %189 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %190 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %5, align 8
  %196 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194, %188
  %201 = load i32, i32* @F_FCOE, align 4
  %202 = load i32, i32* %7, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %200, %194
  %205 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %206 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %7, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %211 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %209, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = load i32, i32* @E2BIG, align 4
  store i32 %215, i32* %3, align 4
  br label %217

216:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %214, %169, %144
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

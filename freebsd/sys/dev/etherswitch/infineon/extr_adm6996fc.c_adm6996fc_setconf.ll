; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_setconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_setconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.adm6996fc_softc = type { i64 }

@__const.adm6996fc_setconf.bcaddr = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 5, i32 7, i32 8, i32 9], align 16
@ETHERSWITCH_CONF_VLAN_MODE = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@ADM6996FC_SC3 = common dso_local global i32 0, align 4
@ADM6996FC_TBV_SHIFT = common dso_local global i32 0, align 4
@ADM6996FC_VF0L = common dso_local global i32 0, align 4
@ADM6996FC_VF0H = common dso_local global i32 0, align 4
@ADM6996FC_VV_SHIFT = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @adm6996fc_setconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_setconf(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.adm6996fc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %11 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([6 x i32]* @__const.adm6996fc_setconf.bcaddr to i8*), i64 24, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.adm6996fc_softc* @device_get_softc(i32 %12)
  store %struct.adm6996fc_softc* %13, %struct.adm6996fc_softc** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ETHERSWITCH_CONF_VLAN_MODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %206

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %87

29:                                               ; preds = %23
  %30 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %31 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %32 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ADM6996FC_SC3, align 4
  %35 = call i32 @ADM6996FC_READREG(i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @ADM6996FC_TBV_SHIFT, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ADM6996FC_SC3, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ADM6996FC_WRITEREG(i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %83, %29
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 5
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ADM6996FC_READREG(i32 %49, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, -15361
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 10
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ADM6996FC_WRITEREG(i32 %61, i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @ADM6996FC_VF0L, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 2, %70
  %72 = add nsw i32 %69, %71
  %73 = call i32 @ADM6996FC_WRITEREG(i32 %68, i32 %72, i32 63)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ADM6996FC_VF0H, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* @ADM6996FC_VV_SHIFT, align 4
  %80 = shl i32 1, %79
  %81 = or i32 %80, 1
  %82 = call i32 @ADM6996FC_WRITEREG(i32 %74, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %48
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %45

86:                                               ; preds = %45
  br label %205

87:                                               ; preds = %23
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %147

93:                                               ; preds = %87
  %94 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %95 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %96 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ADM6996FC_SC3, align 4
  %99 = call i32 @ADM6996FC_READREG(i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @ADM6996FC_TBV_SHIFT, align 4
  %101 = shl i32 1, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @ADM6996FC_SC3, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ADM6996FC_WRITEREG(i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %129, %93
  %109 = load i32, i32* %8, align 4
  %110 = icmp sle i32 %109, 5
  br i1 %110, label %111, label %132

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ADM6996FC_READREG(i32 %112, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, -15361
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, 1024
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @ADM6996FC_WRITEREG(i32 %122, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %111
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %108

132:                                              ; preds = %108
  store i32 2, i32* %8, align 4
  br label %133

133:                                              ; preds = %143, %132
  %134 = load i32, i32* %8, align 4
  %135 = icmp sle i32 %134, 15
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @ADM6996FC_VF0H, align 4
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %138, %140
  %142 = call i32 @ADM6996FC_WRITEREG(i32 %137, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %133

146:                                              ; preds = %133
  br label %204

147:                                              ; preds = %87
  %148 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %6, align 8
  %149 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @ADM6996FC_SC3, align 4
  %152 = call i32 @ADM6996FC_READREG(i32 %150, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* @ADM6996FC_TBV_SHIFT, align 4
  %154 = shl i32 1, %153
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %9, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @ADM6996FC_SC3, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @ADM6996FC_WRITEREG(i32 %158, i32 %159, i32 %160)
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %189, %147
  %163 = load i32, i32* %8, align 4
  %164 = icmp sle i32 %163, 5
  br i1 %164, label %165, label %192

165:                                              ; preds = %162
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ADM6996FC_READREG(i32 %166, i32 %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, -15361
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, 1024
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 5
  br i1 %177, label %178, label %181

178:                                              ; preds = %165
  %179 = load i32, i32* %9, align 4
  %180 = and i32 %179, -17
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %178, %165
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @ADM6996FC_WRITEREG(i32 %182, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %181
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %162

192:                                              ; preds = %162
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @ADM6996FC_VF0L, align 4
  %195 = add nsw i32 %194, 2
  %196 = call i32 @ADM6996FC_WRITEREG(i32 %193, i32 %195, i32 63)
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @ADM6996FC_VF0H, align 4
  %199 = add nsw i32 %198, 2
  %200 = load i32, i32* @ADM6996FC_VV_SHIFT, align 4
  %201 = shl i32 1, %200
  %202 = or i32 %201, 1
  %203 = call i32 @ADM6996FC_WRITEREG(i32 %197, i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %192, %146
  br label %205

205:                                              ; preds = %204, %86
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %22
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @ADM6996FC_READREG(i32, i32) #2

declare dso_local i32 @ADM6996FC_WRITEREG(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

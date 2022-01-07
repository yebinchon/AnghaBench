; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rgmii.c_cvm_oct_rgmii_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rgmii.c_cvm_oct_rgmii_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i32, i32* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@global_register_lock = common dso_local global i32 0, align 4
@USE_10MBPS_PREAMBLE_WORKAROUND = common dso_local global i64 0, align 8
@CVMX_IPD_SUB_PORT_FCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Using 10Mbps with software preamble removal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @cvm_oct_rgmii_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_rgmii_poll(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %3, align 8
  %21 = call i32 @mtx_lock_spin(i32* @global_register_lock)
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call { i64, i32 } @cvmx_helper_link_get(i64 %24)
  %26 = bitcast %struct.TYPE_17__* %5 to { i64, i32 }*
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %28 = extractvalue { i64, i32 } %25, 0
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %30 = extractvalue { i64, i32 } %25, 1
  store i32 %30, i32* %29, align 8
  %31 = bitcast %struct.TYPE_17__* %4 to i8*
  %32 = bitcast %struct.TYPE_17__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %109

39:                                               ; preds = %1
  %40 = load i64, i64* @USE_10MBPS_PREAMBLE_WORKAROUND, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %107

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @INTERFACE(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @INDEX(i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %56, i32 %57)
  %59 = call i8* @cvmx_read_csr(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %47
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %66, i32 %67)
  %69 = call i8* @cvmx_read_csr(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @cvmx_write_csr(i32 %75, i8* %77)
  %79 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %80 = call i8* @cvmx_read_csr(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 1, %84
  %86 = xor i64 4294967295, %85
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = and i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  %93 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @cvmx_write_csr(i32 %93, i8* %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %97, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @cvmx_write_csr(i32 %99, i8* %101)
  %103 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %104 = call i32 @if_name(%struct.ifnet* %103)
  %105 = call i32 @DEBUGPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %65, %47
  br label %107

107:                                              ; preds = %106, %42, %39
  %108 = call i32 @mtx_unlock_spin(i32* @global_register_lock)
  br label %187

109:                                              ; preds = %1
  %110 = load i64, i64* @USE_10MBPS_PREAMBLE_WORKAROUND, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %162

112:                                              ; preds = %109
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @INTERFACE(i64 %115)
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @INDEX(i64 %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %121, i32 %122)
  %124 = call i8* @cvmx_read_csr(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i8* %124, i8** %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %128, i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @cvmx_write_csr(i32 %130, i8* %132)
  %134 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %135 = call i8* @cvmx_read_csr(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = shl i64 1, %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = or i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 8
  %147 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @cvmx_write_csr(i32 %147, i8* %149)
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %151, i32 %152)
  %154 = call i8* @cvmx_read_csr(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i8* %154, i8** %155, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %156, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @cvmx_write_csr(i32 %158, i8* %160)
  br label %162

162:                                              ; preds = %112, %109
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call { i64, i32 } @cvmx_helper_link_autoconf(i64 %170)
  %172 = bitcast %struct.TYPE_17__* %16 to { i64, i32 }*
  %173 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %172, i32 0, i32 0
  %174 = extractvalue { i64, i32 } %171, 0
  store i64 %174, i64* %173, align 8
  %175 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %172, i32 0, i32 1
  %176 = extractvalue { i64, i32 } %171, 1
  store i32 %176, i32* %175, align 8
  %177 = bitcast %struct.TYPE_17__* %4 to i8*
  %178 = bitcast %struct.TYPE_17__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 16, i1 false)
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %167, %162
  %186 = call i32 @mtx_unlock_spin(i32* @global_register_lock)
  br label %187

187:                                              ; preds = %185, %107
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local { i64, i32 } @cvmx_helper_link_get(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INTERFACE(i64) #1

declare dso_local i32 @INDEX(i64) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_REG(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_CTL(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @DEBUGPRINT(i8*, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local { i64, i32 } @cvmx_helper_link_autoconf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

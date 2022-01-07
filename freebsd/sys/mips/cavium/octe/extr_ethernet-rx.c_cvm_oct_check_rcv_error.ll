; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rx.c_cvm_oct_check_rcv_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rx.c_cvm_oct_check_rcv_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }

@USE_10MBPS_PREAMBLE_WORKAROUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Port %d unknown preamble, packet dropped\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Port %d receive error code %d, packet dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @cvm_oct_check_rcv_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_check_rcv_error(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 64
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %183

23:                                               ; preds = %15, %1
  %24 = load i64, i64* @USE_10MBPS_PREAMBLE_WORKAROUND, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %168

26:                                               ; preds = %23
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %40, label %168

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cvmx_helper_get_interface_num(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cvmx_helper_get_interface_index_num(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %53, i32 %54)
  %56 = call i32 @cvmx_read_csr(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %167

62:                                               ; preds = %40
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32* @cvmx_phys_to_ptr(i32 %67)
  store i32* %68, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %83, %62
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp slt i32 %70, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 85
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %88

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %69

88:                                               ; preds = %82, %69
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 213
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %94
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 5
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, %102
  store i32 %108, i32* %106, align 4
  br label %166

109:                                              ; preds = %88
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 15
  %113 = icmp eq i32 %112, 13
  br i1 %113, label %114, label %156

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %115
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %123
  store i32 %129, i32* %127, align 4
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %152, %114
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %131, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %130
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 240
  %142 = ashr i32 %141, 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 15
  %147 = shl i32 %146, 4
  %148 = or i32 %142, %147
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %7, align 8
  br label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %130

155:                                              ; preds = %130
  br label %165

156:                                              ; preds = %109
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %164 = call i32 @cvm_oct_free_work(%struct.TYPE_22__* %163)
  store i32 1, i32* %2, align 4
  br label %184

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %92
  br label %167

167:                                              ; preds = %166, %40
  br label %182

168:                                              ; preds = %33, %23
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %181 = call i32 @cvm_oct_free_work(%struct.TYPE_22__* %180)
  store i32 1, i32* %2, align 4
  br label %184

182:                                              ; preds = %167
  br label %183

183:                                              ; preds = %182, %22
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %168, %156
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_CTL(i32, i32) #1

declare dso_local i32* @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @DEBUGPRINT(i8*, i32, ...) #1

declare dso_local i32 @cvm_oct_free_work(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

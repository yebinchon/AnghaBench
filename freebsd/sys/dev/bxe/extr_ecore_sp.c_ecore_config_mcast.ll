; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_config_mcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_config_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { i32, i32, %struct.ecore_mcast_obj* }
%struct.ecore_mcast_obj = type { i32 (%struct.ecore_mcast_obj*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_mcast_ramrod_params*, i32)*, i64, i64, i32 (%struct.bxe_softc.1*, %struct.ecore_mcast_obj*, %struct.ecore_mcast_ramrod_params*, i32)*, i32 (%struct.bxe_softc.2*, %struct.ecore_mcast_ramrod_params*, i32)*, i32 (%struct.bxe_softc.3*, %struct.ecore_mcast_obj*)*, i32 (%struct.bxe_softc.4*, %struct.ecore_mcast_ramrod_params*, i32)*, i32 (%struct.ecore_mcast_obj*)*, %struct.ecore_raw_obj }
%struct.bxe_softc.0 = type opaque
%struct.bxe_softc.1 = type opaque
%struct.bxe_softc.2 = type opaque
%struct.bxe_softc.3 = type opaque
%struct.bxe_softc.4 = type opaque
%struct.ecore_raw_obj = type { i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)*, i64 (%struct.ecore_raw_obj*)* }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"o->total_pending_num=%d p->mcast_list_len=%d o->max_cmd_len=%d\0A\00", align 1
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_config_mcast(%struct.bxe_softc* %0, %struct.ecore_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_mcast_obj*, align 8
  %9 = alloca %struct.ecore_raw_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_mcast_ramrod_params* %1, %struct.ecore_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %13 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %12, i32 0, i32 2
  %14 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %13, align 8
  store %struct.ecore_mcast_obj* %14, %struct.ecore_mcast_obj** %8, align 8
  %15 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %16 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %15, i32 0, i32 9
  store %struct.ecore_raw_obj* %16, %struct.ecore_raw_obj** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %18 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %17, i32 0, i32 0
  %19 = load i32 (%struct.ecore_mcast_obj*)*, i32 (%struct.ecore_mcast_obj*)** %18, align 8
  %20 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %21 = call i32 %19(%struct.ecore_mcast_obj* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %23 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %22, i32 0, i32 1
  %24 = load i32 (%struct.bxe_softc.0*, %struct.ecore_mcast_ramrod_params*, i32)*, i32 (%struct.bxe_softc.0*, %struct.ecore_mcast_ramrod_params*, i32)** %23, align 8
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %26 = bitcast %struct.bxe_softc* %25 to %struct.bxe_softc.0*
  %27 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %24(%struct.bxe_softc.0* %26, %struct.ecore_mcast_ramrod_params* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %154

34:                                               ; preds = %3
  %35 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %36 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %41 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %40, i32 0, i32 8
  %42 = load i32 (%struct.ecore_mcast_obj*)*, i32 (%struct.ecore_mcast_obj*)** %41, align 8
  %43 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %44 = call i32 %42(%struct.ecore_mcast_obj* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %47, i32* %4, align 4
  br label %154

48:                                               ; preds = %39, %34
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %50 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %51 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %57 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ECORE_MSG(%struct.bxe_softc* %49, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %55, i64 %58)
  %60 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %61 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %60, i32 0, i32 2
  %62 = load i64 (%struct.ecore_raw_obj*)*, i64 (%struct.ecore_raw_obj*)** %61, align 8
  %63 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %64 = call i64 %62(%struct.ecore_raw_obj* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %48
  %67 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %68 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %73 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %76 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %71, %48
  %80 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %81 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %80, i32 0, i32 4
  %82 = load i32 (%struct.bxe_softc.1*, %struct.ecore_mcast_obj*, %struct.ecore_mcast_ramrod_params*, i32)*, i32 (%struct.bxe_softc.1*, %struct.ecore_mcast_obj*, %struct.ecore_mcast_ramrod_params*, i32)** %81, align 8
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %84 = bitcast %struct.bxe_softc* %83 to %struct.bxe_softc.1*
  %85 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %85, i32 0, i32 2
  %87 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %86, align 8
  %88 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 %82(%struct.bxe_softc.1* %84, %struct.ecore_mcast_obj* %87, %struct.ecore_mcast_ramrod_params* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %144

94:                                               ; preds = %79
  %95 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %96 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %71, %66
  %98 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %99 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %98, i32 0, i32 2
  %100 = load i64 (%struct.ecore_raw_obj*)*, i64 (%struct.ecore_raw_obj*)** %99, align 8
  %101 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %102 = call i64 %100(%struct.ecore_raw_obj* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %136, label %104

104:                                              ; preds = %97
  %105 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %106 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %105, i32 0, i32 1
  %107 = load i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)** %106, align 8
  %108 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %109 = call i32 %107(%struct.ecore_raw_obj* %108)
  %110 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %111 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %110, i32 0, i32 5
  %112 = load i32 (%struct.bxe_softc.2*, %struct.ecore_mcast_ramrod_params*, i32)*, i32 (%struct.bxe_softc.2*, %struct.ecore_mcast_ramrod_params*, i32)** %111, align 8
  %113 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %114 = bitcast %struct.bxe_softc* %113 to %struct.bxe_softc.2*
  %115 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 %112(%struct.bxe_softc.2* %114, %struct.ecore_mcast_ramrod_params* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  br label %138

121:                                              ; preds = %104
  %122 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %123 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %124 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %123, i32 0, i32 0
  %125 = call i64 @ECORE_TEST_BIT(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %129 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %128, i32 0, i32 6
  %130 = load i32 (%struct.bxe_softc.3*, %struct.ecore_mcast_obj*)*, i32 (%struct.bxe_softc.3*, %struct.ecore_mcast_obj*)** %129, align 8
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %132 = bitcast %struct.bxe_softc* %131 to %struct.bxe_softc.3*
  %133 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %134 = call i32 %130(%struct.bxe_softc.3* %132, %struct.ecore_mcast_obj* %133)
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %127, %121
  br label %136

136:                                              ; preds = %135, %97
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %154

138:                                              ; preds = %120
  %139 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %140 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %139, i32 0, i32 0
  %141 = load i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)** %140, align 8
  %142 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %143 = call i32 %141(%struct.ecore_raw_obj* %142)
  br label %144

144:                                              ; preds = %138, %93
  %145 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %146 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %145, i32 0, i32 7
  %147 = load i32 (%struct.bxe_softc.4*, %struct.ecore_mcast_ramrod_params*, i32)*, i32 (%struct.bxe_softc.4*, %struct.ecore_mcast_ramrod_params*, i32)** %146, align 8
  %148 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %149 = bitcast %struct.bxe_softc* %148 to %struct.bxe_softc.4*
  %150 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 %147(%struct.bxe_softc.4* %149, %struct.ecore_mcast_ramrod_params* %150, i32 %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %144, %136, %46, %32
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i64, i32, i64) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

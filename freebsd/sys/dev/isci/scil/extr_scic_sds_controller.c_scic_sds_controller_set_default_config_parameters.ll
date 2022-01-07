; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_set_default_config_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_set_default_config_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_22__, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i64, i32 }

@SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE = common dso_local global i32 0, align 4
@SCI_MAX_PORTS = common dso_local global i64 0, align 8
@SCI_MAX_PHYS = common dso_local global i64 0, align 8
@SCIC_SDS_PCI_REVISION_A0 = common dso_local global i64 0, align 8
@SCIC_SDS_PCI_REVISION_A2 = common dso_local global i64 0, align 8
@SCIC_SDS_PCI_REVISION_B0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @scic_sds_controller_set_default_config_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_controller_set_default_config_parameters(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load i32, i32* @SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE, align 4
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 5
  store i32 %4, i32* %9, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %48, %1
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @SCI_MAX_PORTS, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %35

51:                                               ; preds = %35
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %197, %51
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @SCI_MAX_PHYS, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %200

56:                                               ; preds = %52
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 2, i32* %64, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  store i32 127, i32* %72, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  store i32 255, i32* %80, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  store i32 51, i32* %88, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  store i32 1607467007, i32* %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 1, %101
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = load i64, i64* %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  store i64 %102, i64* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SCIC_SDS_PCI_REVISION_A0, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %56
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SCIC_SDS_PCI_REVISION_A2, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SCIC_SDS_PCI_REVISION_B0, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %124, %118, %56
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = load i64, i64* %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  store i32 949251, i32* %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = load i64, i64* %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  store i32 949251, i32* %146, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = load i64, i64* %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 2
  store i32 949251, i32* %154, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = load i64, i64* %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  store i32 949251, i32* %162, align 4
  br label %196

163:                                              ; preds = %124
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = load i64, i64* %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  store i32 777480, i32* %171, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = load i64, i64* %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  store i32 749673, i32* %179, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = load i64, i64* %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  store i32 752649, i32* %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = load i64, i64* %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 3
  store i32 719982, i32* %195, align 4
  br label %196

196:                                              ; preds = %163, %130
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %3, align 8
  br label %52

200:                                              ; preds = %52
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  store i32 5, i32* %204, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  store i32 5, i32* %208, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 2
  store i32 5, i32* %212, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 3
  store i32 20, i32* %216, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 4
  store i32 20, i32* %220, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

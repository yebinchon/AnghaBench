; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_ib_link_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_ib_link_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i8* }
%struct.ib_smp = type { i32*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32 }

@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@IB_PORT_EXTENDED_SPEEDS_SUP = common dso_local global i32 0, align 4
@IB_SPEED_FDR = common dso_local global i32 0, align 4
@IB_SPEED_EDR = common dso_local global i32 0, align 4
@IB_SPEED_QDR = common dso_local global i32 0, align 4
@MLX4_ATTR_EXTENDED_PORT_INFO = common dso_local global i32 0, align 4
@IB_SPEED_FDR10 = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i32 0, align 4
@IB_SPEED_SDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i64, %struct.ib_port_attr*, i32)* @ib_link_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_link_query_port(%struct.ib_device* %0, i64 %1, %struct.ib_port_attr* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  %14 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ib_smp* @kzalloc(i32 24, i32 %17)
  store %struct.ib_smp* %18, %struct.ib_smp** %9, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ib_smp* @kmalloc(i32 24, i32 %19)
  store %struct.ib_smp* %20, %struct.ib_smp** %10, align 8
  %21 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %22 = icmp ne %struct.ib_smp* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %25 = icmp ne %struct.ib_smp* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %4
  br label %303

27:                                               ; preds = %23
  %28 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %29 = call i32 @init_query_mad(%struct.ib_smp* %28)
  %30 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %31 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %32 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i8* @cpu_to_be32(i64 %33)
  %35 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %36 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %38 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i64 @mlx4_is_mfunc(%struct.TYPE_7__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %43, %27
  %51 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %52 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %51)
  %53 = load i32, i32* %12, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %56 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %57 = call i32 @mlx4_MAD_IFC(%struct.TYPE_6__* %52, i32 %53, i64 %54, i32* null, i32* null, %struct.ib_smp* %55, %struct.ib_smp* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %303

61:                                               ; preds = %50
  %62 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %63 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 16
  %66 = call i8* @be16_to_cpup(i32* %65)
  %67 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %68 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %67, i32 0, i32 18
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %70 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 34
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 7
  %75 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %76 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %78 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 18
  %81 = call i8* @be16_to_cpup(i32* %80)
  %82 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %83 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %82, i32 0, i32 17
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %85 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 36
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 15
  %90 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %91 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 32
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  %98 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %99 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %101 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 33
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 4
  %106 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %107 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %109 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 20
  %112 = call i32 @be32_to_cpup(i32* %111)
  %113 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %114 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %61
  %118 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %119 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 50
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %124 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 4
  br label %138

125:                                              ; preds = %61
  %126 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %127 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %137 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %125, %117
  %139 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %140 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %139)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %147 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %146, i32 0, i32 16
  store i32 %145, i32* %147, align 4
  %148 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %149 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* %6, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %159 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %158, i32 0, i32 15
  store i32 %157, i32* %159, align 8
  %160 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %161 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 46
  %164 = call i8* @be16_to_cpup(i32* %163)
  %165 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %166 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %165, i32 0, i32 14
  store i8* %164, i8** %166, align 8
  %167 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %168 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 48
  %171 = call i8* @be16_to_cpup(i32* %170)
  %172 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %173 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %172, i32 0, i32 13
  store i8* %171, i8** %173, align 8
  %174 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %175 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 31
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 15
  %180 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %181 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  %182 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %183 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 35
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 4
  %188 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %189 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 4
  %190 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %191 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 41
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 15
  %196 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %197 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 8
  %198 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %199 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 36
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 4
  %204 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %205 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %204, i32 0, i32 9
  store i32 %203, i32* %205, align 4
  %206 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %207 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 51
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 31
  %212 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %213 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %212, i32 0, i32 10
  store i32 %211, i32* %213, align 8
  %214 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %215 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 37
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 4
  %220 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %221 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %220, i32 0, i32 11
  store i32 %219, i32* %221, align 4
  %222 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %223 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 41
  %226 = load i32, i32* %225, align 4
  %227 = ashr i32 %226, 4
  %228 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %229 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %228, i32 0, i32 12
  store i32 %227, i32* %229, align 8
  %230 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %231 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @IB_PORT_EXTENDED_SPEEDS_SUP, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %253

236:                                              ; preds = %138
  %237 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %238 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 62
  %241 = load i32, i32* %240, align 4
  %242 = ashr i32 %241, 4
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  switch i32 %243, label %252 [
    i32 1, label %244
    i32 2, label %248
  ]

244:                                              ; preds = %236
  %245 = load i32, i32* @IB_SPEED_FDR, align 4
  %246 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %247 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %246, i32 0, i32 7
  store i32 %245, i32* %247, align 4
  br label %252

248:                                              ; preds = %236
  %249 = load i32, i32* @IB_SPEED_EDR, align 4
  %250 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %251 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %250, i32 0, i32 7
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %236, %248, %244
  br label %253

253:                                              ; preds = %252, %138
  %254 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %255 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @IB_SPEED_QDR, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %292

259:                                              ; preds = %253
  %260 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %261 = call i32 @init_query_mad(%struct.ib_smp* %260)
  %262 = load i32, i32* @MLX4_ATTR_EXTENDED_PORT_INFO, align 4
  %263 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %264 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load i64, i64* %6, align 8
  %266 = call i8* @cpu_to_be32(i64 %265)
  %267 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %268 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %267, i32 0, i32 1
  store i8* %266, i8** %268, align 8
  %269 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %270 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %269)
  %271 = load i32, i32* %12, align 4
  %272 = load i64, i64* %6, align 8
  %273 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %274 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %275 = call i32 @mlx4_MAD_IFC(%struct.TYPE_6__* %270, i32 %271, i64 %272, i32* null, i32* null, %struct.ib_smp* %273, %struct.ib_smp* %274)
  store i32 %275, i32* %13, align 4
  %276 = load i32, i32* %13, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %259
  br label %303

279:                                              ; preds = %259
  %280 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %281 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 15
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, 1
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %279
  %288 = load i32, i32* @IB_SPEED_FDR10, align 4
  %289 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %290 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %289, i32 0, i32 7
  store i32 %288, i32* %290, align 4
  br label %291

291:                                              ; preds = %287, %279
  br label %292

292:                                              ; preds = %291, %253
  %293 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %294 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @IB_PORT_DOWN, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %292
  %299 = load i32, i32* @IB_SPEED_SDR, align 4
  %300 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %301 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %300, i32 0, i32 7
  store i32 %299, i32* %301, align 4
  br label %302

302:                                              ; preds = %298, %292
  br label %303

303:                                              ; preds = %302, %278, %60, %26
  %304 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %305 = call i32 @kfree(%struct.ib_smp* %304)
  %306 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %307 = call i32 @kfree(%struct.ib_smp* %306)
  %308 = load i32, i32* %13, align 4
  ret i32 %308
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.TYPE_6__*, i32, i64, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i8* @be16_to_cpup(i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

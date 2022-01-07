; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_query_mad_ifc_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_query_mad_ifc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8* }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_smp = type { i32*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid port number %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1
@log_max_msg = common dso_local global i32 0, align 4
@IB_PORT_EXTENDED_SPEEDS_SUP = common dso_local global i32 0, align 4
@MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO = common dso_local global i32 0, align 4
@MLX5_ATTR_EXTENDED_PORT_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_mad_ifc_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca %struct.ib_smp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %14)
  store %struct.mlx5_ib_dev* %15, %struct.mlx5_ib_dev** %8, align 8
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 0
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %11, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %26 = load i32, i32* @num_ports, align 4
  %27 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %25, i32 %26)
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23, %3
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %294

35:                                               ; preds = %23
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ib_smp* @kzalloc(i32 24, i32 %36)
  store %struct.ib_smp* %37, %struct.ib_smp** %10, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.ib_smp* @kmalloc(i32 24, i32 %38)
  store %struct.ib_smp* %39, %struct.ib_smp** %11, align 8
  %40 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %41 = icmp ne %struct.ib_smp* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %44 = icmp ne %struct.ib_smp* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %35
  br label %288

46:                                               ; preds = %42
  %47 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %48 = call i32 @memset(%struct.ib_port_attr* %47, i32 0, i32 96)
  %49 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %50 = call i32 @init_query_mad(%struct.ib_smp* %49)
  %51 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %52 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %53 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %57 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %61 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %62 = call i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %58, i32 1, i32 1, i32 %59, i32* null, i32* null, %struct.ib_smp* %60, %struct.ib_smp* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %46
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %288

69:                                               ; preds = %46
  %70 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %71 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = call i8* @be16_to_cpup(i32* %73)
  %75 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %76 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %75, i32 0, i32 18
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %78 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 34
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 7
  %83 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %84 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %86 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 18
  %89 = call i8* @be16_to_cpup(i32* %88)
  %90 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %91 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %90, i32 0, i32 17
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 36
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  %98 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %99 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %101 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 32
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 15
  %106 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %107 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %109 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 33
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 4
  %114 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %115 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %117 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 20
  %120 = call i32 @be32_to_cpup(i32* %119)
  %121 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %122 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %124 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 50
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %129 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %131 = load i32, i32* @log_max_msg, align 4
  %132 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %130, i32 %131)
  %133 = shl i32 1, %132
  %134 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %135 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 8
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %137 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %146 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %145, i32 0, i32 16
  store i32 %144, i32* %146, align 8
  %147 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %148 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 46
  %151 = call i8* @be16_to_cpup(i32* %150)
  %152 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %153 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %152, i32 0, i32 15
  store i8* %151, i8** %153, align 8
  %154 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %155 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 48
  %158 = call i8* @be16_to_cpup(i32* %157)
  %159 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %160 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %159, i32 0, i32 14
  store i8* %158, i8** %160, align 8
  %161 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %162 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 31
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 15
  %167 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %168 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 4
  %169 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %170 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 35
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 4
  %175 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %176 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %175, i32 0, i32 8
  store i32 %174, i32* %176, align 8
  %177 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %178 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 41
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 15
  %183 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %184 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %183, i32 0, i32 9
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %186 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 36
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 4
  %191 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %192 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %191, i32 0, i32 10
  store i32 %190, i32* %192, align 8
  %193 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %194 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 51
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 31
  %199 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %200 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %199, i32 0, i32 11
  store i32 %198, i32* %200, align 4
  %201 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %202 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 37
  %205 = load i32, i32* %204, align 4
  %206 = ashr i32 %205, 4
  %207 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %208 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %207, i32 0, i32 12
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %210 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 41
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 4
  %215 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %216 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %215, i32 0, i32 13
  store i32 %214, i32* %216, align 4
  %217 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %218 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @IB_PORT_EXTENDED_SPEEDS_SUP, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %69
  %224 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %225 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 62
  %228 = load i32, i32* %227, align 4
  %229 = ashr i32 %228, 4
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  switch i32 %230, label %237 [
    i32 1, label %231
    i32 2, label %234
  ]

231:                                              ; preds = %223
  %232 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %233 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %232, i32 0, i32 8
  store i32 16, i32* %233, align 8
  br label %237

234:                                              ; preds = %223
  %235 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %236 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %235, i32 0, i32 8
  store i32 32, i32* %236, align 8
  br label %237

237:                                              ; preds = %223, %234, %231
  br label %238

238:                                              ; preds = %237, %69
  %239 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %240 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 4
  br i1 %242, label %243, label %287

243:                                              ; preds = %238
  %244 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %245 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %244, i32 0, i32 0
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %286

256:                                              ; preds = %243
  %257 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %258 = call i32 @init_query_mad(%struct.ib_smp* %257)
  %259 = load i32, i32* @MLX5_ATTR_EXTENDED_PORT_INFO, align 4
  %260 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %261 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call i8* @cpu_to_be32(i32 %262)
  %264 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %265 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  %266 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %267 = load i32, i32* %6, align 4
  %268 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %269 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %270 = call i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %266, i32 1, i32 1, i32 %267, i32* null, i32* null, %struct.ib_smp* %268, %struct.ib_smp* %269)
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %256
  br label %288

274:                                              ; preds = %256
  %275 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %276 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 15
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %274
  %283 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %284 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %283, i32 0, i32 8
  store i32 8, i32* %284, align 8
  br label %285

285:                                              ; preds = %282, %274
  br label %286

286:                                              ; preds = %285, %243
  br label %287

287:                                              ; preds = %286, %238
  br label %288

288:                                              ; preds = %287, %273, %65, %45
  %289 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %290 = call i32 @kfree(%struct.ib_smp* %289)
  %291 = load %struct.ib_smp*, %struct.ib_smp** %11, align 8
  %292 = call i32 @kfree(%struct.ib_smp* %291)
  %293 = load i32, i32* %13, align 4
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %288, %29
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i8* @be16_to_cpup(i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

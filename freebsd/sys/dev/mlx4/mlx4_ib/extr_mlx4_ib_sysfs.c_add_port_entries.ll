; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_sysfs.c_add_port_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_sysfs.c_add_port_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i8*, %struct.mlx4_ib_iov_port*, i32 }
%struct.mlx4_ib_iov_port = type { i32, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, %struct.mlx4_ib_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_port_attr = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"admin_guids\00", align 1
@show_admin_alias_guid = common dso_local global i32 0, align 4
@store_admin_alias_guid = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"gids\00", align 1
@show_port_gid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"pkeys\00", align 1
@show_phys_port_pkey = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mcgs\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"add_port_entries FAILED: for port:%d, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i32)* @add_port_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_port_entries(%struct.mlx4_ib_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca %struct.mlx4_ib_iov_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_port_attr, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_ib_iov_port* null, %struct.mlx4_ib_iov_port** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__mlx4_ib_query_port(i32* %12, i32 %13, %struct.ib_port_attr* %10, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %312

18:                                               ; preds = %2
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %19, i32 0, i32 1
  %21 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %21, i64 %24
  store %struct.mlx4_ib_iov_port* %25, %struct.mlx4_ib_iov_port** %8, align 8
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %27 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %27, i32 0, i32 7
  store %struct.mlx4_ib_dev* %26, %struct.mlx4_ib_dev** %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %32)
  %34 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %34, i32 0, i32 1
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %37 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %18
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %312

43:                                               ; preds = %18
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @kobject_get(i8* %50)
  %52 = call i8* @kobject_create_and_add(i8* %47, i32 %51)
  %53 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %303

62:                                               ; preds = %43
  %63 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @kobject_get(i8* %65)
  %67 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %294

77:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %117, %77
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %78
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %87, i32* %96, align 4
  %97 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %98 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %107 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @show_admin_alias_guid, align 4
  %111 = load i32*, i32** @store_admin_alias_guid, align 8
  %112 = call i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port* %97, %struct.TYPE_5__* %105, i8* %106, i8* %109, i32 %110, i32* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %83
  br label %289

116:                                              ; preds = %83
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %78

120:                                              ; preds = %78
  %121 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %122 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @kobject_get(i8* %123)
  %125 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %129 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %120
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %284

135:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %180, %135
  %137 = load i32, i32* %6, align 4
  %138 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %183

141:                                              ; preds = %136
  %142 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @sprintf(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 %145, i32* %157, align 4
  %158 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %159 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i64 %168
  %170 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %171 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* @show_port_gid, align 4
  %175 = call i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port* %158, %struct.TYPE_5__* %169, i8* %170, i8* %173, i32 %174, i32* null)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %141
  br label %279

179:                                              ; preds = %141
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %136

183:                                              ; preds = %136
  %184 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %185 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @kobject_get(i8* %186)
  %188 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  %189 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %190 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  %191 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %192 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %191, i32 0, i32 5
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %183
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %9, align 4
  br label %274

198:                                              ; preds = %183
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %245, %198
  %200 = load i32, i32* %6, align 4
  %201 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %204, label %248

204:                                              ; preds = %199
  %205 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @sprintf(i8* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %210 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %209, i32 0, i32 1
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 2, %215
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  store i32 %208, i32* %221, align 4
  %222 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %223 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %224 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 2, %229
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %233
  %235 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %236 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %237 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %236, i32 0, i32 5
  %238 = load i8*, i8** %237, align 8
  %239 = load i32, i32* @show_phys_port_pkey, align 4
  %240 = call i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port* %222, %struct.TYPE_5__* %234, i8* %235, i8* %238, i32 %239, i32* null)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %204
  br label %269

244:                                              ; preds = %204
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %6, align 4
  br label %199

248:                                              ; preds = %199
  %249 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %250 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @kobject_get(i8* %251)
  %253 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  %254 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %255 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %254, i32 0, i32 6
  store i8* %253, i8** %255, align 8
  %256 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %257 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %256, i32 0, i32 6
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %248
  %261 = load i32, i32* @ENOMEM, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %9, align 4
  br label %264

263:                                              ; preds = %248
  store i32 0, i32* %3, align 4
  br label %317

264:                                              ; preds = %260
  %265 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %266 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @kobject_put(i8* %267)
  br label %269

269:                                              ; preds = %264, %243
  %270 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %271 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %270, i32 0, i32 5
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @kobject_put(i8* %272)
  br label %274

274:                                              ; preds = %269, %195
  %275 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %276 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @kobject_put(i8* %277)
  br label %279

279:                                              ; preds = %274, %178
  %280 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %281 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %280, i32 0, i32 4
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @kobject_put(i8* %282)
  br label %284

284:                                              ; preds = %279, %132
  %285 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %286 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %285, i32 0, i32 2
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @kobject_put(i8* %287)
  br label %289

289:                                              ; preds = %284, %115
  %290 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %291 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %290, i32 0, i32 3
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @kobject_put(i8* %292)
  br label %294

294:                                              ; preds = %289, %74
  %295 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %296 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %295, i32 0, i32 2
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @kobject_put(i8* %297)
  %299 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %300 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %299, i32 0, i32 2
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @kobject_put(i8* %301)
  br label %303

303:                                              ; preds = %294, %59
  %304 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %305 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @kobject_put(i8* %306)
  %308 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %309 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %308, i32 0, i32 1
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %309, align 8
  %311 = call i32 @kfree(%struct.TYPE_4__* %310)
  br label %312

312:                                              ; preds = %303, %40, %17
  %313 = load i32, i32* %5, align 4
  %314 = load i32, i32* %9, align 4
  %315 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %313, i32 %314)
  %316 = load i32, i32* %9, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %312, %263
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @__mlx4_ib_query_port(i32*, i32, %struct.ib_port_attr*, i32) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @kobject_create_and_add(i8*, i32) #1

declare dso_local i32 @kobject_get(i8*) #1

declare dso_local i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port*, %struct.TYPE_5__*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @kobject_put(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

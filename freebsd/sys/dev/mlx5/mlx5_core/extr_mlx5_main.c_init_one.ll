; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_init_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.mlx5_core_dev = type { i32, i32, i32, i32, %struct.mlx5_priv, i32, i32, i32, i32, %struct.pci_dev*, i32* }
%struct.mlx5_priv = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.sysctl_oid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mlx5_prof_sel = common dso_local global i64 0, align 8
@profiles = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"WARN: selected profile out of range, selecting default (%d)\0A\00", align 1
@MLX5_DEFAULT_PROF = common dso_local global i64 0, align 8
@mlx5_core_event = common dso_local global i32 0, align 4
@mlx5_version = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"msix_eqvec\00", align 1
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Maximum number of MSIX event queue vectors, if set\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"power_status\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"0:Invalid 1:Sufficient 2:Insufficient\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"power_value\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Current power value in Watts\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"pme_stats\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Port module event statistics\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Port module event error statistics\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"module_plug\00", align 1
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@MLX5_MODULE_STATUS_PLUGGED_ENABLED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"Number of time module plugged\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"module_unplug\00", align 1
@MLX5_MODULE_STATUS_UNPLUGGED = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"Number of time module unplugged\00", align 1
@MLX5_MODULE_EVENT_ERROR_NUM = common dso_local global i32 0, align 4
@mlx5_pme_err_desc = common dso_local global i8** null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"mlx5dmp\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_NEW = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"mlx5_pci_init failed %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"mlx5_health_init failed %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"mlx5_load_one failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca %struct.sysctl_oid*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx5_core_dev* @kzalloc(i32 80, i32 %17)
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %6, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %19, i32 0, i32 4
  store %struct.mlx5_priv* %20, %struct.mlx5_priv** %7, align 8
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %22 = icmp ne %struct.pci_device_id* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5_priv*, %struct.mlx5_priv** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i64, i64* @mlx5_prof_sel, align 8
  %31 = icmp ult i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @mlx5_prof_sel, align 8
  %34 = load i32*, i32** @profiles, align 8
  %35 = call i64 @ARRAY_SIZE(i32* %34)
  %36 = icmp uge i64 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* @MLX5_DEFAULT_PROF, align 8
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* @MLX5_DEFAULT_PROF, align 8
  store i64 %41, i64* @mlx5_prof_sel, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32*, i32** @profiles, align 8
  %44 = load i64, i64* @mlx5_prof_sel, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %47 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %46, i32 0, i32 10
  store i32* %45, i32** %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %49, i32 0, i32 9
  store %struct.pci_dev* %48, %struct.pci_dev** %50, align 8
  %51 = load i32, i32* @mlx5_core_event, align 4
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @mlx5_version, align 4
  %56 = call i32 @device_set_desc(i32 %54, i32 %55)
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %57, i32 0, i32 0
  %59 = call i32 @sysctl_ctx_init(i32* %58)
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %61 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %62)
  %64 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %63)
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %68 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %67, i32 0, i32 7
  %69 = call i32 @SYSCTL_ADD_INT(i32* %61, i32 %64, i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32* %68, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %71 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %8, align 4
  %73 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %72)
  %74 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %73)
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %78 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %77, i32 0, i32 6
  %79 = call i32 @SYSCTL_ADD_INT(i32* %71, i32 %74, i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32* %78, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %81 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %82)
  %84 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %83)
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %87, i32 0, i32 5
  %89 = call i32 @SYSCTL_ADD_INT(i32* %81, i32 %84, i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32* %88, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %90 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %91 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %8, align 4
  %93 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %92)
  %94 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %93)
  %95 = load i32, i32* @OID_AUTO, align 4
  %96 = load i32, i32* @CTLFLAG_RD, align 4
  %97 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %91, i32 %94, i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %96, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store %struct.sysctl_oid* %97, %struct.sysctl_oid** %11, align 8
  %98 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %99 = icmp eq %struct.sysctl_oid* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %42
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  br label %256

103:                                              ; preds = %42
  %104 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %105 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %104, i32 0, i32 0
  %106 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %107 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %106)
  %108 = load i32, i32* @OID_AUTO, align 4
  %109 = load i32, i32* @CTLFLAG_RD, align 4
  %110 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %105, i32 %107, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %109, i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sysctl_oid* %110, %struct.sysctl_oid** %12, align 8
  %111 = load %struct.sysctl_oid*, %struct.sysctl_oid** %12, align 8
  %112 = icmp eq %struct.sysctl_oid* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %256

116:                                              ; preds = %103
  %117 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %118 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %117, i32 0, i32 0
  %119 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %120 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %119)
  %121 = load i32, i32* @OID_AUTO, align 4
  %122 = load i32, i32* @CTLFLAG_RD, align 4
  %123 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %126 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @MLX5_MODULE_STATUS_PLUGGED_ENABLED, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = call i32 @SYSCTL_ADD_U64(i32* %118, i32 %120, i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %124, i32* %131, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %134 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %133, i32 0, i32 0
  %135 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %136 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %135)
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load i32, i32* @CTLFLAG_RD, align 4
  %139 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %142 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @MLX5_MODULE_STATUS_UNPLUGGED, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = call i32 @SYSCTL_ADD_U64(i32* %134, i32 %136, i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %140, i32* %147, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %184, %116
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @MLX5_MODULE_EVENT_ERROR_NUM, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %187

153:                                              ; preds = %149
  %154 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %155 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %154, i32 0, i32 0
  %156 = load %struct.sysctl_oid*, %struct.sysctl_oid** %12, align 8
  %157 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %156)
  %158 = load i32, i32* @OID_AUTO, align 4
  %159 = load i8**, i8*** @mlx5_pme_err_desc, align 8
  %160 = load i32, i32* %9, align 4
  %161 = mul nsw i32 2, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %159, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* @CTLFLAG_RD, align 4
  %166 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %169 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i8**, i8*** @mlx5_pme_err_desc, align 8
  %177 = load i32, i32* %9, align 4
  %178 = mul nsw i32 2, %177
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %176, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @SYSCTL_ADD_U64(i32* %155, i32 %157, i32 %158, i8* %164, i32 %167, i32* %175, i32 0, i8* %182)
  br label %184

184:                                              ; preds = %153
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %149

187:                                              ; preds = %149
  %188 = load %struct.mlx5_priv*, %struct.mlx5_priv** %7, align 8
  %189 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %188, i32 0, i32 1
  %190 = call i32 @INIT_LIST_HEAD(i32* %189)
  %191 = load %struct.mlx5_priv*, %struct.mlx5_priv** %7, align 8
  %192 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %191, i32 0, i32 0
  %193 = call i32 @spin_lock_init(i32* %192)
  %194 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %195 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %194, i32 0, i32 3
  %196 = call i32 @mutex_init(i32* %195)
  %197 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %198 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %197, i32 0, i32 2
  %199 = call i32 @mutex_init(i32* %198)
  %200 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %201 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %200, i32 0, i32 1
  %202 = load i32, i32* @MTX_DEF, align 4
  %203 = load i32, i32* @MTX_NEW, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @mtx_init(i32* %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 %204)
  %206 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %207 = load %struct.mlx5_priv*, %struct.mlx5_priv** %7, align 8
  %208 = call i32 @mlx5_pci_init(%struct.mlx5_core_dev* %206, %struct.mlx5_priv* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %187
  %212 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %213)
  br label %252

215:                                              ; preds = %187
  %216 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %217 = call i32 @mlx5_health_init(%struct.mlx5_core_dev* %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %221, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %222)
  br label %248

224:                                              ; preds = %215
  %225 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %226 = call i32 @mlx5_pagealloc_init(%struct.mlx5_core_dev* %225)
  %227 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %228 = load %struct.mlx5_priv*, %struct.mlx5_priv** %7, align 8
  %229 = call i32 @mlx5_load_one(%struct.mlx5_core_dev* %227, %struct.mlx5_priv* %228, i32 1)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %224
  %233 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %234)
  br label %243

236:                                              ; preds = %224
  %237 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %238 = call i32 @mlx5_fwdump_prep(%struct.mlx5_core_dev* %237)
  %239 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %240 = call i32 @mlx5_firmware_update(%struct.mlx5_core_dev* %239)
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @pci_save_state(i32 %241)
  store i32 0, i32* %3, align 4
  br label %263

243:                                              ; preds = %232
  %244 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %245 = call i32 @mlx5_pagealloc_cleanup(%struct.mlx5_core_dev* %244)
  %246 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %247 = call i32 @mlx5_health_cleanup(%struct.mlx5_core_dev* %246)
  br label %248

248:                                              ; preds = %243, %220
  %249 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %250 = load %struct.mlx5_priv*, %struct.mlx5_priv** %7, align 8
  %251 = call i32 @mlx5_pci_close(%struct.mlx5_core_dev* %249, %struct.mlx5_priv* %250)
  br label %252

252:                                              ; preds = %248, %211
  %253 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %254 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %253, i32 0, i32 1
  %255 = call i32 @mtx_destroy(i32* %254)
  br label %256

256:                                              ; preds = %252, %113, %100
  %257 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %258 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %257, i32 0, i32 0
  %259 = call i32 @sysctl_ctx_free(i32* %258)
  %260 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %261 = call i32 @kfree(%struct.mlx5_core_dev* %260)
  %262 = load i32, i32* %10, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %256, %236
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.mlx5_core_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U64(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mlx5_pci_init(%struct.mlx5_core_dev*, %struct.mlx5_priv*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_health_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pagealloc_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_load_one(%struct.mlx5_core_dev*, %struct.mlx5_priv*, i32) #1

declare dso_local i32 @mlx5_fwdump_prep(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_firmware_update(%struct.mlx5_core_dev*) #1

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @mlx5_pagealloc_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_health_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pci_close(%struct.mlx5_core_dev*, %struct.mlx5_priv*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

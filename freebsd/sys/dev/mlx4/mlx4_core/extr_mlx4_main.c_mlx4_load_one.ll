; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_load_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_load_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.mlx4_priv = type { %struct.mlx4_dev, i32*, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_dev = type { i32, %struct.mlx4_dev_cap*, %struct.TYPE_9__*, %struct.TYPE_8__, i64, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@MLX4_PCI_DEV_IS_VF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Detected virtual function - running in slave mode\0A\00", align 1
@MLX4_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Multiple PFs not yet supported - Skipping PF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mlx4_opreq_action = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to reset HCA, aborting\0A\00", align 1
@MLX4_FLAG_MASTER = common dso_local global i32 0, align 4
@MLX4_FLAG_SRIOV = common dso_local global i32 0, align 4
@MLX4_DEVICE_STATE_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to init command interface, aborting\0A\00", align 1
@MLX4_MAX_NUM_SLAVES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to init slave mfunc interface, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to init fw, aborting.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"QUERY_DEV_CAP command failed, aborting.\0A\00", align 1
@MLX4_DEV_CAP_FLAG2_SYS_EQS = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_ALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Invalid SRIOV state\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to reset HCA, aborting.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@pf_loading = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_VHCR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"Failed to init VHCR command interface, aborting\0A\00", align 1
@num_vfs_argc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [78 x i8] c"Error: Trying to configure VFs on port 2, but HCA has only %d physical ports\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Failed to init master mfunc interface, aborting.\0A\00", align 1
@MAX_MSIX = common dso_local global i32 0, align 4
@MLX4_FLAG_MSI_X = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [56 x i8] c"INTx is not supported in multi-function mode, aborting\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c" Failed to arm comm channel eq: %x\0A\00", align 1
@RES_TR_FREE_STRUCTS_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32, i32*, %struct.mlx4_priv*, i32)* @mlx4_load_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_load_one(%struct.pci_dev* %0, i32 %1, i32 %2, i32* %3, %struct.mlx4_priv* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx4_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mlx4_dev_cap*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.mlx4_priv* %4, %struct.mlx4_priv** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store %struct.mlx4_dev_cap* null, %struct.mlx4_dev_cap** %19, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %25 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %24, i32 0, i32 0
  store %struct.mlx4_dev* %25, %struct.mlx4_dev** %14, align 8
  %26 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %27 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %26, i32 0, i32 15
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 14
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 13
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %36 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %35, i32 0, i32 12
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %39 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %38, i32 0, i32 11
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %42 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %41, i32 0, i32 10
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %45 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %49 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %48, i32 0, i32 8
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %52 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %51, i32 0, i32 7
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %58 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_to_node(i32* %60)
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %63 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MLX4_PCI_DEV_IS_VF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %6
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %70 = call i32 @mlx4_warn(%struct.mlx4_dev* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %73 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %130

76:                                               ; preds = %6
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %78 = call i32 @mlx4_get_ownership(%struct.mlx4_dev* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %7, align 4
  br label %816

86:                                               ; preds = %81
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %88 = call i32 @mlx4_warn(%struct.mlx4_dev* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %816

91:                                               ; preds = %76
  %92 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %93 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %92, i32 0, i32 6
  %94 = call i32 @atomic_set(i32* %93, i32 0)
  %95 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %96 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %95, i32 0, i32 5
  %97 = load i32, i32* @mlx4_opreq_action, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %100 = call i32 @mlx4_reset(%struct.mlx4_dev* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %105 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %765

106:                                              ; preds = %91
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %111 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %112 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %114 = call i32 @pci_num_vf(%struct.pci_dev* %113)
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %119 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %120 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %109
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %126 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  br label %129

129:                                              ; preds = %123, %106
  br label %130

130:                                              ; preds = %129, %68
  %131 = load i32, i32* @MLX4_DEVICE_STATE_UP, align 4
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %133 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %132, i32 0, i32 2
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i32 %131, i32* %135, align 8
  br label %136

136:                                              ; preds = %314, %243, %130
  %137 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %138 = call i32 @mlx4_cmd_init(%struct.mlx4_dev* %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %143 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %765

144:                                              ; preds = %136
  %145 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %146 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %150 = call i64 @mlx4_is_master(%struct.mlx4_dev* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i64, i64* @MLX4_MAX_NUM_SLAVES, align 8
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %155 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %154, i32 0, i32 4
  store i64 %153, i64* %155, align 8
  br label %167

156:                                              ; preds = %148
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %158 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %160 = call i32 @mlx4_multi_func_init(%struct.mlx4_dev* %159)
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %165 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %164, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %761

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %144
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %170 = call i32 @mlx4_init_fw(%struct.mlx4_dev* %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %175 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %753

176:                                              ; preds = %168
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %178 = call i64 @mlx4_is_master(%struct.mlx4_dev* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %265

180:                                              ; preds = %176
  %181 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %182 = icmp ne %struct.mlx4_dev_cap* %181, null
  br i1 %182, label %245, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* @GFP_KERNEL, align 4
  %185 = call %struct.mlx4_dev_cap* @kzalloc(i32 12, i32 %184)
  store %struct.mlx4_dev_cap* %185, %struct.mlx4_dev_cap** %19, align 8
  %186 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %187 = icmp ne %struct.mlx4_dev_cap* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %16, align 4
  br label %750

191:                                              ; preds = %183
  %192 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %193 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %194 = call i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev* %192, %struct.mlx4_dev_cap* %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %199 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %198, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %750

200:                                              ; preds = %191
  %201 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %202 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = call i64 @mlx4_check_dev_cap(%struct.mlx4_dev* %201, %struct.mlx4_dev_cap* %202, i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %750

207:                                              ; preds = %200
  %208 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %209 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %244, label %214

214:                                              ; preds = %207
  %215 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %216 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @mlx4_enable_sriov(%struct.mlx4_dev* %215, %struct.pci_dev* %216, i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %21, align 4
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %222 = load i32, i32* @MLX4_CMD_CLEANUP_ALL, align 4
  %223 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %221, i32 %222)
  %224 = load i32, i32* %21, align 4
  %225 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %226 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %228 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @SRIOV_VALID_STATE(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %214
  %233 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %234 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %233, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %765

235:                                              ; preds = %214
  %236 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %237 = call i32 @mlx4_reset(%struct.mlx4_dev* %236)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %242 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %241, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %765

243:                                              ; preds = %235
  br label %136

244:                                              ; preds = %207
  br label %264

245:                                              ; preds = %180
  %246 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %247 = call i32 @memset(%struct.mlx4_dev_cap* %246, i32 0, i32 12)
  %248 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %249 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %250 = call i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev* %248, %struct.mlx4_dev_cap* %249)
  store i32 %250, i32* %16, align 4
  %251 = load i32, i32* %16, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %245
  %254 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %255 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %254, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %750

256:                                              ; preds = %245
  %257 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %258 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %259 = load i32*, i32** %11, align 8
  %260 = call i64 @mlx4_check_dev_cap(%struct.mlx4_dev* %257, %struct.mlx4_dev_cap* %258, i32* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  br label %750

263:                                              ; preds = %256
  br label %264

264:                                              ; preds = %263, %244
  br label %265

265:                                              ; preds = %264, %176
  %266 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %267 = call i32 @mlx4_init_hca(%struct.mlx4_dev* %266)
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* %16, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %327

270:                                              ; preds = %265
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* @EACCES, align 4
  %273 = sub nsw i32 0, %272
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %275, label %326

275:                                              ; preds = %270
  %276 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %277 = load i32, i32* @MLX4_CMD_CLEANUP_ALL, align 4
  %278 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %276, i32 %277)
  %279 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %280 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %307

285:                                              ; preds = %275
  %286 = load i32, i32* %20, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %290 = call i32 @pci_disable_sriov(%struct.pci_dev* %289)
  br label %291

291:                                              ; preds = %288, %285
  %292 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %293 = call i64 @mlx4_is_master(%struct.mlx4_dev* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %291
  %296 = load i32, i32* %13, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %295
  %299 = call i32 @atomic_dec(i32* @pf_loading)
  br label %300

300:                                              ; preds = %298, %295, %291
  %301 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %304 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %300, %275
  %308 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %309 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %307
  %312 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %313 = call i32 @mlx4_free_ownership(%struct.mlx4_dev* %312)
  br label %314

314:                                              ; preds = %311, %307
  %315 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %316 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %317 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  %320 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %321 = xor i32 %320, -1
  %322 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %323 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = and i32 %324, %321
  store i32 %325, i32* %323, align 8
  br label %136

326:                                              ; preds = %270
  br label %750

327:                                              ; preds = %265
  %328 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %329 = call i64 @mlx4_is_master(%struct.mlx4_dev* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %384

331:                                              ; preds = %327
  %332 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %333 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SYS_EQS, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %384

338:                                              ; preds = %331
  %339 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %340 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %341 = load i32, i32* %10, align 4
  %342 = load i32, i32* %20, align 4
  %343 = load i32, i32* %13, align 4
  %344 = call i32 @mlx4_enable_sriov(%struct.mlx4_dev* %339, %struct.pci_dev* %340, i32 %341, i32 %342, i32 %343)
  store i32 %344, i32* %22, align 4
  %345 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %346 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %22, align 4
  %349 = xor i32 %347, %348
  %350 = load i32, i32* @MLX4_FLAG_MASTER, align 4
  %351 = load i32, i32* @MLX4_FLAG_SLAVE, align 4
  %352 = or i32 %350, %351
  %353 = and i32 %349, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %370

355:                                              ; preds = %338
  %356 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %357 = load i32, i32* @MLX4_CMD_CLEANUP_VHCR, align 4
  %358 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %356, i32 %357)
  %359 = load i32, i32* %22, align 4
  %360 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %361 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 8
  %362 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %363 = call i32 @mlx4_cmd_init(%struct.mlx4_dev* %362)
  store i32 %363, i32* %16, align 4
  %364 = load i32, i32* %16, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %355
  %367 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %368 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %367, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %747

369:                                              ; preds = %355
  br label %374

370:                                              ; preds = %338
  %371 = load i32, i32* %22, align 4
  %372 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %373 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %372, i32 0, i32 0
  store i32 %371, i32* %373, align 8
  br label %374

374:                                              ; preds = %370, %369
  %375 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %376 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @SRIOV_VALID_STATE(i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %374
  %381 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %382 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %381, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %747

383:                                              ; preds = %374
  br label %384

384:                                              ; preds = %383, %331, %327
  %385 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %386 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %384
  %389 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %390 = call i32 @mlx4_check_pcie_caps(%struct.mlx4_dev* %389)
  br label %391

391:                                              ; preds = %388, %384
  %392 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %393 = call i64 @mlx4_is_master(%struct.mlx4_dev* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %489

395:                                              ; preds = %391
  %396 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %397 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = icmp slt i32 %399, 2
  br i1 %400, label %401, label %413

401:                                              ; preds = %395
  %402 = load i32, i32* @num_vfs_argc, align 4
  %403 = icmp sgt i32 %402, 1
  br i1 %403, label %404, label %413

404:                                              ; preds = %401
  %405 = load i32, i32* @EINVAL, align 4
  %406 = sub nsw i32 0, %405
  store i32 %406, i32* %16, align 4
  %407 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %408 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %409 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %407, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i32 %411)
  br label %747

413:                                              ; preds = %401, %395
  %414 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %415 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %414, i32 0, i32 2
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 1
  %418 = load i32*, i32** %417, align 8
  %419 = load i32*, i32** %11, align 8
  %420 = call i32 @memcpy(i32* %418, i32* %419, i32 8)
  store i32 0, i32* %18, align 4
  br label %421

421:                                              ; preds = %477, %413
  %422 = load i32, i32* %18, align 4
  %423 = sext i32 %422 to i64
  %424 = icmp ult i64 %423, 2
  br i1 %424, label %425, label %480

425:                                              ; preds = %421
  store i32 0, i32* %23, align 4
  br label %426

426:                                              ; preds = %471, %425
  %427 = load i32, i32* %23, align 4
  %428 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %429 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %428, i32 0, i32 2
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %18, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = icmp ult i32 %427, %436
  br i1 %437, label %438, label %476

438:                                              ; preds = %426
  %439 = load i32, i32* %18, align 4
  %440 = icmp slt i32 %439, 2
  br i1 %440, label %441, label %444

441:                                              ; preds = %438
  %442 = load i32, i32* %18, align 4
  %443 = add nsw i32 %442, 1
  br label %445

444:                                              ; preds = %438
  br label %445

445:                                              ; preds = %444, %441
  %446 = phi i32 [ %443, %441 ], [ 1, %444 ]
  %447 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %448 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %447, i32 0, i32 1
  %449 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %448, align 8
  %450 = load i32, i32* %15, align 4
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %449, i64 %451
  %453 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %452, i32 0, i32 1
  store i32 %446, i32* %453, align 4
  %454 = load i32, i32* %18, align 4
  %455 = icmp slt i32 %454, 2
  br i1 %455, label %456, label %457

456:                                              ; preds = %445
  br label %462

457:                                              ; preds = %445
  %458 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %459 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  br label %462

462:                                              ; preds = %457, %456
  %463 = phi i32 [ 1, %456 ], [ %461, %457 ]
  %464 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %465 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %464, i32 0, i32 1
  %466 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %465, align 8
  %467 = load i32, i32* %15, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %466, i64 %468
  %470 = getelementptr inbounds %struct.mlx4_dev_cap, %struct.mlx4_dev_cap* %469, i32 0, i32 2
  store i32 %463, i32* %470, align 4
  br label %471

471:                                              ; preds = %462
  %472 = load i32, i32* %15, align 4
  %473 = add i32 %472, 1
  store i32 %473, i32* %15, align 4
  %474 = load i32, i32* %23, align 4
  %475 = add i32 %474, 1
  store i32 %475, i32* %23, align 4
  br label %426

476:                                              ; preds = %426
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %18, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %18, align 4
  br label %421

480:                                              ; preds = %421
  %481 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %482 = call i32 @mlx4_multi_func_init(%struct.mlx4_dev* %481)
  store i32 %482, i32* %16, align 4
  %483 = load i32, i32* %16, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %480
  %486 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %487 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %486, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %747

488:                                              ; preds = %480
  br label %489

489:                                              ; preds = %488, %391
  %490 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %491 = call i32 @mlx4_alloc_eq_table(%struct.mlx4_dev* %490)
  store i32 %491, i32* %16, align 4
  %492 = load i32, i32* %16, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  br label %706

495:                                              ; preds = %489
  %496 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %497 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %496, i32 0, i32 4
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @MAX_MSIX, align 4
  %501 = call i32 @bitmap_zero(i32 %499, i32 %500)
  %502 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %503 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %502, i32 0, i32 4
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 0
  %505 = call i32 @mutex_init(i32* %504)
  %506 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %507 = call i32 @mlx4_enable_msi_x(%struct.mlx4_dev* %506)
  %508 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %509 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %523

511:                                              ; preds = %495
  %512 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %513 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %511
  %519 = load i32, i32* @ENOSYS, align 4
  %520 = sub nsw i32 0, %519
  store i32 %520, i32* %16, align 4
  %521 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %522 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %521, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  br label %703

523:                                              ; preds = %511, %495
  %524 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %525 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %524)
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %534, label %527

527:                                              ; preds = %523
  %528 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %529 = call i32 @mlx4_init_steering(%struct.mlx4_dev* %528)
  store i32 %529, i32* %16, align 4
  %530 = load i32, i32* %16, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %533

532:                                              ; preds = %527
  br label %692

533:                                              ; preds = %527
  br label %534

534:                                              ; preds = %533, %523
  %535 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %536 = call i32 @mlx4_init_quotas(%struct.mlx4_dev* %535)
  %537 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %538 = call i32 @mlx4_setup_hca(%struct.mlx4_dev* %537)
  store i32 %538, i32* %16, align 4
  %539 = load i32, i32* %16, align 4
  %540 = load i32, i32* @EBUSY, align 4
  %541 = sub nsw i32 0, %540
  %542 = icmp eq i32 %539, %541
  br i1 %542, label %543, label %568

543:                                              ; preds = %534
  %544 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %545 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %568

550:                                              ; preds = %543
  %551 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %552 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %568, label %554

554:                                              ; preds = %550
  %555 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %556 = xor i32 %555, -1
  %557 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %558 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = and i32 %559, %556
  store i32 %560, i32* %558, align 8
  %561 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %562 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %561, i32 0, i32 3
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 1
  store i32 1, i32* %563, align 4
  %564 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %565 = call i32 @pci_disable_msix(%struct.pci_dev* %564)
  %566 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %567 = call i32 @mlx4_setup_hca(%struct.mlx4_dev* %566)
  store i32 %567, i32* %16, align 4
  br label %568

568:                                              ; preds = %554, %550, %543, %534
  %569 = load i32, i32* %16, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %568
  br label %684

572:                                              ; preds = %568
  %573 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %574 = call i64 @mlx4_is_master(%struct.mlx4_dev* %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %586

576:                                              ; preds = %572
  %577 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %578 = call i32 @mlx4_ARM_COMM_CHANNEL(%struct.mlx4_dev* %577)
  store i32 %578, i32* %16, align 4
  %579 = load i32, i32* %16, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %585

581:                                              ; preds = %576
  %582 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %583 = load i32, i32* %16, align 4
  %584 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_err(%struct.mlx4_dev* %582, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %583)
  br label %684

585:                                              ; preds = %576
  br label %586

586:                                              ; preds = %585, %572
  store i32 1, i32* %17, align 4
  br label %587

587:                                              ; preds = %602, %586
  %588 = load i32, i32* %17, align 4
  %589 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %590 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %589, i32 0, i32 3
  %591 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = icmp sle i32 %588, %592
  br i1 %593, label %594, label %605

594:                                              ; preds = %587
  %595 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %596 = load i32, i32* %17, align 4
  %597 = call i32 @mlx4_init_port_info(%struct.mlx4_dev* %595, i32 %596)
  store i32 %597, i32* %16, align 4
  %598 = load i32, i32* %16, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %594
  br label %644

601:                                              ; preds = %594
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %17, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %17, align 4
  br label %587

605:                                              ; preds = %587
  %606 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %607 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %606, i32 0, i32 3
  %608 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %607, i32 0, i32 0
  store i32 1, i32* %608, align 8
  %609 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %610 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %609, i32 0, i32 3
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 1
  store i32 2, i32* %611, align 4
  %612 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %613 = call i32 @mlx4_register_device(%struct.mlx4_dev* %612)
  store i32 %613, i32* %16, align 4
  %614 = load i32, i32* %16, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %605
  br label %644

617:                                              ; preds = %605
  %618 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %619 = call i32 @mlx4_request_modules(%struct.mlx4_dev* %618)
  %620 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %621 = call i32 @mlx4_sense_init(%struct.mlx4_dev* %620)
  %622 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %623 = call i32 @mlx4_start_sense(%struct.mlx4_dev* %622)
  %624 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %625 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %624, i32 0, i32 2
  store i64 0, i64* %625, align 8
  %626 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %627 = call i64 @mlx4_is_master(%struct.mlx4_dev* %626)
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %641

629:                                              ; preds = %617
  %630 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %631 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %630, i32 0, i32 2
  %632 = load %struct.TYPE_9__*, %struct.TYPE_9__** %631, align 8
  %633 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %641

636:                                              ; preds = %629
  %637 = load i32, i32* %13, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %641, label %639

639:                                              ; preds = %636
  %640 = call i32 @atomic_dec(i32* @pf_loading)
  br label %641

641:                                              ; preds = %639, %636, %629, %617
  %642 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %643 = call i32 @kfree(%struct.mlx4_dev_cap* %642)
  store i32 0, i32* %7, align 4
  br label %816

644:                                              ; preds = %616, %600
  %645 = load i32, i32* %17, align 4
  %646 = add nsw i32 %645, -1
  store i32 %646, i32* %17, align 4
  br label %647

647:                                              ; preds = %658, %644
  %648 = load i32, i32* %17, align 4
  %649 = icmp sge i32 %648, 1
  br i1 %649, label %650, label %661

650:                                              ; preds = %647
  %651 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %652 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %651, i32 0, i32 1
  %653 = load i32*, i32** %652, align 8
  %654 = load i32, i32* %17, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i32, i32* %653, i64 %655
  %657 = call i32 @mlx4_cleanup_port_info(i32* %656)
  br label %658

658:                                              ; preds = %650
  %659 = load i32, i32* %17, align 4
  %660 = add nsw i32 %659, -1
  store i32 %660, i32* %17, align 4
  br label %647

661:                                              ; preds = %647
  %662 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %663 = call i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev* %662)
  %664 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %665 = call i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev* %664)
  %666 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %667 = call i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev* %666)
  %668 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %669 = call i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev* %668)
  %670 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %671 = call i32 @mlx4_cmd_use_polling(%struct.mlx4_dev* %670)
  %672 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %673 = call i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev* %672)
  %674 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %675 = call i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev* %674)
  %676 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %677 = call i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev* %676)
  %678 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %679 = call i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev* %678)
  %680 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %681 = call i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev* %680)
  %682 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %683 = call i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev* %682)
  br label %684

684:                                              ; preds = %661, %581, %571
  %685 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %686 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %685)
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %691, label %688

688:                                              ; preds = %684
  %689 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %690 = call i32 @mlx4_clear_steering(%struct.mlx4_dev* %689)
  br label %691

691:                                              ; preds = %688, %684
  br label %692

692:                                              ; preds = %691, %532
  %693 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %694 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %702

699:                                              ; preds = %692
  %700 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %701 = call i32 @pci_disable_msix(%struct.pci_dev* %700)
  br label %702

702:                                              ; preds = %699, %692
  br label %703

703:                                              ; preds = %702, %518
  %704 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %705 = call i32 @mlx4_free_eq_table(%struct.mlx4_dev* %704)
  br label %706

706:                                              ; preds = %703, %494
  %707 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %708 = call i64 @mlx4_is_master(%struct.mlx4_dev* %707)
  %709 = icmp ne i64 %708, 0
  br i1 %709, label %710, label %716

710:                                              ; preds = %706
  %711 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %712 = load i32, i32* @RES_TR_FREE_STRUCTS_ONLY, align 4
  %713 = call i32 @mlx4_free_resource_tracker(%struct.mlx4_dev* %711, i32 %712)
  %714 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %715 = call i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev* %714)
  br label %716

716:                                              ; preds = %710, %706
  %717 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %718 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %717)
  %719 = icmp ne i64 %718, 0
  br i1 %719, label %720, label %746

720:                                              ; preds = %716
  %721 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %722 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %721, i32 0, i32 3
  %723 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %722, i32 0, i32 6
  %724 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %723, align 8
  %725 = call i32 @kfree(%struct.mlx4_dev_cap* %724)
  %726 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %727 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %726, i32 0, i32 3
  %728 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %727, i32 0, i32 5
  %729 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %728, align 8
  %730 = call i32 @kfree(%struct.mlx4_dev_cap* %729)
  %731 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %732 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %731, i32 0, i32 3
  %733 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %732, i32 0, i32 4
  %734 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %733, align 8
  %735 = call i32 @kfree(%struct.mlx4_dev_cap* %734)
  %736 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %737 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %736, i32 0, i32 3
  %738 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %737, i32 0, i32 3
  %739 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %738, align 8
  %740 = call i32 @kfree(%struct.mlx4_dev_cap* %739)
  %741 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %742 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %741, i32 0, i32 3
  %743 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %742, i32 0, i32 2
  %744 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %743, align 8
  %745 = call i32 @kfree(%struct.mlx4_dev_cap* %744)
  br label %746

746:                                              ; preds = %720, %716
  br label %747

747:                                              ; preds = %746, %485, %404, %380, %366
  %748 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %749 = call i32 @mlx4_close_hca(%struct.mlx4_dev* %748)
  br label %750

750:                                              ; preds = %747, %326, %262, %253, %206, %197, %188
  %751 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %752 = call i32 @mlx4_close_fw(%struct.mlx4_dev* %751)
  br label %753

753:                                              ; preds = %750, %173
  %754 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %755 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %754)
  %756 = icmp ne i64 %755, 0
  br i1 %756, label %757, label %760

757:                                              ; preds = %753
  %758 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %759 = call i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev* %758)
  br label %760

760:                                              ; preds = %757, %753
  br label %761

761:                                              ; preds = %760, %163
  %762 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %763 = load i32, i32* @MLX4_CMD_CLEANUP_ALL, align 4
  %764 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %762, i32 %763)
  br label %765

765:                                              ; preds = %761, %240, %232, %141, %103
  %766 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %767 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 8
  %769 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %770 = and i32 %768, %769
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %784

772:                                              ; preds = %765
  %773 = load i32, i32* %20, align 4
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %784, label %775

775:                                              ; preds = %772
  %776 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %777 = call i32 @pci_disable_sriov(%struct.pci_dev* %776)
  %778 = load i32, i32* @MLX4_FLAG_SRIOV, align 4
  %779 = xor i32 %778, -1
  %780 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %781 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 8
  %783 = and i32 %782, %779
  store i32 %783, i32* %781, align 8
  br label %784

784:                                              ; preds = %775, %772, %765
  %785 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %786 = call i64 @mlx4_is_master(%struct.mlx4_dev* %785)
  %787 = icmp ne i64 %786, 0
  br i1 %787, label %788, label %800

788:                                              ; preds = %784
  %789 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %790 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %789, i32 0, i32 2
  %791 = load %struct.TYPE_9__*, %struct.TYPE_9__** %790, align 8
  %792 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 8
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %795, label %800

795:                                              ; preds = %788
  %796 = load i32, i32* %13, align 4
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %800, label %798

798:                                              ; preds = %795
  %799 = call i32 @atomic_dec(i32* @pf_loading)
  br label %800

800:                                              ; preds = %798, %795, %788, %784
  %801 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %802 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %801, i32 0, i32 0
  %803 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %802, i32 0, i32 1
  %804 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %803, align 8
  %805 = call i32 @kfree(%struct.mlx4_dev_cap* %804)
  %806 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %807 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %806)
  %808 = icmp ne i64 %807, 0
  br i1 %808, label %812, label %809

809:                                              ; preds = %800
  %810 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  %811 = call i32 @mlx4_free_ownership(%struct.mlx4_dev* %810)
  br label %812

812:                                              ; preds = %809, %800
  %813 = load %struct.mlx4_dev_cap*, %struct.mlx4_dev_cap** %19, align 8
  %814 = call i32 @kfree(%struct.mlx4_dev_cap* %813)
  %815 = load i32, i32* %16, align 4
  store i32 %815, i32* %7, align 4
  br label %816

816:                                              ; preds = %812, %641, %86, %84
  %817 = load i32, i32* %7, align 4
  ret i32 %817
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_get_ownership(%struct.mlx4_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mlx4_reset(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @pci_num_vf(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_cmd_init(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_multi_func_init(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_fw(%struct.mlx4_dev*) #1

declare dso_local %struct.mlx4_dev_cap* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_QUERY_DEV_CAP(%struct.mlx4_dev*, %struct.mlx4_dev_cap*) #1

declare dso_local i64 @mlx4_check_dev_cap(%struct.mlx4_dev*, %struct.mlx4_dev_cap*, i32*) #1

declare dso_local i32 @mlx4_enable_sriov(%struct.mlx4_dev*, %struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd_cleanup(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @SRIOV_VALID_STATE(i32) #1

declare dso_local i32 @memset(%struct.mlx4_dev_cap*, i32, i32) #1

declare dso_local i32 @mlx4_init_hca(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_ownership(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_check_pcie_caps(%struct.mlx4_dev*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mlx4_alloc_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @mlx4_enable_msi_x(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_steering(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_quotas(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_setup_hca(%struct.mlx4_dev*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_ARM_COMM_CHANNEL(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_port_info(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_register_device(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_request_modules(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_sense_init(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_start_sense(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(%struct.mlx4_dev_cap*) #1

declare dso_local i32 @mlx4_cleanup_port_info(i32*) #1

declare dso_local i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_use_polling(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_clear_steering(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_resource_tracker(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_close_hca(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_close_fw(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

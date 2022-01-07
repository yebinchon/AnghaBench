; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_create_diagnostics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_create_diagnostics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_diagnostics_entry = type { i32, i32 }
%struct.mlx5e_priv = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.sysctl_oid*, %struct.sysctl_ctx_list }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"diagnostics\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Diagnostics\00", align 1
@MLX5_CORE_PCI_DIAGNOSTICS_NUM = common dso_local global i32 0, align 4
@mlx5_core_pci_diagnostics_table = common dso_local global %struct.mlx5_core_diagnostics_entry* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"PCI diagnostics counter\00", align 1
@MLX5_CORE_GENERAL_DIAGNOSTICS_NUM = common dso_local global i32 0, align 4
@mlx5_core_general_diagnostics_table = common dso_local global %struct.mlx5_core_diagnostics_entry* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"General diagnostics counter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_create_diagnostics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_create_diagnostics(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_core_diagnostics_entry, align 4
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 4
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %4, align 8
  %9 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 3
  %12 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %13 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %12)
  %14 = load i32, i32* @OID_AUTO, align 4
  %15 = load i32, i32* @CTLFLAG_RD, align 4
  %16 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %9, i32 %13, i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %5, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %18 = icmp eq %struct.sysctl_oid* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %98

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MLX5_CORE_PCI_DIAGNOSTICS_NUM, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.mlx5_core_diagnostics_entry*, %struct.mlx5_core_diagnostics_entry** @mlx5_core_pci_diagnostics_table, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx5_core_diagnostics_entry, %struct.mlx5_core_diagnostics_entry* %26, i64 %28
  %30 = bitcast %struct.mlx5_core_diagnostics_entry* %3 to i8*
  %31 = bitcast %struct.mlx5_core_diagnostics_entry* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_diagnostics_entry, %struct.mlx5_core_diagnostics_entry* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @mlx5_core_supports_diagnostics(i32 %34, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %56

40:                                               ; preds = %25
  %41 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %42 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %43 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %42)
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = getelementptr inbounds %struct.mlx5_core_diagnostics_entry, %struct.mlx5_core_diagnostics_entry* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CTLFLAG_RD, align 4
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %41, i32 %43, i32 %44, i32 %46, i32 %47, i64 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %40, %39
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %21

59:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %95, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @MLX5_CORE_GENERAL_DIAGNOSTICS_NUM, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load %struct.mlx5_core_diagnostics_entry*, %struct.mlx5_core_diagnostics_entry** @mlx5_core_general_diagnostics_table, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mlx5_core_diagnostics_entry, %struct.mlx5_core_diagnostics_entry* %65, i64 %67
  %69 = bitcast %struct.mlx5_core_diagnostics_entry* %3 to i8*
  %70 = bitcast %struct.mlx5_core_diagnostics_entry* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  %71 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %72 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.mlx5_core_diagnostics_entry, %struct.mlx5_core_diagnostics_entry* %3, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @mlx5_core_supports_diagnostics(i32 %73, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %95

79:                                               ; preds = %64
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %81 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %82 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %81)
  %83 = load i32, i32* @OID_AUTO, align 4
  %84 = getelementptr inbounds %struct.mlx5_core_diagnostics_entry, %struct.mlx5_core_diagnostics_entry* %3, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %88 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %80, i32 %82, i32 %83, i32 %85, i32 %86, i64 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %79, %78
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %60

98:                                               ; preds = %19, %60
  ret void
}

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mlx5_core_supports_diagnostics(i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, i32, i32, i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

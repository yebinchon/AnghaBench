; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_create_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_ethtool.c_mlx5e_create_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_create_stats(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid_list* %1, i8* %2, i8** %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sysctl_oid*, align 8
  %14 = alloca i32, align 4
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %7, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %16 = call i32 @sysctl_ctx_init(%struct.sysctl_ctx_list* %15)
  %17 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %18 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* @CTLFLAG_RD, align 4
  %22 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %17, %struct.sysctl_oid_list* %18, i32 %19, i8* %20, i32 %21, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.sysctl_oid* %22, %struct.sysctl_oid** %13, align 8
  %23 = load %struct.sysctl_oid*, %struct.sysctl_oid** %13, align 8
  %24 = icmp eq %struct.sysctl_oid* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %58

26:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %13, align 8
  %34 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i8**, i8*** %10, align 8
  %37 = load i32, i32* %14, align 4
  %38 = mul i32 2, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i8**, i8*** %10, align 8
  %48 = load i32, i32* %14, align 4
  %49 = mul i32 2, %48
  %50 = add i32 %49, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %47, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %32, i32 %34, i32 %35, i8* %41, i32 %42, i32* %46, i8* %53)
  br label %55

55:                                               ; preds = %31
  %56 = load i32, i32* %14, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %27

58:                                               ; preds = %25, %27
  ret void
}

declare dso_local i32 @sysctl_ctx_init(%struct.sysctl_ctx_list*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_add_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_add_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.mlx5_mr_cache }
%struct.mlx5_mr_cache = type { %struct.mlx5_cache_ent* }
%struct.mlx5_cache_ent = type { i32, i64, i32 }
%struct.mlx5_ib_mr = type { i32, i32, i32, i32, %struct.mlx5_ib_dev* }

@create_mkey_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@MAX_PENDING_REG_MR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@umr_en = common dso_local global i32 0, align 4
@access_mode = common dso_local global i32 0, align 4
@MLX5_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@qpn = common dso_local global i32 0, align 4
@translations_octword_size = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@reg_mr_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"create mkey failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, i32)* @add_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_keys(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_mr_cache*, align 8
  %9 = alloca %struct.mlx5_cache_ent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_mr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.mlx5_ib_mr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 1
  store %struct.mlx5_mr_cache* %18, %struct.mlx5_mr_cache** %8, align 8
  %19 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %8, align 8
  %20 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %19, i32 0, i32 0
  %21 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %21, i64 %23
  store %struct.mlx5_cache_ent* %24, %struct.mlx5_cache_ent** %9, align 8
  %25 = load i32, i32* @create_mkey_in, align 4
  %26 = call i32 @MLX5_ST_SZ_BYTES(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %28 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mlx5_ib_mr* @kzalloc(i32 %31, i32 %32)
  store %struct.mlx5_ib_mr* %33, %struct.mlx5_ib_mr** %14, align 8
  %34 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %35 = icmp ne %struct.mlx5_ib_mr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %153

39:                                               ; preds = %3
  %40 = load i32, i32* @create_mkey_in, align 4
  %41 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %42 = load i32, i32* @memory_key_mkey_entry, align 4
  %43 = call i8* @MLX5_ADDR_OF(i32 %40, %struct.mlx5_ib_mr* %41, i32 %42)
  store i8* %43, i8** %13, align 8
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %146, %39
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %149

48:                                               ; preds = %44
  %49 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAX_PENDING_REG_MR, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %15, align 4
  br label %149

57:                                               ; preds = %48
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.mlx5_ib_mr* @kzalloc(i32 24, i32 %58)
  store %struct.mlx5_ib_mr* %59, %struct.mlx5_ib_mr** %11, align 8
  %60 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %61 = icmp ne %struct.mlx5_ib_mr* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %15, align 4
  br label %149

65:                                               ; preds = %57
  %66 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %67 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %74 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %74, i32 0, i32 4
  store %struct.mlx5_ib_dev* %73, %struct.mlx5_ib_dev** %75, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* @free, align 4
  %79 = call i32 @MLX5_SET(i8* %76, i8* %77, i32 %78, i32 1)
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* @umr_en, align 4
  %83 = call i32 @MLX5_SET(i8* %80, i8* %81, i32 %82, i32 1)
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* @access_mode, align 4
  %87 = load i32, i32* @MLX5_ACCESS_MODE_MTT, align 4
  %88 = call i32 @MLX5_SET(i8* %84, i8* %85, i32 %86, i32 %87)
  %89 = load i8*, i8** %13, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* @qpn, align 4
  %92 = call i32 @MLX5_SET(i8* %89, i8* %90, i32 %91, i32 16777215)
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* @translations_octword_size, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  %98 = sdiv i32 %97, 2
  %99 = call i32 @MLX5_SET(i8* %93, i8* %94, i32 %95, i32 %98)
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* @log_page_size, align 4
  %103 = call i32 @MLX5_SET(i8* %100, i8* %101, i32 %102, i32 12)
  %104 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %105 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %104, i32 0, i32 2
  %106 = call i32 @spin_lock_irq(i32* %105)
  %107 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %108 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %112 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %111, i32 0, i32 2
  %113 = call i32 @spin_unlock_irq(i32* %112)
  %114 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %118 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %117, i32 0, i32 3
  %119 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %122 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @reg_mr_callback, align 4
  %125 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %126 = call i32 @mlx5_core_create_mkey_cb(i32 %116, i32* %118, %struct.mlx5_ib_mr* %119, i32 %120, i32 %123, i32 4, i32 %124, %struct.mlx5_ib_mr* %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %65
  %130 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %131 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %130, i32 0, i32 2
  %132 = call i32 @spin_lock_irq(i32* %131)
  %133 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %134 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, -1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %138 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %137, i32 0, i32 2
  %139 = call i32 @spin_unlock_irq(i32* %138)
  %140 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %141)
  %143 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %144 = call i32 @kfree(%struct.mlx5_ib_mr* %143)
  br label %149

145:                                              ; preds = %65
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %44

149:                                              ; preds = %129, %62, %54, %44
  %150 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %151 = call i32 @kfree(%struct.mlx5_ib_mr* %150)
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %149, %36
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5_ib_mr* @kzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx5_core_create_mkey_cb(i32, i32*, %struct.mlx5_ib_mr*, i32, i32, i32, i32, %struct.mlx5_ib_mr*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

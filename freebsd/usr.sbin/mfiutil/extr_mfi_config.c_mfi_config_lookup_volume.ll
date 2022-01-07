; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_mfi_config_lookup_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_mfi_config_lookup_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ld_config = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mfi_config_data = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfi_ld_config* (%struct.mfi_config_data*, i64)* @mfi_config_lookup_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfi_ld_config* @mfi_config_lookup_volume(%struct.mfi_config_data* %0, i64 %1) #0 {
  %3 = alloca %struct.mfi_ld_config*, align 8
  %4 = alloca %struct.mfi_config_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mfi_ld_config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mfi_config_data* %0, %struct.mfi_config_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mfi_config_data*, %struct.mfi_config_data** %4, align 8
  %10 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.mfi_config_data*, %struct.mfi_config_data** %4, align 8
  %14 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mfi_config_data*, %struct.mfi_config_data** %4, align 8
  %17 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %12, i64 %20
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %48, %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mfi_config_data*, %struct.mfi_config_data** %4, align 8
  %25 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.mfi_ld_config*
  store %struct.mfi_ld_config* %30, %struct.mfi_ld_config** %6, align 8
  %31 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %6, align 8
  %32 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %6, align 8
  store %struct.mfi_ld_config* %40, %struct.mfi_ld_config** %3, align 8
  br label %52

41:                                               ; preds = %28
  %42 = load %struct.mfi_config_data*, %struct.mfi_config_data** %4, align 8
  %43 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %22

51:                                               ; preds = %22
  store %struct.mfi_ld_config* null, %struct.mfi_ld_config** %3, align 8
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %3, align 8
  ret %struct.mfi_ld_config* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

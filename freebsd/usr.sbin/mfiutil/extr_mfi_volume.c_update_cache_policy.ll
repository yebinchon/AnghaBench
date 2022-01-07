; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_update_cache_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_update_cache_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ld_props = type { i32, i32 }

@MR_LD_CACHE_ALLOW_WRITE_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s caching of I/O writes\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Enabling\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Disabling\00", align 1
@MR_LD_CACHE_ALLOW_READ_CACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s caching of I/O reads\0A\00", align 1
@MR_LD_CACHE_WRITE_BACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Setting write cache policy to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"write-back\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"write-through\00", align 1
@MR_LD_CACHE_READ_AHEAD = common dso_local global i32 0, align 4
@MR_LD_CACHE_READ_ADAPTIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Setting read ahead policy to %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"adaptive\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@MR_LD_CACHE_WRITE_CACHE_BAD_BBU = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"%s write caching with bad BBU\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Enabling write-cache on physical drives\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Disabling write-cache on physical drives\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Using default write-cache setting on physical drives\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to set volume properties\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mfi_ld_props*, %struct.mfi_ld_props*)* @update_cache_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_cache_policy(i32 %0, %struct.mfi_ld_props* %1, %struct.mfi_ld_props* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mfi_ld_props*, align 8
  %7 = alloca %struct.mfi_ld_props*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mfi_ld_props* %1, %struct.mfi_ld_props** %6, align 8
  store %struct.mfi_ld_props* %2, %struct.mfi_ld_props** %7, align 8
  %11 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %6, align 8
  %12 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %15 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %6, align 8
  %20 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %23 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %139

27:                                               ; preds = %18, %3
  %28 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %29 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %6, align 8
  %33 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %31, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %40, %27
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %53, %48
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @MR_LD_CACHE_WRITE_BACK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @MR_LD_CACHE_WRITE_BACK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %66, %61
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @MR_LD_CACHE_READ_AHEAD, align 4
  %77 = load i32, i32* @MR_LD_CACHE_READ_ADAPTIVE, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @MR_LD_CACHE_READ_AHEAD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @MR_LD_CACHE_READ_ADAPTIVE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  br label %94

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %86
  %95 = phi i8* [ %92, %86 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %93 ]
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %74
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @MR_LD_CACHE_WRITE_CACHE_BAD_BBU, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @MR_LD_CACHE_WRITE_CACHE_BAD_BBU, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %102, %97
  %111 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %6, align 8
  %112 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %115 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %110
  %119 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %120 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %128 [
    i32 129, label %122
    i32 130, label %124
    i32 128, label %126
  ]

122:                                              ; preds = %118
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %128

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  br label %128

126:                                              ; preds = %118
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  br label %128

128:                                              ; preds = %118, %126, %124, %122
  br label %129

129:                                              ; preds = %128, %110
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %132 = call i64 @mfi_ld_set_props(i32 %130, %struct.mfi_ld_props* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @errno, align 4
  store i32 %135, i32* %8, align 4
  %136 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %4, align 4
  br label %139

138:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %134, %26
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @mfi_ld_set_props(i32, %struct.mfi_ld_props*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

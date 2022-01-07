; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_volume_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_volume_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ld_props = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"cache: volume required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid volume: %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to fetch volume properties\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"mfi%u volume %s cache settings:\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"             I/O caching: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"writes\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"reads\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"writes and reads\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"           write caching: %s\0A\00", align 1
@MR_LD_CACHE_WRITE_BACK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"write-back\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"write-through\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"write cache with bad BBU: %s\0A\00", align 1
@MR_LD_CACHE_WRITE_CACHE_BAD_BBU = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"              read ahead: %s\0A\00", align 1
@MR_LD_CACHE_READ_AHEAD = common dso_local global i32 0, align 4
@MR_LD_CACHE_READ_ADAPTIVE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"adaptive\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"       drive write cache: \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"default\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"??? %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"Cache disabled due to dead battery or ongoing battery relearn\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @volume_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_cache(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_ld_props, align 4
  %7 = alloca %struct.mfi_ld_props, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %166

17:                                               ; preds = %2
  %18 = load i32, i32* @mfi_unit, align 4
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = call i32 @mfi_open(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %8, align 4
  %25 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %166

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @mfi_lookup_volume(i32 %28, i8* %31, i32* %11)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %166

43:                                               ; preds = %27
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @mfi_ld_get_props(i32 %44, i32 %45, %struct.mfi_ld_props* %6)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %8, align 4
  %50 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %166

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %131

57:                                               ; preds = %54
  %58 = load i32, i32* @mfi_unit, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @mfi_volume_name(i32 %59, i32 %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %58, i8* %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 135
  switch i32 %66, label %75 [
    i32 0, label %67
    i32 131, label %69
    i32 132, label %71
    i32 135, label %73
  ]

67:                                               ; preds = %57
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %75

69:                                               ; preds = %57
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %75

71:                                               ; preds = %57
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %75

73:                                               ; preds = %57
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %75

75:                                               ; preds = %57, %73, %71, %69, %67
  %76 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MR_LD_CACHE_WRITE_BACK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %82)
  %84 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MR_LD_CACHE_WRITE_CACHE_BAD_BBU, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MR_LD_CACHE_READ_AHEAD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %75
  %98 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MR_LD_CACHE_READ_ADAPTIVE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)
  br label %106

105:                                              ; preds = %75
  br label %106

106:                                              ; preds = %105, %97
  %107 = phi i8* [ %104, %97 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %105 ]
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %110 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %118 [
    i32 128, label %112
    i32 129, label %114
    i32 130, label %116
  ]

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %122

114:                                              ; preds = %106
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %122

116:                                              ; preds = %106
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %122

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118, %116, %114, %112
  %123 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %6, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %122
  store i32 0, i32* %8, align 4
  br label %162

131:                                              ; preds = %54
  %132 = bitcast %struct.mfi_ld_props* %7 to i8*
  %133 = bitcast %struct.mfi_ld_props* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 12, i1 false)
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 2
  store i8** %135, i8*** %5, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sub nsw i32 %136, 2
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %151, %131
  %139 = load i32, i32* %4, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load i32, i32* %4, align 4
  %143 = load i8**, i8*** %5, align 8
  %144 = call i32 @process_cache_command(i32 %142, i8** %143, %struct.mfi_ld_props* %7)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @close(i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  store i32 %150, i32* %3, align 4
  br label %166

151:                                              ; preds = %141
  %152 = load i32, i32* %10, align 4
  %153 = load i8**, i8*** %5, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  store i8** %155, i8*** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %4, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %4, align 4
  br label %138

159:                                              ; preds = %138
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @update_cache_policy(i32 %160, %struct.mfi_ld_props* %6, %struct.mfi_ld_props* %7)
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %130
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @close(i32 %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %147, %48, %34, %23, %14
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @mfi_lookup_volume(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mfi_ld_get_props(i32, i32, %struct.mfi_ld_props*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @mfi_volume_name(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @process_cache_command(i32, i8**, %struct.mfi_ld_props*) #1

declare dso_local i32 @update_cache_policy(i32, %struct.mfi_ld_props*, %struct.mfi_ld_props*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

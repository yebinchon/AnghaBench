; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_parse_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_parse_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_info = type { i32, %struct.mfi_pd_info* }
%struct.mfi_pd_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid drive list '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_DRIVES_PER_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Too many drives for a single array: max is %d\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"RAID1 and RAID10 require an even number of drives in each array\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"RAID5 and RAID50 require at least 3 drives in each array\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"RAID6 and RAID60 require at least 4 drives in each array\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed to fetch drive info for drive %s\00", align 1
@MFI_PD_STATE_UNCONFIGURED_GOOD = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"Drive %u is not available\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Drive %u is foreign\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, %struct.array_info*)* @parse_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_array(i32 %0, i32 %1, i8* %2, %struct.array_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.array_info*, align 8
  %10 = alloca %struct.mfi_pd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.array_info* %3, %struct.array_info** %9, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %37, %4
  %17 = load i8*, i8** %12, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i8*, i8** %12, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 44)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %165

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @MAX_DRIVES_PER_ARRAY, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @MAX_DRIVES_PER_ARRAY, align 4
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %5, align 4
  br label %165

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %72 [
    i32 133, label %50
    i32 132, label %50
    i32 131, label %58
    i32 130, label %58
    i32 129, label %65
    i32 128, label %65
  ]

50:                                               ; preds = %48, %48
  %51 = load i32, i32* %13, align 4
  %52 = srem i32 %51, 2
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %5, align 4
  br label %165

57:                                               ; preds = %50
  br label %72

58:                                               ; preds = %48, %48
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %5, align 4
  br label %165

64:                                               ; preds = %58
  br label %72

65:                                               ; preds = %48, %48
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %5, align 4
  br label %165

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %48, %71, %64, %57
  %73 = load i32, i32* %13, align 4
  %74 = call %struct.mfi_pd_info* @calloc(i32 %73, i32 16)
  %75 = load %struct.array_info*, %struct.array_info** %9, align 8
  %76 = getelementptr inbounds %struct.array_info, %struct.array_info* %75, i32 0, i32 1
  store %struct.mfi_pd_info* %74, %struct.mfi_pd_info** %76, align 8
  %77 = load %struct.array_info*, %struct.array_info** %9, align 8
  %78 = getelementptr inbounds %struct.array_info, %struct.array_info* %77, i32 0, i32 1
  %79 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %78, align 8
  %80 = icmp eq %struct.mfi_pd_info* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %5, align 4
  br label %165

84:                                               ; preds = %72
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.array_info*, %struct.array_info** %9, align 8
  %87 = getelementptr inbounds %struct.array_info, %struct.array_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.array_info*, %struct.array_info** %9, align 8
  %89 = getelementptr inbounds %struct.array_info, %struct.array_info* %88, i32 0, i32 1
  %90 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %89, align 8
  store %struct.mfi_pd_info* %90, %struct.mfi_pd_info** %10, align 8
  br label %91

91:                                               ; preds = %161, %84
  %92 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %92, i8** %12, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %164

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @mfi_lookup_drive(i32 %95, i8* %96, i32* %11)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.array_info*, %struct.array_info** %9, align 8
  %102 = getelementptr inbounds %struct.array_info, %struct.array_info* %101, i32 0, i32 1
  %103 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %102, align 8
  %104 = call i32 @free(%struct.mfi_pd_info* %103)
  %105 = load %struct.array_info*, %struct.array_info** %9, align 8
  %106 = getelementptr inbounds %struct.array_info, %struct.array_info* %105, i32 0, i32 1
  store %struct.mfi_pd_info* null, %struct.mfi_pd_info** %106, align 8
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %165

108:                                              ; preds = %94
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %10, align 8
  %112 = call i64 @mfi_pd_get_info(i32 %109, i32 %110, %struct.mfi_pd_info* %111, i32* null)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load i32, i32* @errno, align 4
  store i32 %115, i32* %14, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = load %struct.array_info*, %struct.array_info** %9, align 8
  %119 = getelementptr inbounds %struct.array_info, %struct.array_info* %118, i32 0, i32 1
  %120 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %119, align 8
  %121 = call i32 @free(%struct.mfi_pd_info* %120)
  %122 = load %struct.array_info*, %struct.array_info** %9, align 8
  %123 = getelementptr inbounds %struct.array_info, %struct.array_info* %122, i32 0, i32 1
  store %struct.mfi_pd_info* null, %struct.mfi_pd_info** %123, align 8
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %5, align 4
  br label %165

125:                                              ; preds = %108
  %126 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %10, align 8
  %127 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MFI_PD_STATE_UNCONFIGURED_GOOD, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %132)
  %134 = load %struct.array_info*, %struct.array_info** %9, align 8
  %135 = getelementptr inbounds %struct.array_info, %struct.array_info* %134, i32 0, i32 1
  %136 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %135, align 8
  %137 = call i32 @free(%struct.mfi_pd_info* %136)
  %138 = load %struct.array_info*, %struct.array_info** %9, align 8
  %139 = getelementptr inbounds %struct.array_info, %struct.array_info* %138, i32 0, i32 1
  store %struct.mfi_pd_info* null, %struct.mfi_pd_info** %139, align 8
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %5, align 4
  br label %165

141:                                              ; preds = %125
  %142 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %10, align 8
  %143 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %141
  %151 = load i32, i32* %11, align 4
  %152 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  %153 = load %struct.array_info*, %struct.array_info** %9, align 8
  %154 = getelementptr inbounds %struct.array_info, %struct.array_info* %153, i32 0, i32 1
  %155 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %154, align 8
  %156 = call i32 @free(%struct.mfi_pd_info* %155)
  %157 = load %struct.array_info*, %struct.array_info** %9, align 8
  %158 = getelementptr inbounds %struct.array_info, %struct.array_info* %157, i32 0, i32 1
  store %struct.mfi_pd_info* null, %struct.mfi_pd_info** %158, align 8
  %159 = load i32, i32* @EINVAL, align 4
  store i32 %159, i32* %5, align 4
  br label %165

160:                                              ; preds = %141
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %10, align 8
  %163 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %162, i32 1
  store %struct.mfi_pd_info* %163, %struct.mfi_pd_info** %10, align 8
  br label %91

164:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %150, %131, %114, %100, %81, %68, %61, %54, %44, %31
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.mfi_pd_info* @calloc(i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @mfi_lookup_drive(i32, i8*, i32*) #1

declare dso_local i32 @free(%struct.mfi_pd_info*) #1

declare dso_local i64 @mfi_pd_get_info(i32, i32, %struct.mfi_pd_info*, i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

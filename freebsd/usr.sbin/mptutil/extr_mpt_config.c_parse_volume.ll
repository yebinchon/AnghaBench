; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_parse_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_parse_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_id_state = type { i32*, i32, i32 }
%struct.volume_info = type { i32, %struct.drive_info* }
%struct.drive_info = type { i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Invalid drive list '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"RAID0 requires at least 2 drives in each array\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"RAID1 requires exactly 2 drives in each array\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"RAID1E requires at least 3 drives in each array\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unable to lookup drive %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.config_id_state*, i8*, %struct.volume_info*)* @parse_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_volume(i32 %0, i32 %1, %struct.config_id_state* %2, i8* %3, %struct.volume_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.config_id_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.volume_info*, align 8
  %12 = alloca %struct.drive_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.config_id_state* %2, %struct.config_id_state** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.volume_info* %4, %struct.volume_info** %11, align 8
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %40, %5
  %20 = load i8*, i8** %14, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i8*, i8** %14, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 44)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 44
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %6, align 4
  br label %137

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %15, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %66 [
    i32 130, label %45
    i32 129, label %52
    i32 128, label %59
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %6, align 4
  br label %137

51:                                               ; preds = %45
  br label %66

52:                                               ; preds = %43
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %6, align 4
  br label %137

58:                                               ; preds = %52
  br label %66

59:                                               ; preds = %43
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %6, align 4
  br label %137

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %43, %65, %58, %51
  %67 = load i32, i32* %15, align 4
  %68 = call %struct.drive_info* @calloc(i32 %67, i32 16)
  %69 = load %struct.volume_info*, %struct.volume_info** %11, align 8
  %70 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %69, i32 0, i32 1
  store %struct.drive_info* %68, %struct.drive_info** %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.volume_info*, %struct.volume_info** %11, align 8
  %73 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.volume_info*, %struct.volume_info** %11, align 8
  %75 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %74, i32 0, i32 1
  %76 = load %struct.drive_info*, %struct.drive_info** %75, align 8
  store %struct.drive_info* %76, %struct.drive_info** %12, align 8
  br label %77

77:                                               ; preds = %133, %66
  %78 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %78, i8** %14, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %136

80:                                               ; preds = %77
  %81 = load %struct.config_id_state*, %struct.config_id_state** %9, align 8
  %82 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @mpt_lookup_drive(i32 %83, i8* %84, i32* %13)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32* @mpt_pd_info(i32 %89, i32 %90, i32* null)
  %92 = load %struct.drive_info*, %struct.drive_info** %12, align 8
  %93 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.drive_info*, %struct.drive_info** %12, align 8
  %95 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* %6, align 4
  br label %137

100:                                              ; preds = %88
  br label %133

101:                                              ; preds = %80
  %102 = load i8*, i8** %14, align 8
  %103 = load %struct.config_id_state*, %struct.config_id_state** %9, align 8
  %104 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.config_id_state*, %struct.config_id_state** %9, align 8
  %107 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @mpt_lookup_standalone_disk(i8* %102, i32* %105, i32 %108, i32* %17)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load i32, i32* @errno, align 4
  store i32 %112, i32* %16, align 4
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %6, align 4
  br label %137

116:                                              ; preds = %101
  %117 = load %struct.config_id_state*, %struct.config_id_state** %9, align 8
  %118 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load %struct.drive_info*, %struct.drive_info** %12, align 8
  %124 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  %125 = load %struct.drive_info*, %struct.drive_info** %12, align 8
  %126 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @mpt_lock_physdisk(i32* %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* @errno, align 4
  store i32 %131, i32* %6, align 4
  br label %137

132:                                              ; preds = %116
  br label %133

133:                                              ; preds = %132, %100
  %134 = load %struct.drive_info*, %struct.drive_info** %12, align 8
  %135 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %134, i32 1
  store %struct.drive_info* %135, %struct.drive_info** %12, align 8
  br label %77

136:                                              ; preds = %77
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %130, %111, %98, %62, %55, %48, %34
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local %struct.drive_info* @calloc(i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @mpt_lookup_drive(i32, i8*, i32*) #1

declare dso_local i32* @mpt_pd_info(i32, i32, i32*) #1

declare dso_local i64 @mpt_lookup_standalone_disk(i8*, i32*, i32, i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @mpt_lock_physdisk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_add_spare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_add_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_standalone_disk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mpt_drive_list = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"add spare: drive required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"add spare: extra arguments\00", align 1
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@MPI_RAID_HOT_SPARE_POOL_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to fetch standalone disk list\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to lookup drive %s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to create physical disk page\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to fetch drive info\00", align 1
@MPI_RAID_ACTION_CHANGE_PHYSDISK_SETTINGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Failed to assign spare\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @add_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_spare(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mpt_standalone_disk*, align 8
  %7 = alloca %struct.mpt_standalone_disk*, align 8
  %8 = alloca %struct.mpt_drive_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %171

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %171

26:                                               ; preds = %20
  %27 = load i32, i32* @mpt_unit, align 4
  %28 = call i32 @mpt_open(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %10, align 4
  %33 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %171

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @find_volume_spare_pool(i32 %39, i8* %42, i32* %14)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %171

50:                                               ; preds = %38
  br label %53

51:                                               ; preds = %35
  %52 = load i32, i32* @MPI_RAID_HOT_SPARE_POOL_0, align 4
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.mpt_drive_list* @mpt_pd_list(i32 %54)
  store %struct.mpt_drive_list* %55, %struct.mpt_drive_list** %8, align 8
  %56 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %8, align 8
  %57 = icmp eq %struct.mpt_drive_list* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %3, align 4
  br label %171

60:                                               ; preds = %53
  %61 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %8, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @mpt_lookup_drive(%struct.mpt_drive_list* %61, i8* %64, i32* %9)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @mpt_fetch_disks(i32 %69, i32* %13, %struct.mpt_standalone_disk** %7)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %8, align 8
  %76 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %3, align 4
  br label %171

80:                                               ; preds = %68
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @mpt_lookup_standalone_disk(i8* %83, %struct.mpt_standalone_disk* %84, i32 %85, i32* %12)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load i32, i32* @errno, align 4
  store i32 %89, i32* %10, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %8, align 8
  %95 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %94)
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %171

99:                                               ; preds = %80
  %100 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %100, i64 %102
  %104 = call i64 @mpt_lock_physdisk(%struct.mpt_standalone_disk* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %8, align 8
  %108 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %107)
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @close(i32 %109)
  %111 = load i32, i32* @errno, align 4
  store i32 %111, i32* %3, align 4
  br label %171

112:                                              ; preds = %99
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %114, i64 %116
  %118 = call i64 @mpt_create_physdisk(i32 %113, %struct.mpt_standalone_disk* %117, i32* %9)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load i32, i32* @errno, align 4
  store i32 %121, i32* %10, align 4
  %122 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %8, align 8
  %124 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %123)
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @close(i32 %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %171

128:                                              ; preds = %112
  %129 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %130 = call i32 @free(%struct.mpt_standalone_disk* %129)
  br label %131

131:                                              ; preds = %128, %60
  %132 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %8, align 8
  %133 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call %struct.mpt_standalone_disk* @mpt_pd_info(i32 %134, i32 %135, i32* null)
  store %struct.mpt_standalone_disk* %136, %struct.mpt_standalone_disk** %6, align 8
  %137 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %138 = icmp eq %struct.mpt_standalone_disk* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load i32, i32* @errno, align 4
  store i32 %140, i32* %10, align 4
  %141 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  br label %171

145:                                              ; preds = %131
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %148 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @MPI_RAID_ACTION_CHANGE_PHYSDISK_SETTINGS, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %154 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %153, i32 0, i32 0
  %155 = bitcast %struct.TYPE_2__* %154 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mpt_raid_action(i32 %150, i32 %151, i32 0, i32 0, i32 %152, i32 %156, i32* null, i32 0, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %145
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @warnc(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @close(i32 %163)
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %3, align 4
  br label %171

166:                                              ; preds = %145
  %167 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %168 = call i32 @free(%struct.mpt_standalone_disk* %167)
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @close(i32 %169)
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %166, %160, %139, %120, %106, %88, %73, %58, %46, %31, %23, %17
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @find_volume_spare_pool(i32, i8*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.mpt_drive_list* @mpt_pd_list(i32) #1

declare dso_local i32 @mpt_lookup_drive(%struct.mpt_drive_list*, i8*, i32*) #1

declare dso_local i32 @mpt_fetch_disks(i32, i32*, %struct.mpt_standalone_disk**) #1

declare dso_local i32 @mpt_free_pd_list(%struct.mpt_drive_list*) #1

declare dso_local i64 @mpt_lookup_standalone_disk(i8*, %struct.mpt_standalone_disk*, i32, i32*) #1

declare dso_local i64 @mpt_lock_physdisk(%struct.mpt_standalone_disk*) #1

declare dso_local i64 @mpt_create_physdisk(i32, %struct.mpt_standalone_disk*, i32*) #1

declare dso_local i32 @free(%struct.mpt_standalone_disk*) #1

declare dso_local %struct.mpt_standalone_disk* @mpt_pd_info(i32, i32, i32*) #1

declare dso_local i32 @mpt_raid_action(i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @warnc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

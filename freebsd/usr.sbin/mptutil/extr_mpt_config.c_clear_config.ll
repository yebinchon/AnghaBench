; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_clear_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_clear_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to fetch volume list\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Volume %s is busy and cannot be deleted\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Are you sure you wish to clear the configuration on mpt%u? [y/N] \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\0AAborting\0A\00", align 1
@MPI_RAID_ACTION_DELETE_VOLUME = common dso_local global i32 0, align 4
@MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS = common dso_local global i32 0, align 4
@MPI_RAID_ACTION_ADATA_ZERO_LBA0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to delete volume %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to fetch spare list\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to delete physical disk %d\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to fetch drive list\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"mpt%d: Configuration cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @clear_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_config(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @mpt_unit, align 4
  %17 = call i32 @mpt_open(i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %13, align 4
  %22 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %3, align 4
  br label %214

24:                                               ; preds = %2
  %25 = load i32, i32* %14, align 4
  %26 = call %struct.TYPE_11__* @mpt_read_ioc_page(i32 %25, i32 2, i32* null)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = icmp eq %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %13, align 4
  %31 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %3, align 4
  br label %214

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %69, %35
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @mpt_lock_volume(i32 %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %45
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mpt_volume_name(i32 %57, i32 %60)
  %62 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = call i32 @free(%struct.TYPE_11__* %63)
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* @EBUSY, align 4
  store i32 %67, i32* %3, align 4
  br label %214

68:                                               ; preds = %45
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 1
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %7, align 8
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %39

74:                                               ; preds = %39
  %75 = load i32, i32* @mpt_unit, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = call i32 (...) @getchar()
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 121
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 89
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = call i32 @free(%struct.TYPE_11__* %85)
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @close(i32 %87)
  store i32 0, i32* %3, align 4
  br label %214

89:                                               ; preds = %80, %74
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %125, %89
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @MPI_RAID_ACTION_DELETE_VOLUME, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS, align 4
  %109 = load i32, i32* @MPI_RAID_ACTION_ADATA_ZERO_LBA0, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @mpt_raid_action(i32 %100, i32 %101, i32 %104, i32 %107, i32 0, i32 %110, i32* null, i32 0, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %99
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @mpt_volume_name(i32 %118, i32 %121)
  %123 = call i32 @warnc(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %114, %99
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 1
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %7, align 8
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %93

130:                                              ; preds = %93
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = call i32 @free(%struct.TYPE_11__* %131)
  %133 = load i32, i32* %14, align 4
  %134 = call %struct.TYPE_11__* @mpt_read_ioc_page(i32 %133, i32 5, i32* null)
  store %struct.TYPE_11__* %134, %struct.TYPE_11__** %10, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %136 = icmp eq %struct.TYPE_11__* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %170

139:                                              ; preds = %130
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %11, align 8
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %162, %139
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %143
  %150 = load i32, i32* %14, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @mpt_delete_physdisk(i32 %150, i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %156, %149
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 1
  store %struct.TYPE_9__* %164, %struct.TYPE_9__** %11, align 8
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %143

167:                                              ; preds = %143
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = call i32 @free(%struct.TYPE_11__* %168)
  br label %170

170:                                              ; preds = %167, %137
  %171 = load i32, i32* %14, align 4
  %172 = call %struct.TYPE_11__* @mpt_read_ioc_page(i32 %171, i32 3, i32* null)
  store %struct.TYPE_11__* %172, %struct.TYPE_11__** %8, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = icmp eq %struct.TYPE_11__* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %208

177:                                              ; preds = %170
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  store %struct.TYPE_10__* %180, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %200, %177
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %181
  %188 = load i32, i32* %14, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @mpt_delete_physdisk(i32 %188, i32 %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %194, %187
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 1
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %9, align 8
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %181

205:                                              ; preds = %181
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = call i32 @free(%struct.TYPE_11__* %206)
  br label %208

208:                                              ; preds = %205, %175
  %209 = load i32, i32* @mpt_unit, align 4
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %209)
  %211 = call i32 @mpt_rescan_bus(i32 -1, i32 -1)
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @close(i32 %212)
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %208, %83, %54, %29, %20
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local %struct.TYPE_11__* @mpt_read_ioc_page(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mpt_lock_volume(i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @mpt_volume_name(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @mpt_raid_action(i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @warnc(i32, i8*, i32) #1

declare dso_local i64 @mpt_delete_physdisk(i32, i32) #1

declare dso_local i32 @mpt_rescan_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_volume.c_volume_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_volume.c_volume_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"volume cache: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"extra arguments\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"missing arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"volume cache: invalid flag, must be 'enable' or 'disable'\0A\00", align 1
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Invalid volume: %s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"volume cache unchanged\00", align 1
@MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"volume cache change failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @volume_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_cache(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 3
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %160

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  br label %27

27:                                               ; preds = %37, %23
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @tolower(i8 signext %34)
  %36 = load i8*, i8** %11, align 8
  store i8 %35, i8* %36, align 1
  br label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %11, align 8
  br label %27

40:                                               ; preds = %27
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %3, align 4
  br label %160

67:                                               ; preds = %58, %52, %46, %40
  %68 = load i32, i32* @mpt_unit, align 4
  %69 = call i32 @mpt_open(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %12, align 4
  %74 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %3, align 4
  br label %160

76:                                               ; preds = %67
  %77 = load i32, i32* %13, align 4
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @mpt_lookup_volume(i32 %77, i8* %80, i32* %9, i32* %10)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32, i32* %12, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, ...) @warnc(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %3, align 4
  br label %160

93:                                               ; preds = %76
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call %struct.TYPE_6__* @mpt_vol_info(i32 %94, i32 %95, i32 %96, i32* null)
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %6, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = icmp eq %struct.TYPE_6__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load i32, i32* @errno, align 4
  store i32 %103, i32* %3, align 4
  br label %160

104:                                              ; preds = %93
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %8, align 4
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strncmp(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %115, %104
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strncmp(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, -2
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = call i32 @free(%struct.TYPE_6__* %133)
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @close(i32 %135)
  store i32 0, i32* %3, align 4
  br label %160

137:                                              ; preds = %127
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @MPI_RAID_ACTION_CHANGE_VOLUME_SETTINGS, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = bitcast %struct.TYPE_5__* %147 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @mpt_raid_action(i32 %142, i32 %143, i32 %144, i32 %145, i32 0, i32 %149, i32* null, i32 0, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %137
  %154 = load i32, i32* %12, align 4
  %155 = call i32 (i32, i8*, ...) @warnc(i32 %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %137
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @close(i32 %157)
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %131, %100, %84, %72, %64, %16
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mpt_lookup_volume(i32, i8*, i32*, i32*) #1

declare dso_local i32 @warnc(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.TYPE_6__* @mpt_vol_info(i32, i32, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @mpt_raid_action(i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

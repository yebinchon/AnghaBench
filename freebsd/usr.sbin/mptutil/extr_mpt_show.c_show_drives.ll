; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_show.c_show_drives.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_show.c_show_drives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_drive_list = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.mpt_standalone_disk = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"show drives: extra arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to get drive list\00", align 1
@STANDALONE_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"mpt%d Physical Drives:\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%4u \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%4s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @show_drives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_drives(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mpt_drive_list*, align 8
  %7 = alloca %struct.mpt_standalone_disk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %139

19:                                               ; preds = %2
  %20 = load i32, i32* @mpt_unit, align 4
  %21 = call i32 @mpt_open(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %8, align 4
  %26 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.mpt_drive_list* @mpt_pd_list(i32 %29)
  store %struct.mpt_drive_list* %30, %struct.mpt_drive_list** %6, align 8
  %31 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %32 = icmp eq %struct.mpt_drive_list* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @close(i32 %35)
  %37 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %139

39:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @mpt_fetch_disks(i32 %40, i32* %12, %struct.mpt_standalone_disk** %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  store %struct.mpt_standalone_disk* null, %struct.mpt_standalone_disk** %7, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @STANDALONE_STATE, align 4
  %49 = call i32 @strlen(i32 %48)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %54 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %59 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @mpt_pdstate(%struct.TYPE_3__* %64)
  %66 = call i32 @strlen(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %70, %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load i32, i32* @mpt_unit, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %106, %76
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %82 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %79
  %86 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %87 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 %90
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %97 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %98, i64 %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @print_pd(%struct.TYPE_3__* %102, i32 %103, i32 1)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %85
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %79

109:                                              ; preds = %79
  %110 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %111 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %110)
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %131, %109
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %117, i64 %119
  %121 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %122)
  %124 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %124, i64 %126
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @print_standalone(%struct.mpt_standalone_disk* %127, i32 %128, i32 1)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %112

134:                                              ; preds = %112
  %135 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %7, align 8
  %136 = call i32 @free(%struct.mpt_standalone_disk* %135)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @close(i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %134, %33, %24, %16
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.mpt_drive_list* @mpt_pd_list(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mpt_fetch_disks(i32, i32*, %struct.mpt_standalone_disk**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mpt_pdstate(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_pd(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @mpt_free_pd_list(%struct.mpt_drive_list*) #1

declare dso_local i32 @print_standalone(%struct.mpt_standalone_disk*, i32, i32) #1

declare dso_local i32 @free(%struct.mpt_standalone_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

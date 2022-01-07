; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_add_drives.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_add_drives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.volume_info = type { i32, %struct.drive_info* }
%struct.drive_info = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to create physical disk page for %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Added drive %s with PhysDiskNum %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.volume_info*, i32)* @add_drives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_drives(i32 %0, %struct.volume_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.volume_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drive_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.volume_info* %1, %struct.volume_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.volume_info*, %struct.volume_info** %6, align 8
  %13 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %12, i32 0, i32 1
  %14 = load %struct.drive_info*, %struct.drive_info** %13, align 8
  store %struct.drive_info* %14, %struct.drive_info** %8, align 8
  br label %15

15:                                               ; preds = %67, %3
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.volume_info*, %struct.volume_info** %6, align 8
  %18 = getelementptr inbounds %struct.volume_info, %struct.volume_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %15
  %22 = load %struct.drive_info*, %struct.drive_info** %8, align 8
  %23 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %66

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.drive_info*, %struct.drive_info** %8, align 8
  %29 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i64 @mpt_create_physdisk(i32 %27, %struct.TYPE_2__* %30, i32* %9)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.drive_info*, %struct.drive_info** %8, align 8
  %36 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %73

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.drive_info*, %struct.drive_info** %8, align 8
  %47 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32* @mpt_pd_info(i32 %54, i32 %55, i32* null)
  %57 = load %struct.drive_info*, %struct.drive_info** %8, align 8
  %58 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.drive_info*, %struct.drive_info** %8, align 8
  %60 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %21
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load %struct.drive_info*, %struct.drive_info** %8, align 8
  %71 = getelementptr inbounds %struct.drive_info, %struct.drive_info* %70, i32 1
  store %struct.drive_info* %71, %struct.drive_info** %8, align 8
  br label %15

72:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %63, %33
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @mpt_create_physdisk(i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32* @mpt_pd_info(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_volume.c_volume_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_volume.c_volume_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"name: volume and name required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"name: new name is too long\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid volume: %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to fetch volume names\00", align 1
@MPI_CONFIG_PAGEATTR_CHANGEABLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Volume name is read only\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"mpt%u changing volume %s name from \22%s\22 to \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to set volume name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @volume_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volume_name(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %117

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENOSPC, align 4
  store i32 %25, i32* %3, align 4
  br label %117

26:                                               ; preds = %16
  %27 = load i32, i32* @mpt_unit, align 4
  %28 = call i32 @mpt_open(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %9, align 4
  %33 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %117

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @mpt_lookup_volume(i32 %36, i8* %39, i32* %7, i32* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @warnc(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %117

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.TYPE_7__* @mpt_vol_names(i32 %51, i32 %52, i32 %53, i32* null)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %6, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = icmp eq %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %9, align 4
  %59 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %117

63:                                               ; preds = %50
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MPI_CONFIG_PAGEATTR_CHANGEABLE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = call i32 @free(%struct.TYPE_7__* %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %76, i32* %3, align 4
  br label %117

77:                                               ; preds = %63
  %78 = load i32, i32* @mpt_unit, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @mpt_volume_name(i32 %79, i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %78, i8* %81, i8* %84, i8* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @bzero(i8* %91, i32 8)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcpy(i8* %95, i8* %98)
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = call i64 @mpt_write_config_page(i32 %100, %struct.TYPE_7__* %101, i32* null)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %77
  %105 = load i32, i32* @errno, align 4
  store i32 %105, i32* %9, align 4
  %106 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = call i32 @free(%struct.TYPE_7__* %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @close(i32 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %117

112:                                              ; preds = %77
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = call i32 @free(%struct.TYPE_7__* %113)
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @close(i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %104, %70, %57, %43, %31, %23, %13
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mpt_lookup_volume(i32, i8*, i32*, i32*) #1

declare dso_local i32 @warnc(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @mpt_vol_names(i32, i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @mpt_volume_name(i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @mpt_write_config_page(i32, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_do_export_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_do_export_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exportlist = type { i32, i32, %struct.grouplist*, i32, i32, i32, i32 }
%struct.grouplist = type { %struct.grouplist*, i32, i32, i32, i32, i32 }
%struct.statfs = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"do_export_mount=%s\00", align 1
@EX_DEFSET = common dso_local global i32 0, align 4
@GT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ex_defexflags=0x%x\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"do mount gr_type=0x%x gr_exflags=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exportlist*, %struct.statfs*)* @do_export_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_export_mount(%struct.exportlist* %0, %struct.statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exportlist*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.grouplist*, align 8
  %7 = alloca %struct.grouplist, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.exportlist* %0, %struct.exportlist** %4, align 8
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  %10 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %11 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i32, ...) @LOGDEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %15 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strlen(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %19 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EX_DEFSET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %2
  %25 = load i32, i32* @GT_DEFAULT, align 4
  %26 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %7, i32 0, i32 5
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %7, i32 0, i32 0
  store %struct.grouplist* null, %struct.grouplist** %27, align 8
  %28 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %29 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @LOGDEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %33 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %34 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %37 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %36, i32 0, i32 5
  %38 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %39 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.statfs*, %struct.statfs** %5, align 8
  %43 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %44 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %47 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @do_mount(%struct.exportlist* %32, %struct.grouplist* %7, i32 %35, i32* %37, i32 %40, i64 %41, %struct.statfs* %42, i32 %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %24
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %98

54:                                               ; preds = %24
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %57 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %56, i32 0, i32 2
  %58 = load %struct.grouplist*, %struct.grouplist** %57, align 8
  store %struct.grouplist* %58, %struct.grouplist** %6, align 8
  br label %59

59:                                               ; preds = %93, %55
  %60 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %61 = icmp ne %struct.grouplist* %60, null
  br i1 %61, label %62, label %97

62:                                               ; preds = %59
  %63 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %64 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %67 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @LOGDEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %71 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %72 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %73 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %76 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %75, i32 0, i32 3
  %77 = load %struct.exportlist*, %struct.exportlist** %4, align 8
  %78 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.statfs*, %struct.statfs** %5, align 8
  %82 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %83 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %86 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @do_mount(%struct.exportlist* %70, %struct.grouplist* %71, i32 %74, i32* %76, i32 %79, i64 %80, %struct.statfs* %81, i32 %84, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %62
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %98

93:                                               ; preds = %62
  %94 = load %struct.grouplist*, %struct.grouplist** %6, align 8
  %95 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %94, i32 0, i32 0
  %96 = load %struct.grouplist*, %struct.grouplist** %95, align 8
  store %struct.grouplist* %96, %struct.grouplist** %6, align 8
  br label %59

97:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %91, %52
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @LOGDEBUG(i8*, i32, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @do_mount(%struct.exportlist*, %struct.grouplist*, i32, i32*, i32, i64, %struct.statfs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

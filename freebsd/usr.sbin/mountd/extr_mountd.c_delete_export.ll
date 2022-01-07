; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_delete_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_delete_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }
%struct.statfs = type { i32, i32, i32, i32 }
%struct.xvfsconf = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"getvfsbyname() failed for %s\00", align 1
@MNT_EXPORTED = common dso_local global i32 0, align 4
@VFCF_NETWORK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@EXDEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"can't delete exports for %s: %m %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iovec*, i32, %struct.statfs*, i8*)* @delete_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_export(%struct.iovec* %0, i32 %1, %struct.statfs* %2, i8* %3) #0 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xvfsconf, align 4
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.statfs* %2, %struct.statfs** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.statfs*, %struct.statfs** %7, align 8
  %11 = getelementptr inbounds %struct.statfs, %struct.statfs* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @getvfsbyname(i32 %12, %struct.xvfsconf* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load %struct.statfs*, %struct.statfs** %7, align 8
  %18 = getelementptr inbounds %struct.statfs, %struct.statfs* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, i32, ...) @syslog(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %107

21:                                               ; preds = %4
  %22 = load %struct.statfs*, %struct.statfs** %7, align 8
  %23 = getelementptr inbounds %struct.statfs, %struct.statfs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MNT_EXPORTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %107

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VFCF_NETWORK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %107

36:                                               ; preds = %29
  %37 = load %struct.statfs*, %struct.statfs** %7, align 8
  %38 = getelementptr inbounds %struct.statfs, %struct.statfs* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iovec*, %struct.iovec** %5, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i64 1
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.statfs*, %struct.statfs** %7, align 8
  %44 = getelementptr inbounds %struct.statfs, %struct.statfs* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @strlen(i32 %45)
  %47 = getelementptr i8, i8* %46, i64 1
  %48 = load %struct.iovec*, %struct.iovec** %5, align 8
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i64 1
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.statfs*, %struct.statfs** %7, align 8
  %52 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iovec*, %struct.iovec** %5, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i64 3
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.statfs*, %struct.statfs** %7, align 8
  %58 = getelementptr inbounds %struct.statfs, %struct.statfs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @strlen(i32 %59)
  %61 = getelementptr i8, i8* %60, i64 1
  %62 = load %struct.iovec*, %struct.iovec** %5, align 8
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i64 3
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.statfs*, %struct.statfs** %7, align 8
  %66 = getelementptr inbounds %struct.statfs, %struct.statfs* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iovec*, %struct.iovec** %5, align 8
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i64 5
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.statfs*, %struct.statfs** %7, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @strlen(i32 %73)
  %75 = getelementptr i8, i8* %74, i64 1
  %76 = load %struct.iovec*, %struct.iovec** %5, align 8
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i64 5
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  %81 = load %struct.iovec*, %struct.iovec** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.statfs*, %struct.statfs** %7, align 8
  %84 = getelementptr inbounds %struct.statfs, %struct.statfs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @nmount(%struct.iovec* %81, i32 %82, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %36
  %89 = load i64, i64* @errno, align 8
  %90 = load i64, i64* @ENOENT, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @ENOTSUP, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @EXDEV, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32, i32* @LOG_ERR, align 4
  %102 = load %struct.statfs*, %struct.statfs** %7, align 8
  %103 = getelementptr inbounds %struct.statfs, %struct.statfs* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 (i32, i8*, i32, ...) @syslog(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %15, %28, %35, %100, %96, %92, %88, %36
  ret void
}

declare dso_local i64 @getvfsbyname(i32, %struct.xvfsconf*) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i8* @strlen(i32) #1

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

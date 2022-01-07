; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_getline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cjobinfo = type { %struct.cjprivate* }
%struct.cjprivate = type { i8*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, %struct.cjprivate* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"in ctl_getline(%p): invalid cjinf (cpriv %p)\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: ctl_getline error fgets(%s): %s\00", align 1
@ctl_dbgfile = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cjobinfo*)* @ctl_getline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ctl_getline(%struct.cjobinfo* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cjobinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cjprivate*, align 8
  store %struct.cjobinfo* %0, %struct.cjobinfo** %3, align 8
  %7 = load %struct.cjobinfo*, %struct.cjobinfo** %3, align 8
  %8 = icmp eq %struct.cjobinfo* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.cjobinfo*, %struct.cjobinfo** %3, align 8
  %12 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %11, i32 0, i32 0
  %13 = load %struct.cjprivate*, %struct.cjprivate** %12, align 8
  store %struct.cjprivate* %13, %struct.cjprivate** %6, align 8
  %14 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %15 = icmp eq %struct.cjprivate* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %18 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %19 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.cjprivate*, %struct.cjprivate** %20, align 8
  %22 = icmp ne %struct.cjprivate* %17, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16, %10
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load %struct.cjobinfo*, %struct.cjobinfo** %3, align 8
  %26 = bitcast %struct.cjobinfo* %25 to i8*
  %27 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %28 = bitcast %struct.cjprivate* %27 to i8*
  %29 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %28)
  store i8* null, i8** %2, align 8
  br label %71

30:                                               ; preds = %16
  store i64 0, i64* @errno, align 8
  %31 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %32 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %35 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %38 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @fgets(i8* %33, i32 %36, i32 %39)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %30
  %44 = load i64, i64* @errno, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %49 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.cjprivate*, %struct.cjprivate** %6, align 8
  %55 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i64, i64* @errno, align 8
  %59 = call i32 @strerror(i64 %58)
  %60 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %57, i32 %59)
  br label %61

61:                                               ; preds = %46, %43
  store i8* null, i8** %2, align 8
  br label %71

62:                                               ; preds = %30
  %63 = load i8*, i8** %4, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 10)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** %2, align 8
  br label %71

71:                                               ; preds = %69, %61, %23, %9
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

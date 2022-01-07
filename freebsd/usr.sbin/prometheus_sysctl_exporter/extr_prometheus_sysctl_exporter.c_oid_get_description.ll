; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oid_get_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oid_get_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid = type { i32, i32 }
%struct.oiddescription = type { i8* }

@CTL_MAXNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"sysctl(oiddescr)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oid*, %struct.oiddescription*)* @oid_get_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oid_get_description(%struct.oid* %0, %struct.oiddescription* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oid*, align 8
  %5 = alloca %struct.oiddescription*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.oid* %0, %struct.oid** %4, align 8
  store %struct.oiddescription* %1, %struct.oiddescription** %5, align 8
  %11 = load i32, i32* @CTL_MAXNAME, align 4
  %12 = add nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 0, i32* %16, align 16
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 5, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %15, i64 2
  %19 = load %struct.oid*, %struct.oid** %4, align 8
  %20 = getelementptr inbounds %struct.oid, %struct.oid* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.oid*, %struct.oid** %4, align 8
  %23 = getelementptr inbounds %struct.oid, %struct.oid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memcpy(i32* %18, i32 %21, i32 %27)
  store i64 8, i64* %9, align 8
  %29 = load %struct.oid*, %struct.oid** %4, align 8
  %30 = getelementptr inbounds %struct.oid, %struct.oid* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 2, %31
  %33 = load %struct.oiddescription*, %struct.oiddescription** %5, align 8
  %34 = getelementptr inbounds %struct.oiddescription, %struct.oiddescription* %33, i32 0, i32 0
  %35 = call i64 @sysctl(i32* %15, i32 %32, i8** %34, i64* %9, i32 0, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

42:                                               ; preds = %37
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %2
  %45 = load %struct.oiddescription*, %struct.oiddescription** %5, align 8
  %46 = getelementptr inbounds %struct.oiddescription, %struct.oiddescription* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 10)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %44
  %54 = load %struct.oiddescription*, %struct.oiddescription** %5, align 8
  %55 = getelementptr inbounds %struct.oiddescription, %struct.oiddescription* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %53, %41
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i64 @sysctl(i32*, i32, i8**, i64*, i32, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

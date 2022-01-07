; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_dmi_found.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_os_freebsd.c_dmi_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"smbios.planar.maker\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"smbios.planar.product\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_id*)* @dmi_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmi_found(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %2, align 8
  %8 = call i8* @kern_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  %9 = call i8* @kern_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %64, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %13 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @nitems(%struct.TYPE_2__* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %10
  %18 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %19 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %62 [
    i32 130, label %27
    i32 128, label %28
    i32 131, label %28
    i32 129, label %45
    i32 132, label %45
  ]

27:                                               ; preds = %17
  br label %63

28:                                               ; preds = %17, %17
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %34 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i8* %32, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %63

44:                                               ; preds = %31, %28
  store i32 0, i32* %7, align 4
  br label %68

45:                                               ; preds = %17, %17
  %46 = load i8*, i8** %4, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %51 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcmp(i8* %49, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %63

61:                                               ; preds = %48, %45
  store i32 0, i32* %7, align 4
  br label %68

62:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %68

63:                                               ; preds = %60, %43, %27
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %10

67:                                               ; preds = %10
  br label %68

68:                                               ; preds = %67, %62, %61, %44
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @freeenv(i8* %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @freeenv(i8* %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_2__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

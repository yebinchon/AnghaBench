; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_device_collector.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_device_collector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_dev = type { i8*, i8*, i32, i32, i64, i64 }
%struct.device_entry = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"%llu/%llu name='%s' desc='%s' drivername='%s' location='%s'\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ANALYZING dev %s at %s\00", align 1
@HR_DEVICE_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"SKIPPED unknown device at location '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devinfo_dev*, i8*)* @device_collector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_collector(%struct.devinfo_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.devinfo_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_entry*, align 8
  store %struct.devinfo_dev* %0, %struct.devinfo_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %7 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %10 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %13 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %16 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %19 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %22 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @HRDBG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %11, i8* %14, i32 %17, i32 %20, i8* %23)
  %25 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %26 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %34 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %32, %2
  %41 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %42 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %45 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @HRDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %46)
  %48 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %49 = call %struct.device_entry* @device_find_by_dev(%struct.devinfo_dev* %48)
  store %struct.device_entry* %49, %struct.device_entry** %5, align 8
  %50 = icmp ne %struct.device_entry* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load i32, i32* @HR_DEVICE_FOUND, align 4
  %53 = load %struct.device_entry*, %struct.device_entry** %5, align 8
  %54 = getelementptr inbounds %struct.device_entry, %struct.device_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %58 = call i64 @device_get_status(%struct.devinfo_dev* %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.device_entry*, %struct.device_entry** %5, align 8
  %61 = getelementptr inbounds %struct.device_entry, %struct.device_entry* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %82

62:                                               ; preds = %40
  %63 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %64 = call %struct.device_entry* @device_entry_create_devinfo(%struct.devinfo_dev* %63)
  store %struct.device_entry* %64, %struct.device_entry** %5, align 8
  %65 = icmp ne %struct.device_entry* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %68 = load %struct.device_entry*, %struct.device_entry** %5, align 8
  %69 = getelementptr inbounds %struct.device_entry, %struct.device_entry* %68, i32 0, i32 2
  %70 = call i32 @device_get_type(%struct.devinfo_dev* %67, i32* %69)
  %71 = load i32, i32* @HR_DEVICE_FOUND, align 4
  %72 = load %struct.device_entry*, %struct.device_entry** %5, align 8
  %73 = getelementptr inbounds %struct.device_entry, %struct.device_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %77 = call i64 @device_get_status(%struct.devinfo_dev* %76)
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.device_entry*, %struct.device_entry** %5, align 8
  %80 = getelementptr inbounds %struct.device_entry, %struct.device_entry* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %66, %62
  br label %82

82:                                               ; preds = %81, %51
  br label %88

83:                                               ; preds = %32
  %84 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %85 = getelementptr inbounds %struct.devinfo_dev, %struct.devinfo_dev* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (i8*, ...) @HRDBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %83, %82
  %89 = load %struct.devinfo_dev*, %struct.devinfo_dev** %3, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @devinfo_foreach_device_child(%struct.devinfo_dev* %89, i32 (%struct.devinfo_dev*, i8*)* @device_collector, i8* %90)
  ret i32 %91
}

declare dso_local i32 @HRDBG(i8*, ...) #1

declare dso_local %struct.device_entry* @device_find_by_dev(%struct.devinfo_dev*) #1

declare dso_local i64 @device_get_status(%struct.devinfo_dev*) #1

declare dso_local %struct.device_entry* @device_entry_create_devinfo(%struct.devinfo_dev*) #1

declare dso_local i32 @device_get_type(%struct.devinfo_dev*, i32*) #1

declare dso_local i32 @devinfo_foreach_device_child(%struct.devinfo_dev*, i32 (%struct.devinfo_dev*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

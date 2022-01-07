; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_change_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_change_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_entry = type { i32, i64, i32, i32 }

@noaction = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"\09chmod %o %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09chown %u:%u %s\0A\00", align 1
@CE_NODUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"\09chflags nodump %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"chmod(%s) in change_attrs\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"change_attrs couldn't chmod(%s)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"can't chown %s\00", align 1
@UF_NODUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"can't chflags %s NODUMP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.conf_entry*)* @change_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_attrs(i8* %0, %struct.conf_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.conf_entry*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.conf_entry* %1, %struct.conf_entry** %4, align 8
  %6 = load i64, i64* @noaction, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %10 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12)
  %14 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %15 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %8
  %19 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %20 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %18, %8
  %24 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %25 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %28 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %26, i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %34 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CE_NODUMP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %32
  br label %103

43:                                               ; preds = %2
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %46 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @chmod(i8* %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EPERM, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %43
  %62 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %63 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %68 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %86

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %74 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %77 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @chown(i8* %72, i64 %75, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %71
  br label %86

86:                                               ; preds = %85, %66
  %87 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %88 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CE_NODUMP, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %86
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* @UF_NODUMP, align 4
  %96 = call i32 @chflags(i8* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %42, %102, %86
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @chown(i8*, i64, i32) #1

declare dso_local i32 @chflags(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

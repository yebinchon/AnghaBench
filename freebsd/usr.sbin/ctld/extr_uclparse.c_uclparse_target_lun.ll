; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_target_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_target_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { %struct.lun**, i32 }
%struct.lun = type { i32 }
%struct.TYPE_7__ = type { i64 }

@UCL_INT = common dso_local global i64 0, align 8
@MAX_LUNS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"LU number %ju in target \22%s\22 is too big\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s,lun,%ju\00", align 1
@conf = common dso_local global i32 0, align 4
@UCL_OBJECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"lun section in target \22%s\22 is missing \22number\22 integer property\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [61 x i8] c"lun section in target \22%s\22 is missing \22name\22 string property\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target*, %struct.TYPE_7__*)* @uclparse_target_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_target_lun(%struct.target* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.lun*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.target* %0, %struct.target** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UCL_INT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = call i64 @ucl_object_toint(%struct.TYPE_7__* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MAX_LUNS, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.target*, %struct.target** %4, align 8
  %25 = getelementptr inbounds %struct.target, %struct.target* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i64, ...) @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %26)
  store i32 1, i32* %3, align 4
  br label %118

28:                                               ; preds = %16
  %29 = load %struct.target*, %struct.target** %4, align 8
  %30 = getelementptr inbounds %struct.target, %struct.target* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32)
  %34 = load i32, i32* @conf, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call %struct.lun* @lun_new(i32 %34, i8* %35)
  store %struct.lun* %36, %struct.lun** %6, align 8
  %37 = load %struct.lun*, %struct.lun** %6, align 8
  %38 = icmp eq %struct.lun* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %118

40:                                               ; preds = %28
  %41 = load %struct.lun*, %struct.lun** %6, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @lun_set_scsiname(%struct.lun* %41, i8* %42)
  %44 = load %struct.lun*, %struct.lun** %6, align 8
  %45 = load %struct.target*, %struct.target** %4, align 8
  %46 = getelementptr inbounds %struct.target, %struct.target* %45, i32 0, i32 0
  %47 = load %struct.lun**, %struct.lun*** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.lun*, %struct.lun** %47, i64 %48
  store %struct.lun* %44, %struct.lun** %49, align 8
  store i32 0, i32* %3, align 4
  br label %118

50:                                               ; preds = %2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UCL_OBJECT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = call %struct.TYPE_7__* @ucl_object_find_key(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %9, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = call %struct.TYPE_7__* @ucl_object_find_key(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %10, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = icmp eq %struct.TYPE_7__* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UCL_INT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %56
  %70 = load %struct.target*, %struct.target** %4, align 8
  %71 = getelementptr inbounds %struct.target, %struct.target* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = call i32 (i8*, i64, ...) @log_warnx(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  store i32 1, i32* %3, align 4
  br label %118

75:                                               ; preds = %63
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = call i64 @ucl_object_toint(%struct.TYPE_7__* %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @MAX_LUNS, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.target*, %struct.target** %4, align 8
  %84 = getelementptr inbounds %struct.target, %struct.target* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, i64, ...) @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %82, i32 %85)
  store i32 1, i32* %3, align 4
  br label %118

87:                                               ; preds = %75
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %89 = icmp eq %struct.TYPE_7__* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @UCL_STRING, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90, %87
  %97 = load %struct.target*, %struct.target** %4, align 8
  %98 = getelementptr inbounds %struct.target, %struct.target* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = call i32 (i8*, i64, ...) @log_warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %100)
  store i32 1, i32* %3, align 4
  br label %118

102:                                              ; preds = %90
  %103 = load i32, i32* @conf, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %105 = call i32 @ucl_object_tostring(%struct.TYPE_7__* %104)
  %106 = call %struct.lun* @lun_find(i32 %103, i32 %105)
  store %struct.lun* %106, %struct.lun** %6, align 8
  %107 = load %struct.lun*, %struct.lun** %6, align 8
  %108 = icmp eq %struct.lun* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %118

110:                                              ; preds = %102
  %111 = load %struct.lun*, %struct.lun** %6, align 8
  %112 = load %struct.target*, %struct.target** %4, align 8
  %113 = getelementptr inbounds %struct.target, %struct.target* %112, i32 0, i32 0
  %114 = load %struct.lun**, %struct.lun*** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.lun*, %struct.lun** %114, i64 %115
  store %struct.lun* %111, %struct.lun** %116, align 8
  br label %117

117:                                              ; preds = %110, %50
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %109, %96, %81, %69, %40, %39, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @ucl_object_toint(%struct.TYPE_7__*) #1

declare dso_local i32 @log_warnx(i8*, i64, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i64) #1

declare dso_local %struct.lun* @lun_new(i32, i8*) #1

declare dso_local i32 @lun_set_scsiname(%struct.lun*, i8*) #1

declare dso_local %struct.TYPE_7__* @ucl_object_find_key(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.lun* @lun_find(i32, i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

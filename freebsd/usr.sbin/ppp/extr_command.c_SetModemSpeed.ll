; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_SetModemSpeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_SetModemSpeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i64**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SetModemSpeed: Too many arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"SetModemSpeed: Bad argument \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: Invalid speed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SetModemSpeed: No speed specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @SetModemSpeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetModemSpeed(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %6 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %8, %11
  br i1 %12, label %13, label %108

13:                                               ; preds = %1
  %14 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %15 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %14, i32 0, i32 2
  %16 = load i64**, i64*** %15, align 8
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64*, i64** %16, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %108

25:                                               ; preds = %13
  %26 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %27 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @LogWARN, align 4
  %36 = call i32 (i32, i8*, ...) @log_Printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %112

37:                                               ; preds = %25
  %38 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %39 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %38, i32 0, i32 2
  %40 = load i64**, i64*** %39, align 8
  %41 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %42 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %40, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = call i64 @strcasecmp(i64* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %51 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @physical_SetSync(i32 %54)
  store i32 0, i32* %2, align 4
  br label %112

56:                                               ; preds = %37
  store i8* null, i8** %5, align 8
  %57 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %58 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %57, i32 0, i32 2
  %59 = load i64**, i64*** %58, align 8
  %60 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %61 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64*, i64** %59, i64 %63
  %65 = load i64*, i64** %64, align 8
  %66 = call i64 @strtol(i64* %65, i8** %5, i32 10)
  store i64 %66, i64* %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %56
  %72 = load i64, i64* %4, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71, %56
  %75 = load i32, i32* @LogWARN, align 4
  %76 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %77 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %76, i32 0, i32 2
  %78 = load i64**, i64*** %77, align 8
  %79 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %80 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64*, i64** %78, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = call i32 (i32, i8*, ...) @log_Printf(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64* %84)
  store i32 -1, i32* %2, align 4
  br label %112

86:                                               ; preds = %71
  %87 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %88 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %4, align 8
  %93 = call i64 @physical_SetSpeed(i32 %91, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %112

96:                                               ; preds = %86
  %97 = load i32, i32* @LogWARN, align 4
  %98 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %99 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %98, i32 0, i32 2
  %100 = load i64**, i64*** %99, align 8
  %101 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %102 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64*, i64** %100, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 (i32, i8*, ...) @log_Printf(i32 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %106)
  br label %111

108:                                              ; preds = %13, %1
  %109 = load i32, i32* @LogWARN, align 4
  %110 = call i32 (i32, i8*, ...) @log_Printf(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %96
  store i32 -1, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %95, %74, %49, %34
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i64*, i8*) #1

declare dso_local i32 @physical_SetSync(i32) #1

declare dso_local i64 @strtol(i64*, i8**, i32) #1

declare dso_local i64 @physical_SetSpeed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

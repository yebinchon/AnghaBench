; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_doUpdateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_doUpdateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.physical = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: fdset(r) %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: fdset(e) %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: fdset(w) %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_doUpdateSet(%struct.fdescriptor* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.fdescriptor*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.physical*, align 8
  %14 = alloca i32, align 4
  store %struct.fdescriptor* %0, %struct.fdescriptor** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.fdescriptor*, %struct.fdescriptor** %7, align 8
  %16 = call %struct.physical* @descriptor2physical(%struct.fdescriptor* %15)
  store %struct.physical* %16, %struct.physical** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.physical*, %struct.physical** %13, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %112

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.physical*, %struct.physical** %13, align 8
  %26 = getelementptr inbounds %struct.physical, %struct.physical* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @FD_SET(i32 %27, i32* %28)
  %30 = load i32, i32* @LogTIMER, align 4
  %31 = load %struct.physical*, %struct.physical** %13, align 8
  %32 = getelementptr inbounds %struct.physical, %struct.physical* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.physical*, %struct.physical** %13, align 8
  %36 = getelementptr inbounds %struct.physical, %struct.physical* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @log_Printf(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %24, %21
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.physical*, %struct.physical** %13, align 8
  %46 = getelementptr inbounds %struct.physical, %struct.physical* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @FD_SET(i32 %47, i32* %48)
  %50 = load i32, i32* @LogTIMER, align 4
  %51 = load %struct.physical*, %struct.physical** %13, align 8
  %52 = getelementptr inbounds %struct.physical, %struct.physical* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.physical*, %struct.physical** %13, align 8
  %56 = getelementptr inbounds %struct.physical, %struct.physical* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @log_Printf(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %44, %41
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load %struct.physical*, %struct.physical** %13, align 8
  %69 = getelementptr inbounds %struct.physical, %struct.physical* %68, i32 0, i32 1
  %70 = call i64 @link_QueueLen(%struct.TYPE_2__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.physical*, %struct.physical** %13, align 8
  %74 = getelementptr inbounds %struct.physical, %struct.physical* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72, %67, %64
  %78 = load %struct.physical*, %struct.physical** %13, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @FD_SET(i32 %80, i32* %81)
  %83 = load i32, i32* @LogTIMER, align 4
  %84 = load %struct.physical*, %struct.physical** %13, align 8
  %85 = getelementptr inbounds %struct.physical, %struct.physical* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.physical*, %struct.physical** %13, align 8
  %89 = getelementptr inbounds %struct.physical, %struct.physical* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @log_Printf(i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %77, %72, %61
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.physical*, %struct.physical** %13, align 8
  %101 = getelementptr inbounds %struct.physical, %struct.physical* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.physical*, %struct.physical** %13, align 8
  %107 = getelementptr inbounds %struct.physical, %struct.physical* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %97, %94
  br label %112

112:                                              ; preds = %111, %6
  %113 = load i32, i32* %14, align 4
  ret i32 %113
}

declare dso_local %struct.physical* @descriptor2physical(%struct.fdescriptor*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i64 @link_QueueLen(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

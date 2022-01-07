; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_RemoveFromSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_RemoveFromSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: fdunset(r) %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: fdunset(e) %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: fdunset(w) %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_RemoveFromSet(%struct.physical* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.physical*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.physical*, %struct.physical** %6, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = load %struct.physical*, %struct.physical** %6, align 8
  %17 = getelementptr inbounds %struct.physical, %struct.physical* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.physical*, i32*, i32*, i32*)**
  %21 = load i32 (%struct.physical*, i32*, i32*, i32*)*, i32 (%struct.physical*, i32*, i32*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.physical*, i32*, i32*, i32*)* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.physical*, %struct.physical** %6, align 8
  %25 = getelementptr inbounds %struct.physical, %struct.physical* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.physical*, i32*, i32*, i32*)**
  %29 = load i32 (%struct.physical*, i32*, i32*, i32*)*, i32 (%struct.physical*, i32*, i32*, i32*)** %28, align 8
  %30 = load %struct.physical*, %struct.physical** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 %29(%struct.physical* %30, i32* %31, i32* %32, i32* %33)
  store i32 %34, i32* %5, align 4
  br label %124

35:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  %36 = load %struct.physical*, %struct.physical** %6, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %122

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load %struct.physical*, %struct.physical** %6, align 8
  %45 = getelementptr inbounds %struct.physical, %struct.physical* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @FD_ISSET(i64 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.physical*, %struct.physical** %6, align 8
  %52 = getelementptr inbounds %struct.physical, %struct.physical* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @FD_CLR(i64 %53, i32* %54)
  %56 = load i32, i32* @LogTIMER, align 4
  %57 = load %struct.physical*, %struct.physical** %6, align 8
  %58 = getelementptr inbounds %struct.physical, %struct.physical* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.physical*, %struct.physical** %6, align 8
  %62 = getelementptr inbounds %struct.physical, %struct.physical* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @log_Printf(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %50, %43, %40
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load %struct.physical*, %struct.physical** %6, align 8
  %72 = getelementptr inbounds %struct.physical, %struct.physical* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @FD_ISSET(i64 %73, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %70
  %78 = load %struct.physical*, %struct.physical** %6, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @FD_CLR(i64 %80, i32* %81)
  %83 = load i32, i32* @LogTIMER, align 4
  %84 = load %struct.physical*, %struct.physical** %6, align 8
  %85 = getelementptr inbounds %struct.physical, %struct.physical* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.physical*, %struct.physical** %6, align 8
  %89 = getelementptr inbounds %struct.physical, %struct.physical* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @log_Printf(i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %87, i64 %90)
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %77, %70, %67
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %94
  %98 = load %struct.physical*, %struct.physical** %6, align 8
  %99 = getelementptr inbounds %struct.physical, %struct.physical* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i64 @FD_ISSET(i64 %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %97
  %105 = load %struct.physical*, %struct.physical** %6, align 8
  %106 = getelementptr inbounds %struct.physical, %struct.physical* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @FD_CLR(i64 %107, i32* %108)
  %110 = load i32, i32* @LogTIMER, align 4
  %111 = load %struct.physical*, %struct.physical** %6, align 8
  %112 = getelementptr inbounds %struct.physical, %struct.physical* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.physical*, %struct.physical** %6, align 8
  %116 = getelementptr inbounds %struct.physical, %struct.physical* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @log_Printf(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %114, i64 %117)
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %104, %97, %94
  br label %122

122:                                              ; preds = %121, %35
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %23
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @FD_CLR(i64, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

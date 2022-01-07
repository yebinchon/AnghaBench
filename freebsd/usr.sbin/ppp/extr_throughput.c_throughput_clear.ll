; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, i64 }
%struct.TYPE_4__ = type { i8*, i64* }
%struct.TYPE_3__ = type { i8*, i64* }
%struct.prompt = type { i32 }

@THROUGHPUT_OVERALL = common dso_local global i32 0, align 4
@THROUGHPUT_CURRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"overall cleared (was %6llu bytes/sec)\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"current cleared (was %6llu bytes/sec in, %6llu bytes/sec out)\0A\00", align 1
@THROUGHPUT_PEAK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"peak    cleared (was %6llu bytes/sec on %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throughput_clear(%struct.pppThroughput* %0, i32 %1, %struct.prompt* %2) #0 {
  %4 = alloca %struct.pppThroughput*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.prompt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.pppThroughput* %0, %struct.pppThroughput** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.prompt* %2, %struct.prompt** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @THROUGHPUT_OVERALL, align 4
  %13 = load i32, i32* @THROUGHPUT_CURRENT, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %21 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %26 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %33 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %44 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %43, i32 0, i32 11
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @THROUGHPUT_OVERALL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %52 = call i32 @throughput_uptime(%struct.pppThroughput* %51)
  store i32 %52, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load %struct.prompt*, %struct.prompt** %6, align 8
  %57 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %58 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %61 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %59, %62
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %63, %64
  %66 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %68 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %67, i32 0, i32 4
  store i32 0, i32* %68, align 8
  %69 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %70 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %69, i32 0, i32 3
  store i32 0, i32* %70, align 4
  %71 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %72 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %74 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %76 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %75, i32 0, i32 10
  store i64 0, i64* %76, align 8
  %77 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %78 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %77, i32 0, i32 9
  %79 = call i32 @time(i32* %78)
  br label %80

80:                                               ; preds = %55, %45
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @THROUGHPUT_CURRENT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load %struct.prompt*, %struct.prompt** %6, align 8
  %87 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %88 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %92 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %86, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %90, i8* %94)
  %96 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %97 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i8* null, i8** %98, align 8
  %99 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %100 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i8* null, i8** %101, align 8
  br label %102

102:                                              ; preds = %85, %80
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @THROUGHPUT_PEAK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %102
  %108 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %109 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %108, i32 0, i32 6
  %110 = call i8* @ctime(i32* %109)
  store i8* %110, i8** %9, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8* %115, i8** %10, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ugt i8* %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %107
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 -1
  store i8* %121, i8** %10, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 10
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i8*, i8** %10, align 8
  store i8 0, i8* %126, align 1
  br label %127

127:                                              ; preds = %125, %119, %107
  %128 = load %struct.prompt*, %struct.prompt** %6, align 8
  %129 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %130 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %129, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %131, i8* %132)
  %134 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %135 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %134, i32 0, i32 5
  store i8* null, i8** %135, align 8
  %136 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %137 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %136, i32 0, i32 6
  %138 = call i32 @time(i32* %137)
  br label %139

139:                                              ; preds = %127, %102
  ret void
}

declare dso_local i32 @throughput_uptime(%struct.pppThroughput*) #1

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

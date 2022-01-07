; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_AddUrgentPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_AddUrgentPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_range = type { i32, i32, i64* }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ncp_AddUrgentPort: realloc: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%u: Port already set to urgent\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_AddUrgentPort(%struct.port_range* %0, i64 %1) #0 {
  %3 = alloca %struct.port_range*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.port_range* %0, %struct.port_range** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.port_range*, %struct.port_range** %3, align 8
  %8 = getelementptr inbounds %struct.port_range, %struct.port_range* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.port_range*, %struct.port_range** %3, align 8
  %11 = getelementptr inbounds %struct.port_range, %struct.port_range* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load %struct.port_range*, %struct.port_range** %3, align 8
  %16 = getelementptr inbounds %struct.port_range, %struct.port_range* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 10
  store i32 %18, i32* %16, align 4
  %19 = load %struct.port_range*, %struct.port_range** %3, align 8
  %20 = getelementptr inbounds %struct.port_range, %struct.port_range* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.port_range*, %struct.port_range** %3, align 8
  %23 = getelementptr inbounds %struct.port_range, %struct.port_range* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @realloc(i64* %21, i32 %27)
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %5, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %14
  %33 = load i32, i32* @LogERROR, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i64 @strerror(i32 %34)
  %36 = call i32 @log_Printf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.port_range*, %struct.port_range** %3, align 8
  %38 = getelementptr inbounds %struct.port_range, %struct.port_range* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 10
  store i32 %40, i32* %38, align 4
  br label %132

41:                                               ; preds = %14
  %42 = load i64*, i64** %5, align 8
  %43 = load %struct.port_range*, %struct.port_range** %3, align 8
  %44 = getelementptr inbounds %struct.port_range, %struct.port_range* %43, i32 0, i32 2
  store i64* %42, i64** %44, align 8
  br label %45

45:                                               ; preds = %41, %2
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %112, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.port_range*, %struct.port_range** %3, align 8
  %49 = getelementptr inbounds %struct.port_range, %struct.port_range* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %46
  %53 = load %struct.port_range*, %struct.port_range** %3, align 8
  %54 = getelementptr inbounds %struct.port_range, %struct.port_range* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @LogWARN, align 4
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @log_Printf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  br label %115

66:                                               ; preds = %52
  %67 = load %struct.port_range*, %struct.port_range** %3, align 8
  %68 = getelementptr inbounds %struct.port_range, %struct.port_range* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %66
  %77 = load %struct.port_range*, %struct.port_range** %3, align 8
  %78 = getelementptr inbounds %struct.port_range, %struct.port_range* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load %struct.port_range*, %struct.port_range** %3, align 8
  %85 = getelementptr inbounds %struct.port_range, %struct.port_range* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load %struct.port_range*, %struct.port_range** %3, align 8
  %91 = getelementptr inbounds %struct.port_range, %struct.port_range* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub i32 %92, %93
  %95 = zext i32 %94 to i64
  %96 = mul i64 %95, 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memmove(i64* %83, i64* %89, i32 %97)
  %99 = load i64, i64* %4, align 8
  %100 = load %struct.port_range*, %struct.port_range** %3, align 8
  %101 = getelementptr inbounds %struct.port_range, %struct.port_range* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %99, i64* %105, align 8
  %106 = load %struct.port_range*, %struct.port_range** %3, align 8
  %107 = getelementptr inbounds %struct.port_range, %struct.port_range* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %115

110:                                              ; preds = %66
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %6, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %46

115:                                              ; preds = %76, %62, %46
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.port_range*, %struct.port_range** %3, align 8
  %118 = getelementptr inbounds %struct.port_range, %struct.port_range* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.port_range*, %struct.port_range** %3, align 8
  %124 = getelementptr inbounds %struct.port_range, %struct.port_range* %123, i32 0, i32 2
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.port_range*, %struct.port_range** %3, align 8
  %127 = getelementptr inbounds %struct.port_range, %struct.port_range* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i64, i64* %125, i64 %130
  store i64 %122, i64* %131, align 8
  br label %132

132:                                              ; preds = %32, %121, %115
  ret void
}

declare dso_local i64 @realloc(i64*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i64) #1

declare dso_local i64 @strerror(i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

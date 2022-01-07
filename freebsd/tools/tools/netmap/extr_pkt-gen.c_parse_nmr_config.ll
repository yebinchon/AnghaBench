; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_parse_nmr_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_parse_nmr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ignored config: %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"txr %d txd %d rxr %d rxd %d\00", align 1
@NM_OPEN_RING_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_nmr_config(i8* %0, %struct.nmreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nmreq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.nmreq* %1, %struct.nmreq** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %105

17:                                               ; preds = %12
  %18 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %19 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %21 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %23 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %22, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %25 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @strtok(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %61, %17
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %57 [
    i32 0, label %37
    i32 1, label %43
    i32 2, label %47
    i32 3, label %53
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %40 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %42 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 4
  br label %60

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %46 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %60

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %50 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %52 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %60

53:                                               ; preds = %33
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %56 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %60

57:                                               ; preds = %33
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %53, %47, %43, %37
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %64, i8** %7, align 8
  br label %30

65:                                               ; preds = %30
  %66 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %67 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %70 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %73 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %76 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i32 %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %82 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %65
  %86 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %87 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %92 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.nmreq*, %struct.nmreq** %5, align 8
  %97 = getelementptr inbounds %struct.nmreq, %struct.nmreq* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95, %90, %85, %65
  %101 = load i32, i32* @NM_OPEN_RING_CFG, align 4
  br label %103

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %16
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @D(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

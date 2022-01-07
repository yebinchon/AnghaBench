; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_dointr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_dointr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kd = common dso_local global i32* null, align 8
@X_SINTRNAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@namelist = common dso_local global %struct.TYPE_2__* null, align 8
@X_NINTRCNT = common dso_local global i64 0, align 8
@X_INTRNAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"reallocf()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hw.intrnames\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"{T:/%-*s} {T:/%20s} {T:/%10s}\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"interrupt-statistics\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"calloc()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dointr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dointr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64* null, i64** %6, align 8
  %17 = call i64 (...) @getuptime()
  store i64 %17, i64* %11, align 8
  %18 = load i32*, i32** @kd, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %2
  %21 = load i32, i32* @X_SINTRNAMES, align 4
  %22 = call i32 (i32, ...) @kread(i32 %21, i64* %13, i64 8)
  %23 = load i64, i64* %13, align 8
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @namelist, align 8
  %30 = load i64, i64* @X_NINTRCNT, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @X_INTRNAMES, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 (i32, ...) @kread(i32 %36, i8* %37, i64 %38)
  br label %47

40:                                               ; preds = %28
  %41 = load i32, i32* @X_INTRNAMES, align 4
  %42 = call i32 (i32, ...) @kread(i32 %41, i64* %15, i64 8)
  %43 = load i64, i64* %15, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @kreadptr(i64 %43, i8* %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %35
  br label %66

48:                                               ; preds = %2
  store i8* null, i8** %8, align 8
  store i64 1024, i64* %13, align 8
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i8* @reallocf(i8* %50, i64 %51)
  store i8* %52, i8** %8, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @mysysctl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %57, i64* %13)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %13, align 8
  %64 = mul i64 %63, 2
  store i64 %64, i64* %13, align 8
  br label %49

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %7, align 8
  %68 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %84, %66
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i64, i64* %12, align 8
  store i64 %83, i64* %14, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = add nsw i32 %86, 1
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  br label %70

91:                                               ; preds = %70
  %92 = load i64, i64* %14, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @xo_emit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 @xo_open_container(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i64, i64* %11, align 8
  %97 = sdiv i64 %96, 1000000
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %91, %129
  %99 = call i32 @read_intrcnts(i64** %5)
  store i32 %99, i32* %16, align 4
  %100 = load i64*, i64** %6, align 8
  %101 = icmp eq i64* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = call i64* @calloc(i32 %103, i32 8)
  store i64* %104, i64** %6, align 8
  %105 = load i64*, i64** %6, align 8
  %106 = icmp eq i64* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  br label %110

110:                                              ; preds = %109, %98
  %111 = load i64*, i64** %5, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @print_intrcnts(i64* %111, i64* %112, i8* %113, i32 %114, i64 %115, i64 %116)
  %118 = call i32 (...) @xo_flush()
  %119 = load i64*, i64** %6, align 8
  %120 = call i32 @free(i64* %119)
  %121 = load i64*, i64** %5, align 8
  store i64* %121, i64** %6, align 8
  %122 = load i32, i32* %4, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %110
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %4, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %139

129:                                              ; preds = %124, %110
  %130 = load i32, i32* %3, align 4
  %131 = mul i32 %130, 1000
  %132 = call i32 @usleep(i32 %131)
  %133 = load i64, i64* %11, align 8
  store i64 %133, i64* %10, align 8
  %134 = call i64 (...) @getuptime()
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %10, align 8
  %137 = sub nsw i64 %135, %136
  %138 = sdiv i64 %137, 1000000
  store i64 %138, i64* %9, align 8
  br label %98

139:                                              ; preds = %128
  %140 = call i32 @xo_close_container(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i64 @getuptime(...) #1

declare dso_local i32 @kread(i32, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @kreadptr(i64, i8*, i64) #1

declare dso_local i8* @reallocf(i8*, i64) #1

declare dso_local i64 @mysysctl(i8*, i8*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xo_emit(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @read_intrcnts(i64**) #1

declare dso_local i64* @calloc(i32, i32) #1

declare dso_local i32 @print_intrcnts(i64*, i64*, i8*, i32, i64, i64) #1

declare dso_local i32 @xo_flush(...) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

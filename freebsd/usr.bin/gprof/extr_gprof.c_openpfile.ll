; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_openpfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_openpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmonhdr = type { i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@s_highpc = common dso_local global i64 0, align 8
@gmonhdr = common dso_local global %struct.gmonhdr zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: incompatible with first gmon file\00", align 1
@GMONVERSION = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"%s: profile clock rate (%d) %s (%ld) in first gmon file\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"incompatible with clock rate\00", align 1
@histcounter_type = common dso_local global i32 0, align 4
@histcounter_size = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@s_lowpc = common dso_local global i64 0, align 8
@HISTORICAL_SCALE_2 = common dso_local global i64 0, align 8
@lowpc = common dso_local global i64 0, align 8
@highpc = common dso_local global i64 0, align 8
@sampbytes = common dso_local global i32 0, align 4
@nsamples = common dso_local global i32 0, align 4
@SAMPLEDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @openpfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gmonhdr, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @fread(%struct.gmonhdr* %3, i32 40, i32 1, i32* %14)
  %16 = load i64, i64* @s_highpc, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gmonhdr, %struct.gmonhdr* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 0), align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.gmonhdr, %struct.gmonhdr* %3, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 1), align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.gmonhdr, %struct.gmonhdr* %3, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 2), align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %23, %18
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %28, %13
  %37 = bitcast %struct.gmonhdr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.gmonhdr* @gmonhdr to i8*), i8* align 8 %37, i64 40, i1 false)
  %38 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 3), align 8
  %39 = load i64, i64* @GMONVERSION, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 4), align 8
  store i32 %42, i32* %6, align 4
  store i32 40, i32* %5, align 4
  br label %49

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i32 @fseek(i32* %44, i32 4, i32 %45)
  store i32 4, i32* %5, align 4
  %47 = call i32 (...) @hertz()
  store i32 %47, i32* %6, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 4), align 8
  %48 = load i64, i64* @GMONVERSION, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 3), align 8
  br label %49

49:                                               ; preds = %43, %41
  %50 = load i32, i32* @hz, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @hz, align 4
  br label %64

54:                                               ; preds = %49
  %55 = load i32, i32* @hz, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @hz, align 4
  %62 = call i32 (i32, i8*, i8*, ...) @errx(i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 5), align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 16, i32* @histcounter_type, align 4
  store i32 2, i32* @histcounter_size, align 4
  br label %74

68:                                               ; preds = %64
  %69 = load i32, i32* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 5), align 4
  store i32 %69, i32* @histcounter_type, align 4
  %70 = load i32, i32* @histcounter_type, align 4
  %71 = call i32 @abs(i32 %70) #4
  %72 = load i32, i32* @CHAR_BIT, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* @histcounter_size, align 4
  br label %74

74:                                               ; preds = %68, %67
  %75 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 0), align 8
  store i64 %75, i64* @s_lowpc, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 1), align 8
  store i64 %76, i64* @s_highpc, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 0), align 8
  %78 = load i64, i64* @HISTORICAL_SCALE_2, align 8
  %79 = udiv i64 %77, %78
  store i64 %79, i64* @lowpc, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 1), align 8
  %81 = load i64, i64* @HISTORICAL_SCALE_2, align 8
  %82 = udiv i64 %80, %81
  store i64 %82, i64* @highpc, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.gmonhdr, %struct.gmonhdr* @gmonhdr, i32 0, i32 2), align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* @sampbytes, align 4
  %88 = load i32, i32* @sampbytes, align 4
  %89 = load i32, i32* @histcounter_size, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* @nsamples, align 4
  %91 = load i32*, i32** %4, align 8
  ret i32* %91
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @fread(%struct.gmonhdr*, i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @hertz(...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

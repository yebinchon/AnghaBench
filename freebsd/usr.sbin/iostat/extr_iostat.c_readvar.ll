; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iostat/extr_iostat.c_readvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iostat/extr_iostat.c_readvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@namelist = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"kvm_read(%s): %s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"kvm_read(%s): expected %zu bytes, got %zd bytes\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sysctl(%s...) failed\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"sysctl(%s...): expected %lu, got %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i64)* @readvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readvar(i32* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %56

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @namelist, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i64 @kvm_read(i32* %17, i32 %23, i8* %24, i64 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @namelist, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @kvm_geterr(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = call i32 (i8*, i8*, i64, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %35, i64 %38)
  store i32 1, i32* %6, align 4
  br label %76

40:                                               ; preds = %16
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @namelist, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 (i8*, i8*, i64, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %50, i64 %51, i64 %52)
  store i32 1, i32* %6, align 4
  br label %76

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  br label %75

56:                                               ; preds = %5
  %57 = load i64, i64* %11, align 8
  store i64 %57, i64* %13, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @sysctlbyname(i8* %58, i8* %59, i64* %13, i32* null, i32 0)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  store i32 1, i32* %6, align 4
  br label %76

65:                                               ; preds = %56
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 (i8*, i8*, i64, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %70, i64 %71, i64 %72)
  store i32 1, i32* %6, align 4
  br label %76

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %55
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %69, %62, %44, %29
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @kvm_read(i32*, i32, i8*, i64) #1

declare dso_local i32 @warnx(i8*, i8*, i64, ...) #1

declare dso_local i32 @kvm_geterr(i32*) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

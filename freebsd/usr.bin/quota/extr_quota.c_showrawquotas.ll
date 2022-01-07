; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showrawquotas.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showrawquotas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Raw %s quota information for id %lu on %s\0A\00", align 1
@USRQUOTA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"block hard limit:     %ju\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"block soft limit:     %ju\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"current block count:  %ju\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"i-node hard limit:    %ju\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"i-node soft limit:    %ju\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"current i-node count: %ju\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"block grace time:     %jd\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"i-node grace time:    %jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.quotause*)* @showrawquotas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showrawquotas(i32 %0, i32 %1, %struct.quotause* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.quotause*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.quotause* %2, %struct.quotause** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @USRQUOTA, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.quotause*, %struct.quotause** %6, align 8
  %15 = getelementptr inbounds %struct.quotause, %struct.quotause* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i32 %16)
  %18 = load %struct.quotause*, %struct.quotause** %6, align 8
  %19 = getelementptr inbounds %struct.quotause, %struct.quotause* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load %struct.quotause*, %struct.quotause** %6, align 8
  %25 = getelementptr inbounds %struct.quotause, %struct.quotause* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load %struct.quotause*, %struct.quotause** %6, align 8
  %31 = getelementptr inbounds %struct.quotause, %struct.quotause* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.quotause*, %struct.quotause** %6, align 8
  %37 = getelementptr inbounds %struct.quotause, %struct.quotause* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.quotause*, %struct.quotause** %6, align 8
  %43 = getelementptr inbounds %struct.quotause, %struct.quotause* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %46)
  %48 = load %struct.quotause*, %struct.quotause** %6, align 8
  %49 = getelementptr inbounds %struct.quotause, %struct.quotause* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = load %struct.quotause*, %struct.quotause** %6, align 8
  %55 = getelementptr inbounds %struct.quotause, %struct.quotause* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  %60 = load %struct.quotause*, %struct.quotause** %6, align 8
  %61 = getelementptr inbounds %struct.quotause, %struct.quotause* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %3
  %66 = load %struct.quotause*, %struct.quotause** %6, align 8
  %67 = getelementptr inbounds %struct.quotause, %struct.quotause* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %7, align 8
  %70 = call i8* @ctime(i64* %7)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %70)
  br label %74

72:                                               ; preds = %3
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %65
  %75 = load %struct.quotause*, %struct.quotause** %6, align 8
  %76 = getelementptr inbounds %struct.quotause, %struct.quotause* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %79)
  %81 = load %struct.quotause*, %struct.quotause** %6, align 8
  %82 = getelementptr inbounds %struct.quotause, %struct.quotause* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %74
  %87 = load %struct.quotause*, %struct.quotause** %6, align 8
  %88 = getelementptr inbounds %struct.quotause, %struct.quotause* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %7, align 8
  %91 = call i8* @ctime(i64* %7)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %91)
  br label %95

93:                                               ; preds = %74
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ctime(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

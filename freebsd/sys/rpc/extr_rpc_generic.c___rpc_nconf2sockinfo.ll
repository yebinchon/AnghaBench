; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c___rpc_nconf2sockinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_rpc_generic.c___rpc_nconf2sockinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.netconfig = type { i8*, i64 }
%struct.__rpc_sockinfo = type { i32, i32, i32, i32 }

@na_cvt = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig* %0, %struct.__rpc_sockinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netconfig*, align 8
  %5 = alloca %struct.__rpc_sockinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.netconfig* %0, %struct.netconfig** %4, align 8
  store %struct.__rpc_sockinfo* %1, %struct.__rpc_sockinfo** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %75, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 2
  br i1 %10, label %11, label %78

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.netconfig*, %struct.netconfig** %4, align 8
  %19 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %17, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %11
  %24 = load %struct.netconfig*, %struct.netconfig** %4, align 8
  %25 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %23
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %29, %11
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %46 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %54 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.netconfig*, %struct.netconfig** %4, align 8
  %56 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @__rpc_seman2socktype(i32 %58)
  %60 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %61 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %63 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %79

67:                                               ; preds = %38
  %68 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %69 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @__rpc_get_a_size(i32 %70)
  %72 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %5, align 8
  %73 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  store i32 1, i32* %3, align 4
  br label %79

74:                                               ; preds = %29, %23
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %7

78:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %67, %66
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__rpc_seman2socktype(i32) #1

declare dso_local i32 @__rpc_get_a_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

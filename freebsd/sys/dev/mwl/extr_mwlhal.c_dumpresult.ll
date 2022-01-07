; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_dumpresult.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_dumpresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_priv = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Cmd %s Length %d SeqNum %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NOT_SUPPORT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PENDING\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"BUSY\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"PARTIAL_DATA\00", align 1
@HostCmd_RESULT_PARTIAL_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c" Result %s\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" Result %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\0A%02x\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_hal_priv*, i32)* @dumpresult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpresult(%struct.mwl_hal_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mwl_hal_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8*], align 16
  %10 = alloca i32, align 4
  store %struct.mwl_hal_priv* %0, %struct.mwl_hal_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16toh(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mwl_hal_priv, %struct.mwl_hal_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16toh(i32 %24)
  %26 = and i32 %25, -32769
  %27 = call i32 @mwlcmdname(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16toh(i32 %31)
  %33 = call i32 (i32, i8*, i32, i32, i32, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %2
  %37 = bitcast [6 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 48, i1 false)
  %38 = bitcast i8* %37 to [6 x i8*]*
  %39 = getelementptr inbounds [6 x i8*], [6 x i8*]* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %39, align 16
  %40 = getelementptr inbounds [6 x i8*], [6 x i8*]* %38, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %40, align 8
  %41 = getelementptr inbounds [6 x i8*], [6 x i8*]* %38, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** %41, align 16
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %38, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %42, align 8
  %43 = getelementptr inbounds [6 x i8*], [6 x i8*]* %38, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %43, align 16
  %44 = getelementptr inbounds [6 x i8*], [6 x i8*]* %38, i32 0, i32 5
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8** %44, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16toh(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @HostCmd_RESULT_PARTIAL_DATA, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %36
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  br label %61

58:                                               ; preds = %36
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %64 = bitcast %struct.TYPE_2__* %63 to i32*
  store i32* %64, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %88, %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = srem i32 %70, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  br label %87

80:                                               ; preds = %69
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %65

91:                                               ; preds = %65
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @mwlcmdname(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

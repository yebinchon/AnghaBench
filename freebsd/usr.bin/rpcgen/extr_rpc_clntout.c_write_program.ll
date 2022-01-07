; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_write_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_write_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_12__* }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@RESULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"clnt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CLIENT *\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"enum clnt_stat \0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @write_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_program(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  br label %10

10:                                               ; preds = %70, %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %74

13:                                               ; preds = %10
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  br label %17

17:                                               ; preds = %65, %13
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %69

20:                                               ; preds = %17
  %21 = load i32, i32* @fout, align 4
  %22 = call i32 @f_print(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @mtflag, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ptype(i32 %28, i32 %31, i32 1)
  %33 = load i32, i32* @fout, align 4
  %34 = call i32 @f_print(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pvname(i32 %37, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = load i32, i32* @RESULT, align 4
  %44 = call i32 @printarglist(%struct.TYPE_12__* %42, i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %58

45:                                               ; preds = %20
  %46 = load i32, i32* @fout, align 4
  %47 = call i32 @f_print(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pvname(i32 %50, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load i32, i32* @RESULT, align 4
  %57 = call i32 @printarglist(%struct.TYPE_12__* %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %45, %25
  %59 = load i32, i32* @fout, align 4
  %60 = call i32 @f_print(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = call i32 @printbody(%struct.TYPE_12__* %61)
  %63 = load i32, i32* @fout, align 4
  %64 = call i32 @f_print(i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %4, align 8
  br label %17

69:                                               ; preds = %17
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %3, align 8
  br label %10

74:                                               ; preds = %10
  ret void
}

declare dso_local i32 @f_print(i32, i8*) #1

declare dso_local i32 @ptype(i32, i32, i32) #1

declare dso_local i32 @pvname(i32, i32) #1

declare dso_local i32 @printarglist(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i32 @printbody(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

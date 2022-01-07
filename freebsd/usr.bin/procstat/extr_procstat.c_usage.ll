; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [691 x i8] c"usage: procstat [--libxo] [-h] [-M core] [-N system] [-w interval] command\0A                [pid ... | core ...]\0A       procstat [--libxo] -a [-h] [-M core] [-N system]  [-w interval] command\0A       procstat [--libxo] [-h] [-M core] [-N system] [-w interval]\0A                [-S | -b | -c | -e | -f [-C] | -i [-n] | -j [-n] | -k [-k] |\0A                 -l | -r [-H] | -s | -t | -v | -x] [pid ... | core ...]\0A       procstat [--libxo] -a [-h] [-M core] [-N system] [-w interval]\0A                [-S | -b | -c | -e | -f [-C] | -i [-n] | -j [-n] | -k [-k] |\0A                 -l | -r [-H] | -s | -t | -v | -x]\0A       procstat [--libxo] -L [-h] [-M core] [-N system] core ...\0AAvailable commands:\0A\00", align 1
@cmd_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"       %s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PS_CMP_PLURAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"(s)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" | %s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (i8*, ...) @xo_error(i8* getelementptr inbounds ([691 x i8], [691 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %6 = call i64 @nitems(%struct.TYPE_3__* %5)
  store i64 %6, i64* %2, align 8
  br label %7

7:                                                ; preds = %114, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %117

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 1
  %14 = load i64, i64* %2, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %23 = load i64, i64* %1, align 8
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br label %29

29:                                               ; preds = %16, %11
  %30 = phi i1 [ false, %11 ], [ %28, %16 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %37 = load i64, i64* %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PS_CMP_PLURAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %51 = call i32 (i8*, ...) @xo_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %40, i8* %50)
  br label %52

52:                                               ; preds = %90, %29
  %53 = load i64, i64* %1, align 8
  %54 = add i64 %53, 1
  %55 = load i64, i64* %2, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %59 = load i64, i64* %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %64 = load i64, i64* %1, align 8
  %65 = add i64 %64, 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %62, %68
  br label %70

70:                                               ; preds = %57, %52
  %71 = phi i1 [ false, %52 ], [ %69, %57 ]
  br i1 %71, label %72, label %93

72:                                               ; preds = %70
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %74 = load i64, i64* %1, align 8
  %75 = add i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %80 = load i64, i64* %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PS_CMP_PLURAL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %89 = call i32 (i8*, ...) @xo_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %78, i8* %88)
  br label %90

90:                                               ; preds = %72
  %91 = load i64, i64* %1, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %1, align 8
  br label %52

93:                                               ; preds = %70
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (i8*, ...) @xo_error(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %100 = load i64, i64* %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_table, align 8
  %107 = load i64, i64* %1, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (i8*, ...) @xo_error(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %110)
  br label %112

112:                                              ; preds = %105, %98
  %113 = call i32 (i8*, ...) @xo_error(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112
  %115 = load i64, i64* %1, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %1, align 8
  br label %7

117:                                              ; preds = %7
  %118 = call i32 (...) @xo_finish()
  %119 = load i32, i32* @EX_USAGE, align 4
  %120 = call i32 @exit(i32 %119) #3
  unreachable
}

declare dso_local i32 @xo_error(i8*, ...) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @xo_finish(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

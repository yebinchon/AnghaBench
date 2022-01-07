; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdebug/extr_athdebug.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdebug/extr_athdebug.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"usage: %s [-i device] [flags]\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"where flags are:\0A\00", align 1
@flags = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stderr, align 4
  %3 = load i8*, i8** @progname, align 8
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %20, %0
  %8 = load i32, i32* %1, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %10 = call i32 @nitems(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flags, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %7

23:                                               ; preds = %7
  %24 = call i32 @exit(i32 -1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

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

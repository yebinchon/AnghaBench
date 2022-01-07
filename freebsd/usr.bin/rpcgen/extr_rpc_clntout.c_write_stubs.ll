; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_write_stubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_write_stubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"\0A/* Default timeout can be changed using clnt_control() */\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"static struct timeval TIMEOUT = { %d, 0 };\0A\00", align 1
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@defined = common dso_local global %struct.TYPE_5__* null, align 8
@DEF_PROGRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_stubs() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32, i32* @fout, align 4
  %4 = call i32 (i32, i8*, ...) @f_print(i32 %3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @fout, align 4
  %6 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %7 = call i32 (i32, i8*, ...) @f_print(i32 %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @defined, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %1, align 8
  br label %9

9:                                                ; preds = %26, %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %2, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DEF_PROGRAM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @write_program(%struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %22, %12
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %1, align 8
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @write_program(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

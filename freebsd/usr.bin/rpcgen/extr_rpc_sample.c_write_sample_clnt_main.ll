; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_sample.c_write_sample_clnt_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_sample.c_write_sample_clnt_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"int\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"main(int argc, char *argv[])\0A{\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09char *host;\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0A\0A\09if (argc < 2) {\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\0A\09\09printf(\22usage:  %%s server_host\\n\22, argv[0]);\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\09\09exit(1);\0A\09}\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\0A\09host = argv[1];\0A\00", align 1
@defined = common dso_local global %struct.TYPE_10__* null, align 8
@DEF_PROGRAM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"(host);\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_sample_clnt_main() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = load i32, i32* @fout, align 4
  %5 = call i32 @f_print(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @fout, align 4
  %7 = call i32 @f_print(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @fout, align 4
  %9 = call i32 @f_print(i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @fout, align 4
  %11 = call i32 @f_print(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @fout, align 4
  %13 = call i32 @f_print(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %14 = load i32, i32* @fout, align 4
  %15 = call i32 @f_print(i32 %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @fout, align 4
  %17 = call i32 @f_print(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %18 = load i32, i32* @fout, align 4
  %19 = call i32 @f_print(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @defined, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %1, align 8
  br label %21

21:                                               ; preds = %60, %0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %2, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DEF_PROGRAM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %60

34:                                               ; preds = %24
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %3, align 8
  br label %40

40:                                               ; preds = %55, %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load i32, i32* @fout, align 4
  %45 = call i32 @f_print(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pvname(i32 %48, i32 %51)
  %53 = load i32, i32* @fout, align 4
  %54 = call i32 @f_print(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %3, align 8
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %1, align 8
  br label %21

64:                                               ; preds = %21
  %65 = load i32, i32* @fout, align 4
  %66 = call i32 @f_print(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @f_print(i32, i8*) #1

declare dso_local i32 @pvname(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

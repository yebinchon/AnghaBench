; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_nettype_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_nettype_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_9__* }

@defined = common dso_local global %struct.TYPE_10__* null, align 8
@DEF_PROGRAM = common dso_local global i64 0, align 8
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\09if (!svc_create(\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c", %s, %s, \22%s\22)) {\0A\00", align 1
@_errbuf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to create (%s, %s) for %s.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09\09exit(1);\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_nettype_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @defined, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  br label %7

7:                                                ; preds = %68, %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %72

10:                                               ; preds = %7
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEF_PROGRAM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %68

21:                                               ; preds = %10
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %5, align 8
  br label %27

27:                                               ; preds = %63, %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  %31 = load i32, i32* @fout, align 4
  %32 = call i32 (i32, i8*, ...) @f_print(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pvname(i8* %35, i32 %38)
  %40 = load i32, i32* @fout, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 (i32, i8*, ...) @f_print(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %46, i8* %47)
  %49 = load i32, i32* @_errbuf, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @sprintf(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %55, i8* %56)
  %58 = call i32 @print_err_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @fout, align 4
  %60 = call i32 (i32, i8*, ...) @f_print(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @fout, align 4
  %62 = call i32 (i32, i8*, ...) @f_print(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %30
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %5, align 8
  br label %27

67:                                               ; preds = %27
  br label %68

68:                                               ; preds = %67, %20
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %3, align 8
  br label %7

72:                                               ; preds = %7
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @pvname(i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @print_err_message(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

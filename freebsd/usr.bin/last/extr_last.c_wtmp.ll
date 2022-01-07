; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_wtmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_wtmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tm = type { i32 }

@wtmp.amount = internal global i32 0, align 4
@idlist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"last-information\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%+\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\0A{:utxdb/%s}\00", align 1
@file = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"utx.log\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c" begins {:begins/%s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wtmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wtmp() #0 {
  %1 = alloca %struct.utmpx*, align 8
  %2 = alloca %struct.utmpx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca %struct.tm*, align 8
  store %struct.utmpx* null, %struct.utmpx** %1, align 8
  %6 = call i32 @SLIST_INIT(i32* @idlist)
  %7 = call i32 @time(i64* %3)
  %8 = call i32 @xo_open_container(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %48, %0
  %10 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %10, %struct.utmpx** %2, align 8
  %11 = icmp ne %struct.utmpx* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* @wtmp.amount, align 4
  %14 = urem i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %18 = load i32, i32* @wtmp.amount, align 4
  %19 = add i32 %18, 128
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call %struct.utmpx* @realloc(%struct.utmpx* %17, i32 %22)
  store %struct.utmpx* %23, %struct.utmpx** %1, align 8
  %24 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %25 = icmp eq %struct.utmpx* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %16
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %31 = load i32, i32* @wtmp.amount, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* @wtmp.amount, align 4
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %30, i64 %33
  %35 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %36 = call i32 @memcpy(%struct.utmpx* %34, %struct.utmpx* %35, i32 8)
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %39 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %45 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %43, %29
  br label %9

49:                                               ; preds = %9
  %50 = call i32 (...) @endutxent()
  %51 = call i32 @xo_open_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %55, %49
  %53 = load i32, i32* @wtmp.amount, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %57 = load i32, i32* @wtmp.amount, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* @wtmp.amount, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %56, i64 %59
  %61 = call i32 @doentry(%struct.utmpx* %60)
  br label %52

62:                                               ; preds = %52
  %63 = call i32 @xo_close_list(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.utmpx*, %struct.utmpx** %1, align 8
  %65 = call i32 @free(%struct.utmpx* %64)
  %66 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %66, %struct.tm** %5, align 8
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %68 = load %struct.tm*, %struct.tm** %5, align 8
  %69 = call i32 @strftime(i8* %67, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %68)
  %70 = load i8*, i8** @file, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %75

73:                                               ; preds = %62
  %74 = load i8*, i8** @file, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %72 ], [ %74, %73 ]
  %77 = call i32 @xo_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @xo_attr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %78)
  %80 = call i8* @ctf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %81 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %82 = call i32 @xo_emit(i8* %80, i8* %81)
  %83 = call i32 @xo_close_container(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local %struct.utmpx* @realloc(%struct.utmpx*, i32) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.utmpx*, %struct.utmpx*, i32) #1

declare dso_local i32 @endutxent(...) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @doentry(%struct.utmpx*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @free(%struct.utmpx*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @xo_emit(i8*, i8*) #1

declare dso_local i32 @xo_attr(i8*, i8*, i64) #1

declare dso_local i8* @ctf(i8*) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

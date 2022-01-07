; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i8*)*, i32* }
%struct.ctx = type { i32 }

@async_cmd = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctx*, i8*)* @at_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at_async(%struct.ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [512 x i8], align 16
  store %struct.ctx* %0, %struct.ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ctx*, %struct.ctx** %4, align 8
  %11 = call i32 @watchdog_reset(%struct.ctx* %10, i32 15)
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %13 = call i32 @bzero(i8* %12, i32 512)
  %14 = load %struct.ctx*, %struct.ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %18 = call i32 @readline(i32 %16, i8* %17, i32 512)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -1, i32 0
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @async_cmd, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %27
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @async_cmd, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @strlen(i32* %41)
  store i64 %42, i64* %8, align 8
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @async_cmd, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @strncmp(i8* %43, i32* %49, i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %35
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @async_cmd, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %62 = call i32 %59(i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %53, %35
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %27

67:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @watchdog_reset(%struct.ctx*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @readline(i32, i8*, i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @strncmp(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

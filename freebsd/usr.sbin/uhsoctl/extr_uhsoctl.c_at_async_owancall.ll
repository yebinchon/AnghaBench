; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_owancall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_at_async_owancall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"_OWANCALL: %*d,%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"AT_OWANDATA=%d\0D\0A\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Connected to \22%s\22 (%s), %s\00", align 1
@network_access_type = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Disconnected from \22%s\22 (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @at_async_owancall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at_async_owancall(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ctx*
  store %struct.ctx* %9, %struct.ctx** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %61

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ctx*, %struct.ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ctx, %struct.ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %61

22:                                               ; preds = %15
  %23 = load %struct.ctx*, %struct.ctx** %5, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ctx*, %struct.ctx** %5, align 8
  %27 = getelementptr inbounds %struct.ctx, %struct.ctx* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @at_cmd_async(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ctx*, %struct.ctx** %5, align 8
  %32 = getelementptr inbounds %struct.ctx, %struct.ctx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ctx*, %struct.ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ctx, %struct.ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %52

37:                                               ; preds = %22
  %38 = load i32, i32* @LOG_NOTICE, align 4
  %39 = load %struct.ctx*, %struct.ctx** %5, align 8
  %40 = getelementptr inbounds %struct.ctx, %struct.ctx* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ctx*, %struct.ctx** %5, align 8
  %43 = getelementptr inbounds %struct.ctx, %struct.ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** @network_access_type, align 8
  %46 = load %struct.ctx*, %struct.ctx** %5, align 8
  %47 = getelementptr inbounds %struct.ctx, %struct.ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, i32, ...) @logger(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44, i32 %50)
  br label %61

52:                                               ; preds = %22
  %53 = load i32, i32* @LOG_NOTICE, align 4
  %54 = load %struct.ctx*, %struct.ctx** %5, align 8
  %55 = getelementptr inbounds %struct.ctx, %struct.ctx* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ctx*, %struct.ctx** %5, align 8
  %58 = getelementptr inbounds %struct.ctx, %struct.ctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, i32, i32, ...) @logger(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %14, %21, %52, %37
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @at_cmd_async(i32, i8*, i32) #1

declare dso_local i32 @logger(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

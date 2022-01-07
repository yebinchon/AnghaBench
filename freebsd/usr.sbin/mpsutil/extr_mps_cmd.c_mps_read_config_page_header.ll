; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_read_config_page_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_read_config_page_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@MPI2_FUNCTION_CONFIG = common dso_local global i32 0, align 4
@MPI2_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_read_config_page_header(i32 %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = call i32 @bzero(%struct.TYPE_8__* %14, i32 32)
  %17 = load i32, i32* @MPI2_FUNCTION_CONFIG, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @MPI2_CONFIG_ACTION_PAGE_HEADER, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @mps_pass_command(i32 %29, %struct.TYPE_8__* %14, i32 32, %struct.TYPE_9__* %15, i32 8, i32* null, i32 0, i32* null, i32 0, i32 30)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %7, align 4
  br label %57

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IOC_STATUS_SUCCESS(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @EIO, align 4
  store i32 %47, i32* %7, align 4
  br label %57

48:                                               ; preds = %34
  %49 = load i32*, i32** %12, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %51, %46, %32
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @mps_pass_command(i32, %struct.TYPE_8__*, i32, %struct.TYPE_9__*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @IOC_STATUS_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dumper_config_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_dumper_config_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.diocskerneldump_arg = type { i64, i64, i64 }

@KDA_REMOVE_ALL = common dso_local global i64 0, align 8
@KDA_REMOVE_DEV = common dso_local global i64 0, align 8
@KERNELDUMP_COMP_NONE = common dso_local global i64 0, align 8
@KERNELDUMP_ENC_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, i8*, %struct.diocskerneldump_arg*)* @dumper_config_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumper_config_match(%struct.dumperinfo* %0, i8* %1, %struct.diocskerneldump_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dumperinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.diocskerneldump_arg*, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.diocskerneldump_arg* %2, %struct.diocskerneldump_arg** %7, align 8
  %8 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %7, align 8
  %9 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KDA_REMOVE_ALL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %16 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %62

22:                                               ; preds = %14
  %23 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %7, align 8
  %24 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KDA_REMOVE_DEV, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %62

29:                                               ; preds = %22
  %30 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %31 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.dumperinfo*, %struct.dumperinfo** %5, align 8
  %36 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %7, align 8
  %41 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %62

45:                                               ; preds = %34
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %7, align 8
  %48 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @KERNELDUMP_COMP_NONE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %62

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %45
  %55 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %7, align 8
  %56 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KERNELDUMP_ENC_NONE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60, %52, %44, %28, %21, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

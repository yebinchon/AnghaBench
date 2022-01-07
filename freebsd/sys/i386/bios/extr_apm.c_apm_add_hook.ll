; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_add_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_add_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apmhook = type { i64, %struct.apmhook*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Add hook \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"illegal apm_hook!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.apmhook* (%struct.apmhook**, %struct.apmhook*)* @apm_add_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.apmhook* @apm_add_hook(%struct.apmhook** %0, %struct.apmhook* %1) #0 {
  %3 = alloca %struct.apmhook**, align 8
  %4 = alloca %struct.apmhook*, align 8
  %5 = alloca %struct.apmhook*, align 8
  %6 = alloca %struct.apmhook*, align 8
  store %struct.apmhook** %0, %struct.apmhook*** %3, align 8
  store %struct.apmhook* %1, %struct.apmhook** %4, align 8
  %7 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  %8 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @APM_DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  %12 = icmp eq %struct.apmhook* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  store %struct.apmhook* null, %struct.apmhook** %6, align 8
  %16 = load %struct.apmhook**, %struct.apmhook*** %3, align 8
  %17 = load %struct.apmhook*, %struct.apmhook** %16, align 8
  store %struct.apmhook* %17, %struct.apmhook** %5, align 8
  br label %18

18:                                               ; preds = %31, %15
  %19 = load %struct.apmhook*, %struct.apmhook** %5, align 8
  %20 = icmp ne %struct.apmhook* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.apmhook*, %struct.apmhook** %5, align 8
  %23 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  %26 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %36

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.apmhook*, %struct.apmhook** %5, align 8
  store %struct.apmhook* %32, %struct.apmhook** %6, align 8
  %33 = load %struct.apmhook*, %struct.apmhook** %5, align 8
  %34 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %33, i32 0, i32 1
  %35 = load %struct.apmhook*, %struct.apmhook** %34, align 8
  store %struct.apmhook* %35, %struct.apmhook** %5, align 8
  br label %18

36:                                               ; preds = %29, %18
  %37 = load %struct.apmhook*, %struct.apmhook** %6, align 8
  %38 = icmp eq %struct.apmhook* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.apmhook**, %struct.apmhook*** %3, align 8
  %41 = load %struct.apmhook*, %struct.apmhook** %40, align 8
  %42 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  %43 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %42, i32 0, i32 1
  store %struct.apmhook* %41, %struct.apmhook** %43, align 8
  %44 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  %45 = load %struct.apmhook**, %struct.apmhook*** %3, align 8
  store %struct.apmhook* %44, %struct.apmhook** %45, align 8
  br label %55

46:                                               ; preds = %36
  %47 = load %struct.apmhook*, %struct.apmhook** %6, align 8
  %48 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %47, i32 0, i32 1
  %49 = load %struct.apmhook*, %struct.apmhook** %48, align 8
  %50 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  %51 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %50, i32 0, i32 1
  store %struct.apmhook* %49, %struct.apmhook** %51, align 8
  %52 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  %53 = load %struct.apmhook*, %struct.apmhook** %6, align 8
  %54 = getelementptr inbounds %struct.apmhook, %struct.apmhook* %53, i32 0, i32 1
  store %struct.apmhook* %52, %struct.apmhook** %54, align 8
  br label %55

55:                                               ; preds = %46, %39
  %56 = load %struct.apmhook*, %struct.apmhook** %4, align 8
  ret %struct.apmhook* %56
}

declare dso_local i32 @APM_DPRINT(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

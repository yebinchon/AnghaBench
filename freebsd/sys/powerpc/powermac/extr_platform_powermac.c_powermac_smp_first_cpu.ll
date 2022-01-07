; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_platform_powermac.c_powermac_smp_first_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_platform_powermac.c_powermac_smp_first_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuref = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpuref*)* @powermac_smp_first_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powermac_smp_first_cpu(i32 %0, %struct.cpuref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuref*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpuref* %1, %struct.cpuref** %5, align 8
  %11 = call i32 @OF_peer(i32 0)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @OF_child(i32 %12)
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %20 = call i32 @OF_getprop(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19, i32 8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %31

28:                                               ; preds = %23, %17
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @OF_peer(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %14

31:                                               ; preds = %27, %14
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = call i32 @OF_finddevice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOENT, align 4
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @OF_child(i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %58, %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %50 = call i32 @OF_getprop(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 8)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %61

58:                                               ; preds = %53, %47
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @OF_peer(i32 %59)
  store i32 %60, i32* %7, align 4
  br label %44

61:                                               ; preds = %57, %44
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @ENOENT, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %61
  %67 = load %struct.cpuref*, %struct.cpuref** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @powermac_smp_fill_cpuref(%struct.cpuref* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %64, %38
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @powermac_smp_fill_cpuref(%struct.cpuref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

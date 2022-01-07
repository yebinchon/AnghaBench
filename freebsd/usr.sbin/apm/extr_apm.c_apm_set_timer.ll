; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apm/extr_apm.c_apm_set_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apm/extr_apm.c_apm_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i64, i64, i64 }
%struct.apm_bios_arg = type { i32, i32, i32, i32, i32, i32 }

@cmos_wall = common dso_local global i64 0, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_RESUMETIMER = common dso_local global i32 0, align 4
@PMDV_APMBIOS = common dso_local global i32 0, align 4
@APMIO_BIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"set resume timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @apm_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_set_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca %struct.apm_bios_arg, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i64 @time(i32* null)
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @cmos_wall, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call %struct.tm* @localtime(i64* %5)
  store %struct.tm* %15, %struct.tm** %6, align 8
  br label %18

16:                                               ; preds = %2
  %17 = call %struct.tm* @gmtime(i64* %5)
  store %struct.tm* %17, %struct.tm** %6, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = call i32 @bzero(%struct.apm_bios_arg* %7, i32 24)
  %20 = load i32, i32* @APM_BIOS, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* @APM_RESUMETIMER, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @PMDV_APMBIOS, align 4
  %26 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %18
  %30 = load %struct.tm*, %struct.tm** %6, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @int2bcd(i64 %32)
  %34 = shl i32 %33, 8
  %35 = or i32 %34, 2
  %36 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.tm*, %struct.tm** %6, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @int2bcd(i64 %39)
  %41 = shl i32 %40, 8
  %42 = load %struct.tm*, %struct.tm** %6, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @int2bcd(i64 %44)
  %46 = or i32 %41, %45
  %47 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.tm*, %struct.tm** %6, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @int2bcd(i64 %51)
  %53 = shl i32 %52, 8
  %54 = load %struct.tm*, %struct.tm** %6, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @int2bcd(i64 %56)
  %58 = or i32 %53, %57
  %59 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.tm*, %struct.tm** %6, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1900
  %64 = call i32 @int2bcd(i64 %63)
  %65 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 4
  store i32 %64, i32* %65, align 4
  br label %68

66:                                               ; preds = %18
  %67 = getelementptr inbounds %struct.apm_bios_arg, %struct.apm_bios_arg* %7, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %66, %29
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @APMIO_BIOS, align 4
  %71 = call i64 @ioctl(i32 %69, i32 %70, %struct.apm_bios_arg* %7)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @bzero(%struct.apm_bios_arg*, i32) #1

declare dso_local i32 @int2bcd(i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.apm_bios_arg*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

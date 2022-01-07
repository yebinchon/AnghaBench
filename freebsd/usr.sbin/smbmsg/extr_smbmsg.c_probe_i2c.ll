; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/smbmsg/extr_smbmsg.c_probe_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/smbmsg/extr_smbmsg.c_probe_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbcmd = type { i8 }

@.str = private unnamed_addr constant [28 x i8] c"Probing for devices on %s:\0A\00", align 1
@dev = common dso_local global i8* null, align 8
@MIN_I2C_ADDR = common dso_local global i8 0, align 1
@MAX_I2C_ADDR = common dso_local global i8 0, align 1
@fd = common dso_local global i32 0, align 4
@SMB_RECVB = common dso_local global i32 0, align 4
@SMB_QUICK_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Device @0x%02x: \00", align 1
@IS_READABLE = common dso_local global i32 0, align 4
@IS_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @probe_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_i2c() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca %struct.smbcmd, align 1
  %4 = load i8*, i8** @dev, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i8, i8* @MIN_I2C_ADDR, align 1
  store i8 %6, i8* %1, align 1
  br label %7

7:                                                ; preds = %50, %0
  %8 = load i8, i8* %1, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @MAX_I2C_ADDR, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %7
  %14 = load i8, i8* %1, align 1
  %15 = getelementptr inbounds %struct.smbcmd, %struct.smbcmd* %3, i32 0, i32 0
  store i8 %14, i8* %15, align 1
  store i32 0, i32* %2, align 4
  %16 = load i32, i32* @fd, align 4
  %17 = load i32, i32* @SMB_RECVB, align 4
  %18 = call i32 @ioctl(i32 %16, i32 %17, %struct.smbcmd* %3)
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, i32* @fd, align 4
  %23 = load i32, i32* @SMB_QUICK_WRITE, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, %struct.smbcmd* %3)
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = or i32 %27, 2
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i8, i8* %1, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @putchar(i8 signext 114)
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %2, align 4
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @putchar(i8 signext 119)
  br label %47

47:                                               ; preds = %45, %41
  %48 = call i32 @putchar(i8 signext 10)
  br label %49

49:                                               ; preds = %47, %29
  br label %50

50:                                               ; preds = %49
  %51 = load i8, i8* %1, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, 2
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %1, align 1
  br label %7

55:                                               ; preds = %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.smbcmd*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

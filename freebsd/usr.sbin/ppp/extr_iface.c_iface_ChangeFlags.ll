; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_ChangeFlags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_ChangeFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i8*, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"iface_ChangeFlags: socket: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"iface_ChangeFlags: ioctl(SIOCGIFFLAGS): %s\0A\00", align 1
@IFACE_ADDFLAGS = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"iface_ChangeFlags: ioctl(SIOCSIFFLAGS): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @iface_ChangeFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iface_ChangeFlags(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @PF_INET, align 4
  %12 = load i32, i32* @SOCK_DGRAM, align 4
  %13 = call i32 @ID0socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @LogERROR, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @log_Printf(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = call i32 @memset(%struct.ifreq* %8, i8 signext 0, i32 16)
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strncpy(i8* %24, i8* %25, i32 7)
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SIOCGIFFLAGS, align 4
  %32 = call i64 @ID0ioctl(i32 %30, i32 %31, %struct.ifreq* %8)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load i32, i32* @LogERROR, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @log_Printf(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @close(i32 %39)
  store i32 0, i32* %4, align 4
  br label %75

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 65535
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IFACE_ADDFLAGS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %57

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 65535
  %60 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SIOCSIFFLAGS, align 4
  %63 = call i64 @ID0ioctl(i32 %61, i32 %62, %struct.ifreq* %8)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i32, i32* @LogERROR, align 4
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 @log_Printf(i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @close(i32 %70)
  store i32 0, i32* %4, align 4
  br label %75

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @close(i32 %73)
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %65, %34, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.ifreq*, i8 signext, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @ID0ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

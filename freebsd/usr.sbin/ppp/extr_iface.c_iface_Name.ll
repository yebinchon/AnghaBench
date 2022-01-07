; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { i8* }
%struct.ifreq = type { i8*, i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"iface name: strdup failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"iface name: socket(): %s\0A\00", align 1
@SIOCSIFNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"iface name: ioctl(SIOCSIFNAME, %s -> %s): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iface_Name(%struct.iface* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifreq, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.iface* %0, %struct.iface** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %8, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @LogWARN, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* @PF_INET, align 4
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  %22 = call i32 @ID0socket(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* @LogERROR, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @free(i8* %31)
  store i32 0, i32* %3, align 4
  br label %64

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iface*, %struct.iface** %4, align 8
  %37 = getelementptr inbounds %struct.iface, %struct.iface* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlcpy(i32 %35, i8* %38, i32 4)
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SIOCSIFNAME, align 4
  %44 = ptrtoint %struct.ifreq* %6 to i32
  %45 = call i64 @ID0ioctl(i32 %42, i32 %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %33
  %48 = load i32, i32* @LogWARN, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %50, i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @free(i8* %54)
  store i32 0, i32* %3, align 4
  br label %64

56:                                               ; preds = %33
  %57 = load %struct.iface*, %struct.iface** %4, align 8
  %58 = getelementptr inbounds %struct.iface, %struct.iface* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.iface*, %struct.iface** %4, align 8
  %63 = getelementptr inbounds %struct.iface, %struct.iface* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %47, %24, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ID0ioctl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

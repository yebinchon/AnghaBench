; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface = type { i32 }
%struct.ifreq = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"iface_Destroy: socket(): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIOCIFDESTROY = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"iface_Destroy: ioctl(SIOCIFDESTROY, %s): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iface_Destroy(%struct.iface* %0) #0 {
  %2 = alloca %struct.iface*, align 8
  %3 = alloca %struct.ifreq, align 4
  %4 = alloca i32, align 4
  store %struct.iface* %0, %struct.iface** %2, align 8
  %5 = load %struct.iface*, %struct.iface** %2, align 8
  %6 = icmp ne %struct.iface* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load i32, i32* @PF_INET, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i32 @ID0socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load i32, i32* @LogERROR, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %38

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iface*, %struct.iface** %2, align 8
  %21 = getelementptr inbounds %struct.iface, %struct.iface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SIOCIFDESTROY, align 4
  %26 = ptrtoint %struct.ifreq* %3 to i32
  %27 = call i64 @ID0ioctl(i32 %24, i32 %25, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load i32, i32* @LogWARN, align 4
  %31 = load %struct.iface*, %struct.iface** %2, align 8
  %32 = getelementptr inbounds %struct.iface, %struct.iface* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %17
  br label %38

38:                                               ; preds = %37, %12
  %39 = load %struct.iface*, %struct.iface** %2, align 8
  %40 = call i32 @iface_Free(%struct.iface* %39)
  br label %41

41:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @ID0socket(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ID0ioctl(i32, i32, i32) #1

declare dso_local i32 @iface_Free(%struct.iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

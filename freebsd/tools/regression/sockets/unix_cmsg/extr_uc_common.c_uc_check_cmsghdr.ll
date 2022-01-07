; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_cmsghdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_cmsghdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"cmsghdr is NULL\00", align 1
@SOL_SOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"cmsghdr.cmsg_level %d != SOL_SOCKET\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cmsghdr.cmsg_type %d != %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cmsghdr.cmsg_len %u != %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_check_cmsghdr(%struct.cmsghdr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cmsghdr* %0, %struct.cmsghdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %9 = icmp eq %struct.cmsghdr* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

12:                                               ; preds = %3
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %14 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOL_SOCKET, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %20 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  store i32 -1, i32* %4, align 4
  br label %50

23:                                               ; preds = %12
  %24 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %25 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %31 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  store i32 -1, i32* %4, align 4
  br label %50

35:                                               ; preds = %23
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %37 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @CMSG_LEN(i64 %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %44 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @CMSG_LEN(i64 %46)
  %48 = call i32 (i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %47)
  store i32 -1, i32* %4, align 4
  br label %50

49:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %42, %29, %18, %10
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @uc_logmsgx(i8*, ...) #1

declare dso_local i32 @CMSG_LEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

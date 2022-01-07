; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_send_recv.c_hci_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_send_recv.c_hci_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@timeout = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_recv(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 4
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %44, %3
  %26 = call i32 @FD_ZERO(i32* %9)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FD_SET(i32 %27, i32* %9)
  %29 = load i32, i32* @timeout, align 4
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @select(i32 %33, i32* %9, i32* null, i32* null, %struct.timeval* %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EINTR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %25

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %47, i64* @errno, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* @ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %25
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @FD_ISSET(i32 %51, i32* %9)
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @recv(i32 %54, i8* %55, i32 %57, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @ERROR, align 4
  store i32 %62, i32* %4, align 4
  br label %67

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @OK, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %61, %48
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

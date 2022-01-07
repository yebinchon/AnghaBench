; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile_getsock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sendfile.c_sendfile_getsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { %struct.socket* }
%struct.socket = type { i64 }

@cap_send_rights = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, %struct.file**, %struct.socket**)* @sendfile_getsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendfile_getsock(%struct.thread* %0, i32 %1, %struct.file** %2, %struct.socket** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file**, align 8
  %9 = alloca %struct.socket**, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file** %2, %struct.file*** %8, align 8
  store %struct.socket** %3, %struct.socket*** %9, align 8
  %11 = load %struct.file**, %struct.file*** %8, align 8
  store %struct.file* null, %struct.file** %11, align 8
  %12 = load %struct.socket**, %struct.socket*** %9, align 8
  store %struct.socket* null, %struct.socket** %12, align 8
  %13 = load %struct.thread*, %struct.thread** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.file**, %struct.file*** %8, align 8
  %16 = call i32 @getsock_cap(%struct.thread* %13, i32 %14, i32* @cap_send_rights, %struct.file** %15, i32* null, i32* null)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %43

21:                                               ; preds = %4
  %22 = load %struct.file**, %struct.file*** %8, align 8
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.socket*, %struct.socket** %24, align 8
  %26 = load %struct.socket**, %struct.socket*** %9, align 8
  store %struct.socket* %25, %struct.socket** %26, align 8
  %27 = load %struct.socket**, %struct.socket*** %9, align 8
  %28 = load %struct.socket*, %struct.socket** %27, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_STREAM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load %struct.socket**, %struct.socket*** %9, align 8
  %37 = load %struct.socket*, %struct.socket** %36, align 8
  %38 = call i64 @SOLISTENING(%struct.socket* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOTCONN, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %40, %33, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

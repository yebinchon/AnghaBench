; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_discovery.c_kernel_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_discovery.c_kernel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.iscsi_session_add = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ISCSISADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to add %s: ISCSISADD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i8*)* @kernel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_add(%struct.connection* %0, i8* %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iscsi_session_add, align 8
  %6 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @memset(%struct.iscsi_session_add* %5, i32 0, i32 16)
  %8 = getelementptr inbounds %struct.iscsi_session_add, %struct.iscsi_session_add* %5, i32 0, i32 0
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 1
  %11 = call i32 @memcpy(%struct.TYPE_2__* %8, i32* %10, i32 16)
  %12 = getelementptr inbounds %struct.iscsi_session_add, %struct.iscsi_session_add* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlcpy(i32 %14, i8* %15, i32 4)
  %17 = getelementptr inbounds %struct.iscsi_session_add, %struct.iscsi_session_add* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ISCSISADD, align 4
  %23 = call i32 @ioctl(i32 %21, i32 %22, %struct.iscsi_session_add* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @log_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @memset(%struct.iscsi_session_add*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iscsi_session_add*) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_handoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_daemon_handoff = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"handing off connection to the kernel\00", align 1
@ISCSIDHANDOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ISCSIDHANDOFF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*)* @handoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handoff(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.iscsi_daemon_handoff, align 4
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = call i32 @log_debugx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @memset(%struct.iscsi_daemon_handoff* %3, i32 0, i32 52)
  %7 = load %struct.connection*, %struct.connection** %2, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 12
  store i32 %9, i32* %10, align 4
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 11
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.connection*, %struct.connection** %2, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlcpy(i32 %16, i32 %19, i32 4)
  %21 = load %struct.connection*, %struct.connection** %2, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 9
  store i32 %23, i32* %24, align 4
  %25 = load %struct.connection*, %struct.connection** %2, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.connection*, %struct.connection** %2, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  %33 = load %struct.connection*, %struct.connection** %2, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 6
  store i32 %35, i32* %36, align 4
  %37 = load %struct.connection*, %struct.connection** %2, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load %struct.connection*, %struct.connection** %2, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load %struct.connection*, %struct.connection** %2, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load %struct.connection*, %struct.connection** %2, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.connection*, %struct.connection** %2, align 8
  %54 = getelementptr inbounds %struct.connection, %struct.connection* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.connection*, %struct.connection** %2, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.iscsi_daemon_handoff, %struct.iscsi_daemon_handoff* %3, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.connection*, %struct.connection** %2, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ISCSIDHANDOFF, align 4
  %65 = call i32 @ioctl(i32 %63, i32 %64, %struct.iscsi_daemon_handoff* %3)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %1
  %69 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %1
  ret void
}

declare dso_local i32 @log_debugx(i8*) #1

declare dso_local i32 @memset(%struct.iscsi_daemon_handoff*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iscsi_daemon_handoff*) #1

declare dso_local i32 @log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

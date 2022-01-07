; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32 }
%struct.iscsi_session_modify = type { i32, i32 }

@ISCSISMODIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ISCSISMODIFY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.target*)* @kernel_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernel_modify(i32 %0, i32 %1, %struct.target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.target*, align 8
  %7 = alloca %struct.iscsi_session_modify, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.target* %2, %struct.target** %6, align 8
  %9 = call i32 @memset(%struct.iscsi_session_modify* %7, i32 0, i32 8)
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.iscsi_session_modify, %struct.iscsi_session_modify* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.iscsi_session_modify, %struct.iscsi_session_modify* %7, i32 0, i32 1
  %13 = load %struct.target*, %struct.target** %6, align 8
  %14 = call i32 @conf_from_target(i32* %12, %struct.target* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ISCSISMODIFY, align 4
  %17 = call i32 @ioctl(i32 %15, i32 %16, %struct.iscsi_session_modify* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @xo_warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local i32 @memset(%struct.iscsi_session_modify*, i32, i32) #1

declare dso_local i32 @conf_from_target(i32*, %struct.target*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iscsi_session_modify*) #1

declare dso_local i32 @xo_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

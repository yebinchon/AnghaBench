; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32 }
%struct.iscsi_session_add = type { i32 }

@ISCSISADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ISCSISADD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target*)* @kernel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernel_add(i32 %0, %struct.target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target*, align 8
  %5 = alloca %struct.iscsi_session_add, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.target* %1, %struct.target** %4, align 8
  %7 = call i32 @memset(%struct.iscsi_session_add* %5, i32 0, i32 4)
  %8 = getelementptr inbounds %struct.iscsi_session_add, %struct.iscsi_session_add* %5, i32 0, i32 0
  %9 = load %struct.target*, %struct.target** %4, align 8
  %10 = call i32 @conf_from_target(i32* %8, %struct.target* %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ISCSISADD, align 4
  %13 = call i32 @ioctl(i32 %11, i32 %12, %struct.iscsi_session_add* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @xo_warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local i32 @memset(%struct.iscsi_session_add*, i32, i32) #1

declare dso_local i32 @conf_from_target(i32*, %struct.target*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iscsi_session_add*) #1

declare dso_local i32 @xo_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

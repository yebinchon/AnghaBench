; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_init_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_init_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"spdif_enabled\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_via8233_spdif_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Enable S/PDIF output on primary playback channel\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dxs_src\00", align 1
@sysctl_via8233_dxs_src = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Enable VIA DXS Sample Rate Converter\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@sysctl_via_polling = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Enable polling mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @via_init_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_init_sysctls(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @device_get_sysctl_ctx(i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @device_get_sysctl_tree(i32 %5)
  %7 = call i32 @SYSCTL_CHILDREN(i32 %6)
  %8 = load i32, i32* @OID_AUTO, align 4
  %9 = load i32, i32* @CTLTYPE_INT, align 4
  %10 = load i32, i32* @CTLFLAG_RW, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @sysctl_via8233_spdif_enable, align 4
  %14 = call i32 @SYSCTL_ADD_PROC(i32 %4, i32 %7, i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 4, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @device_get_sysctl_ctx(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_get_sysctl_tree(i32 %17)
  %19 = call i32 @SYSCTL_CHILDREN(i32 %18)
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLTYPE_INT, align 4
  %22 = load i32, i32* @CTLFLAG_RW, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @sysctl_via8233_dxs_src, align 4
  %26 = call i32 @SYSCTL_ADD_PROC(i32 %16, i32 %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %23, i32 %24, i32 4, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @device_get_sysctl_ctx(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @device_get_sysctl_tree(i32 %29)
  %31 = call i32 @SYSCTL_CHILDREN(i32 %30)
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLTYPE_INT, align 4
  %34 = load i32, i32* @CTLFLAG_RW, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @sysctl_via_polling, align 4
  %38 = call i32 @SYSCTL_ADD_PROC(i32 %28, i32 %31, i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %35, i32 %36, i32 4, i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

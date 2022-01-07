; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_print_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_print_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c" flags %#x <%s%s%s%s%s%s%s%s%s0>\0A\00", align 1
@FORCE_SHORT_XFER = common dso_local global i32 0, align 4
@SHORT_XFER_OK = common dso_local global i32 0, align 4
@SHORT_FRAMES_OK = common dso_local global i32 0, align 4
@PIPE_BOF = common dso_local global i32 0, align 4
@PROXY_BUFFER = common dso_local global i32 0, align 4
@EXT_BUFFER = common dso_local global i32 0, align 4
@MANUAL_STATUS = common dso_local global i32 0, align 4
@NO_PIPE_OK = common dso_local global i32 0, align 4
@STALL_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FORCE_SHORT_XFER, align 4
  %6 = call i8* @FLAGS(i32 %4, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @SHORT_XFER_OK, align 4
  %9 = call i8* @FLAGS(i32 %7, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SHORT_FRAMES_OK, align 4
  %12 = call i8* @FLAGS(i32 %10, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @PIPE_BOF, align 4
  %15 = call i8* @FLAGS(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PROXY_BUFFER, align 4
  %18 = call i8* @FLAGS(i32 %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @EXT_BUFFER, align 4
  %21 = call i8* @FLAGS(i32 %19, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @MANUAL_STATUS, align 4
  %24 = call i8* @FLAGS(i32 %22, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @NO_PIPE_OK, align 4
  %27 = call i8* @FLAGS(i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @STALL_PIPE, align 4
  %30 = call i8* @FLAGS(i32 %28, i32 %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %3, i8* %6, i8* %9, i8* %12, i8* %15, i8* %18, i8* %21, i8* %24, i8* %27, i8* %30)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @FLAGS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

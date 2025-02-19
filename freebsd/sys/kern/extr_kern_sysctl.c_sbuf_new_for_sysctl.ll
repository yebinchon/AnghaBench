; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sbuf_new_for_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sbuf_new_for_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.sysctl_req = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@SBUF_INCLUDENUL = common dso_local global i32 0, align 4
@sbuf_sysctl_drain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sbuf* @sbuf_new_for_sysctl(%struct.sbuf* %0, i8* %1, i32 %2, %struct.sysctl_req* %3) #0 {
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sysctl_req*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sysctl_req* %3, %struct.sysctl_req** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 64, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %11, %4
  %16 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %20 = load i32, i32* @SBUF_INCLUDENUL, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.sbuf* @sbuf_new(%struct.sbuf* %16, i8* %17, i32 %18, i32 %21)
  store %struct.sbuf* %22, %struct.sbuf** %5, align 8
  %23 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %24 = load i32, i32* @sbuf_sysctl_drain, align 4
  %25 = load %struct.sysctl_req*, %struct.sysctl_req** %8, align 8
  %26 = call i32 @sbuf_set_drain(%struct.sbuf* %23, i32 %24, %struct.sysctl_req* %25)
  %27 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  ret %struct.sbuf* %27
}

declare dso_local %struct.sbuf* @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_set_drain(%struct.sbuf*, i32, %struct.sysctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

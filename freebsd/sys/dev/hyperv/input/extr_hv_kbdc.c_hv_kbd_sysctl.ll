; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.TYPE_3__ = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"debug hyperv keyboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hv_kbd_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_kbd_sysctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysctl_oid_list*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_3__* @device_get_softc(i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @device_get_sysctl_tree(i32 %10)
  %12 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %11)
  store %struct.sysctl_oid_list* %12, %struct.sysctl_oid_list** %3, align 8
  %13 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %14 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %15 = load i32, i32* @OID_AUTO, align 4
  %16 = load i32, i32* @CTLFLAG_RW, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %13, %struct.sysctl_oid_list* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %18, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_3__* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

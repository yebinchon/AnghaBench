; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_add_int_delay_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_add_int_delay_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }

@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@iflib_sysctl_int_delay = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iflib_add_int_delay_sysctl(%struct.TYPE_7__* %0, i8* %1, i8* %2, %struct.TYPE_6__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %15, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_get_sysctl_ctx(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_get_sysctl_tree(i32 %28)
  %30 = call i32 @SYSCTL_CHILDREN(i32 %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @CTLTYPE_INT, align 4
  %34 = load i32, i32* @CTLFLAG_RW, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = load i32, i32* @iflib_sysctl_int_delay, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @SYSCTL_ADD_PROC(i32 %25, i32 %30, i32 %31, i8* %32, i32 %35, %struct.TYPE_6__* %36, i32 0, i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %38)
  ret void
}

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.TYPE_6__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdaccess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, i32, i32, i32 }

@VEXEC = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@VAPPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid bit in accmode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdaccess(%struct.vop_access_args* %0) #0 {
  %2 = alloca %struct.vop_access_args*, align 8
  store %struct.vop_access_args* %0, %struct.vop_access_args** %2, align 8
  %3 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %4 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @VEXEC, align 4
  %7 = load i32, i32* @VWRITE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @VREAD, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @VADMIN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @VAPPEND, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %5, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %21 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %24 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %27 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vop_access_args*, %struct.vop_access_args** %2, align 8
  %30 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @VOP_ACCESSX(i32 %22, i32 %25, i32 %28, i32 %31)
  ret i32 %32
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_ACCESSX(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sem.c_ksem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksem = type { i32, i32, i32 }
%struct.ucred = type { i32 }

@VREG = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@PRIV_SEM_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksem*, %struct.ucred*)* @ksem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksem_access(%struct.ksem* %0, %struct.ucred* %1) #0 {
  %3 = alloca %struct.ksem*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i32, align 4
  store %struct.ksem* %0, %struct.ksem** %3, align 8
  store %struct.ucred* %1, %struct.ucred** %4, align 8
  %6 = load i32, i32* @VREG, align 4
  %7 = load %struct.ksem*, %struct.ksem** %3, align 8
  %8 = getelementptr inbounds %struct.ksem, %struct.ksem* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ksem*, %struct.ksem** %3, align 8
  %11 = getelementptr inbounds %struct.ksem, %struct.ksem* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ksem*, %struct.ksem** %3, align 8
  %14 = getelementptr inbounds %struct.ksem, %struct.ksem* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VREAD, align 4
  %17 = load i32, i32* @VWRITE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ucred*, %struct.ucred** %4, align 8
  %20 = call i32 @vaccess(i32 %6, i32 %9, i32 %12, i32 %15, i32 %18, %struct.ucred* %19, i32* null)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.ucred*, %struct.ucred** %4, align 8
  %25 = load i32, i32* @PRIV_SEM_WRITE, align 4
  %26 = call i32 @priv_check_cred(%struct.ucred* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

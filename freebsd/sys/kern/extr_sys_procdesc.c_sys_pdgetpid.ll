; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_sys_pdgetpid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_sys_pdgetpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pdgetpid_args = type { i32, i32 }

@cap_pdgetpid_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_pdgetpid(%struct.thread* %0, %struct.pdgetpid_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.pdgetpid_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.pdgetpid_args* %1, %struct.pdgetpid_args** %4, align 8
  %7 = load %struct.pdgetpid_args*, %struct.pdgetpid_args** %4, align 8
  %8 = getelementptr inbounds %struct.pdgetpid_args, %struct.pdgetpid_args* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @AUDIT_ARG_FD(i32 %9)
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = load %struct.pdgetpid_args*, %struct.pdgetpid_args** %4, align 8
  %13 = getelementptr inbounds %struct.pdgetpid_args, %struct.pdgetpid_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kern_pdgetpid(%struct.thread* %11, i32 %14, i32* @cap_pdgetpid_rights, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.pdgetpid_args*, %struct.pdgetpid_args** %4, align 8
  %20 = getelementptr inbounds %struct.pdgetpid_args, %struct.pdgetpid_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @copyout(i32* %5, i32 %21, i32 4)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @kern_pdgetpid(%struct.thread*, i32, i32*, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_syscalls.c_kern_syscall_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysent = type { i32 }

@SY_THR_STATIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_syscall_deregister(%struct.sysent* %0, i32 %1, %struct.sysent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysent*, align 8
  %8 = alloca %struct.sysent*, align 8
  store %struct.sysent* %0, %struct.sysent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sysent* %2, %struct.sysent** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

12:                                               ; preds = %3
  %13 = load %struct.sysent*, %struct.sysent** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sysent, %struct.sysent* %13, i64 %15
  store %struct.sysent* %16, %struct.sysent** %8, align 8
  %17 = load %struct.sysent*, %struct.sysent** %8, align 8
  %18 = getelementptr inbounds %struct.sysent, %struct.sysent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SY_THR_STATIC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %12
  %26 = load %struct.sysent*, %struct.sysent** %8, align 8
  %27 = call i32 @syscall_thread_drain(%struct.sysent* %26)
  %28 = load %struct.sysent*, %struct.sysent** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sysent, %struct.sysent* %28, i64 %30
  %32 = load %struct.sysent*, %struct.sysent** %7, align 8
  %33 = bitcast %struct.sysent* %31 to i8*
  %34 = bitcast %struct.sysent* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %23, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @syscall_thread_drain(%struct.sysent*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

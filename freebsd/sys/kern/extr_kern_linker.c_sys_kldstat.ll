; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_sys_kldstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kldstat_args = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kld_file_stat = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kldstat(%struct.thread* %0, %struct.kldstat_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kldstat_args*, align 8
  %6 = alloca %struct.kld_file_stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kldstat_args* %1, %struct.kldstat_args** %5, align 8
  %9 = load %struct.kldstat_args*, %struct.kldstat_args** %5, align 8
  %10 = getelementptr inbounds %struct.kldstat_args, %struct.kldstat_args* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @copyin(i32* %12, i32* %8, i32 4)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 4
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %21, %17
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.kld_file_stat* @malloc(i32 4, i32 %28, i32 %31)
  store %struct.kld_file_stat* %32, %struct.kld_file_stat** %6, align 8
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load %struct.kldstat_args*, %struct.kldstat_args** %5, align 8
  %35 = getelementptr inbounds %struct.kldstat_args, %struct.kldstat_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.kld_file_stat*, %struct.kld_file_stat** %6, align 8
  %38 = call i32 @kern_kldstat(%struct.thread* %33, i32 %36, %struct.kld_file_stat* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load %struct.kld_file_stat*, %struct.kld_file_stat** %6, align 8
  %43 = load %struct.kldstat_args*, %struct.kldstat_args** %5, align 8
  %44 = getelementptr inbounds %struct.kldstat_args, %struct.kldstat_args* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @copyout(%struct.kld_file_stat* %42, %struct.TYPE_2__* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %27
  %49 = load %struct.kld_file_stat*, %struct.kld_file_stat** %6, align 8
  %50 = load i32, i32* @M_TEMP, align 4
  %51 = call i32 @free(%struct.kld_file_stat* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %25, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local %struct.kld_file_stat* @malloc(i32, i32, i32) #1

declare dso_local i32 @kern_kldstat(%struct.thread*, i32, %struct.kld_file_stat*) #1

declare dso_local i32 @copyout(%struct.kld_file_stat*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @free(%struct.kld_file_stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

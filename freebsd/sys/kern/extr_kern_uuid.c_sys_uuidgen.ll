; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_sys_uuidgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_sys_uuidgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.uuidgen_args = type { i32, i32 }
%struct.uuid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_uuidgen(%struct.thread* %0, %struct.uuidgen_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.uuidgen_args*, align 8
  %6 = alloca %struct.uuid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.uuidgen_args* %1, %struct.uuidgen_args** %5, align 8
  %9 = load %struct.uuidgen_args*, %struct.uuidgen_args** %5, align 8
  %10 = getelementptr inbounds %struct.uuidgen_args, %struct.uuidgen_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.uuidgen_args*, %struct.uuidgen_args** %5, align 8
  %15 = getelementptr inbounds %struct.uuidgen_args, %struct.uuidgen_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 2048
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %13
  %21 = load %struct.uuidgen_args*, %struct.uuidgen_args** %5, align 8
  %22 = getelementptr inbounds %struct.uuidgen_args, %struct.uuidgen_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = mul i64 %25, 4
  %27 = load i32, i32* @M_TEMP, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call %struct.uuid* @malloc(i64 %26, i32 %27, i32 %28)
  store %struct.uuid* %29, %struct.uuid** %6, align 8
  %30 = load %struct.uuid*, %struct.uuid** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @kern_uuidgen(%struct.uuid* %30, i64 %31)
  %33 = load %struct.uuid*, %struct.uuid** %6, align 8
  %34 = load %struct.uuidgen_args*, %struct.uuidgen_args** %5, align 8
  %35 = getelementptr inbounds %struct.uuidgen_args, %struct.uuidgen_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %37, 4
  %39 = call i32 @copyout(%struct.uuid* %33, i32 %36, i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.uuid*, %struct.uuid** %6, align 8
  %41 = load i32, i32* @M_TEMP, align 4
  %42 = call i32 @free(%struct.uuid* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %20, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.uuid* @malloc(i64, i32, i32) #1

declare dso_local i32 @kern_uuidgen(%struct.uuid*, i64) #1

declare dso_local i32 @copyout(%struct.uuid*, i32, i64) #1

declare dso_local i32 @free(%struct.uuid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_desc_table_limit_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_task_switch.c_desc_table_limit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, i32, i32)* @desc_table_limit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_table_limit_check(%struct.vmctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @ISLDT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %12, align 4
  %22 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @vm_get_desc(%struct.vmctx* %22, i32 %23, i32 %24, i32* %8, i64* %9, i64* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @SEG_DESC_UNUSABLE(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @SEG_DESC_PRESENT(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %33
  store i32 -1, i32* %4, align 4
  br label %50

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @SEL_LIMIT(i32 %45)
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %41
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i32 @vm_get_desc(%struct.vmctx*, i32, i32, i32*, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEG_DESC_UNUSABLE(i64) #1

declare dso_local i32 @SEG_DESC_PRESENT(i64) #1

declare dso_local i64 @SEL_LIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_guest_paging_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_guest_paging_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_guest_paging = type { i32, i32, i32, i64 }

@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR4 = common dso_local global i32 0, align 4
@VM_REG_GUEST_EFER = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@CPU_MODE_64BIT = common dso_local global i32 0, align 4
@CR0_PE = common dso_local global i32 0, align 4
@CPU_MODE_PROTECTED = common dso_local global i32 0, align 4
@CPU_MODE_REAL = common dso_local global i32 0, align 4
@CR0_PG = common dso_local global i32 0, align 4
@PAGING_MODE_FLAT = common dso_local global i32 0, align 4
@CR4_PAE = common dso_local global i32 0, align 4
@PAGING_MODE_32 = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@PAGING_MODE_64 = common dso_local global i32 0, align 4
@PAGING_MODE_PAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_guest_paging*)* @guest_paging_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_paging_info(i32 %0, %struct.vm_guest_paging* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_guest_paging*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store %struct.vm_guest_paging* %1, %struct.vm_guest_paging** %5, align 8
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @VM_REG_GUEST_CR4, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @VM_REG_GUEST_EFER, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @ctx, align 4
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %19 = call i32 @nitems(i32* %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %22 = call i32 @vm_get_register_set(i32 %16, i32 %17, i32 %19, i32* %20, i32* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %29 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %31 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EFER_LMA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @CPU_MODE_64BIT, align 4
  %39 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %40 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %56

41:                                               ; preds = %25
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = load i32, i32* @CR0_PE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @CPU_MODE_PROTECTED, align 4
  %49 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %50 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @CPU_MODE_REAL, align 4
  %53 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %54 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %37
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = load i32, i32* @CR0_PG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @PAGING_MODE_FLAT, align 4
  %64 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %65 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %92

66:                                               ; preds = %56
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CR4_PAE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @PAGING_MODE_32, align 4
  %74 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %75 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %91

76:                                               ; preds = %66
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EFER_LME, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @PAGING_MODE_64, align 4
  %84 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %85 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %76
  %87 = load i32, i32* @PAGING_MODE_PAE, align 4
  %88 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %5, align 8
  %89 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %62
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %24
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @vm_get_register_set(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unexpected Mach error %d from vm_fault()\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@SEGV_MAPERR = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@BUS_OOMERR = common dso_local global i32 0, align 4
@BUS_OBJERR = common dso_local global i32 0, align 4
@prot_fault_translation = common dso_local global i32 0, align 4
@SV_ABI_FREEBSD = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_2__* null, align 8
@P_OSREL_SIGSEGV = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4
@UCODE_PAGEFLT = common dso_local global i32 0, align 4
@KTR_FAULT = common dso_local global i32 0, align 4
@KTR_FAULTEND = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_fault_trap(i64 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi i1 [ true, %6 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @MPASS(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @trunc_page(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @vm_fault(i64 %23, i32 %25, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @KERN_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %47, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 132
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 131
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 129
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 130
  br label %47

47:                                               ; preds = %44, %41, %38, %35, %32, %19
  %48 = phi i1 [ true, %41 ], [ true, %38 ], [ true, %35 ], [ true, %32 ], [ true, %19 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @KASSERT(i32 %49, i8* %52)
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @KERN_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %47
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %122

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  switch i32 %61, label %116 [
    i32 132, label %62
    i32 131, label %62
    i32 128, label %67
    i32 130, label %72
    i32 129, label %77
  ]

62:                                               ; preds = %60, %60
  %63 = load i32, i32* @SIGSEGV, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @SEGV_MAPERR, align 4
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  br label %121

67:                                               ; preds = %60
  %68 = load i32, i32* @SIGBUS, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @BUS_OOMERR, align 4
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  br label %121

72:                                               ; preds = %60
  %73 = load i32, i32* @SIGBUS, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @BUS_OBJERR, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  br label %121

77:                                               ; preds = %60
  %78 = load i32, i32* @prot_fault_translation, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = call i32 (...) @SV_CURPROC_ABI()
  %82 = load i32, i32* @SV_ABI_FREEBSD, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curproc, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @P_OSREL_SIGSEGV, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* @SIGSEGV, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @SEGV_ACCERR, align 4
  %94 = load i32*, i32** %12, align 8
  store i32 %93, i32* %94, align 4
  br label %100

95:                                               ; preds = %84, %80
  %96 = load i32, i32* @SIGBUS, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @UCODE_PAGEFLT, align 4
  %99 = load i32*, i32** %12, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %90
  br label %115

101:                                              ; preds = %77
  %102 = load i32, i32* @prot_fault_translation, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* @SIGBUS, align 4
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @UCODE_PAGEFLT, align 4
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  br label %114

109:                                              ; preds = %101
  %110 = load i32, i32* @SIGSEGV, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @SEGV_ACCERR, align 4
  %113 = load i32*, i32** %12, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %100
  br label %121

116:                                              ; preds = %60
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @KASSERT(i32 0, i8* %119)
  br label %121

121:                                              ; preds = %116, %115, %72, %67, %62
  br label %122

122:                                              ; preds = %121, %57, %47
  %123 = load i32, i32* %13, align 4
  ret i32 %123
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vm_fault(i64, i32, i32, i32, i32*) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SV_CURPROC_ABI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

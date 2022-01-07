; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_sysarch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_sysarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vm86_kernel }
%struct.vm86_kernel = type { i32, i32, i32, i32 }
%struct.i386_vm86_args = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.vm86_init_args = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.vm86_vme_args = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.vm86_intcall_args = type { i32, i8*, i32, i32, i32, i32, i32 }

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_VME = common dso_local global i32 0, align 4
@CR4_VME = common dso_local global i32 0, align 4
@PRIV_VM86_INTCALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm86_sysarch(%struct.thread* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i386_vm86_args, align 8
  %8 = alloca %struct.vm86_kernel*, align 8
  %9 = alloca %struct.vm86_init_args, align 8
  %10 = alloca %struct.vm86_vme_args, align 8
  %11 = alloca %struct.vm86_intcall_args, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast %struct.i386_vm86_args* %7 to %struct.vm86_vme_args*
  %14 = call i32 @copyin(i8* %12, %struct.vm86_vme_args* %13, i32 40)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %121

18:                                               ; preds = %2
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = call i32 @i386_extend_pcb(%struct.thread* %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %121

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.vm86_kernel* %38, %struct.vm86_kernel** %8, align 8
  %39 = getelementptr inbounds %struct.i386_vm86_args, %struct.i386_vm86_args* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %117 [
    i32 130, label %41
    i32 131, label %78
    i32 129, label %89
  ]

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.i386_vm86_args, %struct.i386_vm86_args* %7, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast %struct.vm86_init_args* %9 to %struct.vm86_vme_args*
  %45 = call i32 @copyin(i8* %43, %struct.vm86_vme_args* %44, i32 40)
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %121

49:                                               ; preds = %41
  %50 = load i32, i32* @cpu_feature, align 4
  %51 = load i32, i32* @CPUID_VME, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = call i32 (...) @rcr4()
  %56 = load i32, i32* @CR4_VME, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = load %struct.vm86_kernel*, %struct.vm86_kernel** %8, align 8
  %62 = getelementptr inbounds %struct.vm86_kernel, %struct.vm86_kernel* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %66

63:                                               ; preds = %49
  %64 = load %struct.vm86_kernel*, %struct.vm86_kernel** %8, align 8
  %65 = getelementptr inbounds %struct.vm86_kernel, %struct.vm86_kernel* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.vm86_kernel*, %struct.vm86_kernel** %8, align 8
  %68 = getelementptr inbounds %struct.vm86_kernel, %struct.vm86_kernel* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %9, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vm86_kernel*, %struct.vm86_kernel** %8, align 8
  %72 = getelementptr inbounds %struct.vm86_kernel, %struct.vm86_kernel* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.vm86_init_args, %struct.vm86_init_args* %9, i32 0, i32 5
  %74 = load %struct.vm86_kernel*, %struct.vm86_kernel** %8, align 8
  %75 = getelementptr inbounds %struct.vm86_kernel, %struct.vm86_kernel* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bcopy(i32* %73, i32 %76, i32 32)
  br label %119

78:                                               ; preds = %32
  %79 = call i32 (...) @rcr4()
  %80 = load i32, i32* @CR4_VME, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = getelementptr inbounds %struct.vm86_vme_args, %struct.vm86_vme_args* %10, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.i386_vm86_args, %struct.i386_vm86_args* %7, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @copyout(%struct.vm86_vme_args* %10, i8* %87, i32 40)
  store i32 %88, i32* %6, align 4
  br label %119

89:                                               ; preds = %32
  %90 = load %struct.thread*, %struct.thread** %4, align 8
  %91 = load i32, i32* @PRIV_VM86_INTCALL, align 4
  %92 = call i32 @priv_check(%struct.thread* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %121

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.i386_vm86_args, %struct.i386_vm86_args* %7, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast %struct.vm86_intcall_args* %11 to %struct.vm86_vme_args*
  %100 = call i32 @copyin(i8* %98, %struct.vm86_vme_args* %99, i32 40)
  store i32 %100, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %121

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.vm86_intcall_args, %struct.vm86_intcall_args* %11, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.vm86_intcall_args, %struct.vm86_intcall_args* %11, i32 0, i32 3
  %108 = call i32 @vm86_intcall(i32 %106, i32* %107)
  store i32 %108, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %121

112:                                              ; preds = %104
  %113 = bitcast %struct.vm86_intcall_args* %11 to %struct.vm86_vme_args*
  %114 = getelementptr inbounds %struct.i386_vm86_args, %struct.i386_vm86_args* %7, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @copyout(%struct.vm86_vme_args* %113, i8* %115, i32 40)
  store i32 %116, i32* %6, align 4
  br label %119

117:                                              ; preds = %32
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %112, %78, %66
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %110, %102, %94, %47, %29, %16
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @copyin(i8*, %struct.vm86_vme_args*, i32) #1

declare dso_local i32 @i386_extend_pcb(%struct.thread*) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @copyout(%struct.vm86_vme_args*, i8*, i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @vm86_intcall(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

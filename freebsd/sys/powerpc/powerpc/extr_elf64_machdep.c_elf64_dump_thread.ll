; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_elf64_machdep.c_elf64_dump_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_elf64_machdep.c_elf64_dump_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@PCB_VEC = common dso_local global i32 0, align 4
@NT_PPC_VMX = common dso_local global i32 0, align 4
@PCB_VSX = common dso_local global i32 0, align 4
@NT_PPC_VSX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf64_dump_thread(%struct.thread* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcb*, align 8
  %9 = alloca [32 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load %struct.pcb*, %struct.pcb** %13, align 8
  store %struct.pcb* %14, %struct.pcb** %8, align 8
  %15 = load %struct.pcb*, %struct.pcb** %8, align 8
  %16 = getelementptr inbounds %struct.pcb, %struct.pcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCB_VEC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = call i32 @save_vec_nodrop(%struct.thread* %22)
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* @NT_PPC_VMX, align 4
  %28 = load %struct.pcb*, %struct.pcb** %8, align 8
  %29 = getelementptr inbounds %struct.pcb, %struct.pcb* %28, i32 0, i32 2
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = call i64 @elf64_populate_note(i32 %27, i32* %29, i8* %32, i32 4, i32* null)
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %41

36:                                               ; preds = %21
  %37 = load i32, i32* @NT_PPC_VMX, align 4
  %38 = call i64 @elf64_populate_note(i32 %37, i32* null, i8* null, i32 4, i32* null)
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %36, %26
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.pcb*, %struct.pcb** %8, align 8
  %44 = getelementptr inbounds %struct.pcb, %struct.pcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PCB_VSX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %42
  %50 = load %struct.thread*, %struct.thread** %4, align 8
  %51 = call i32 @save_fpu_nodrop(%struct.thread* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %11, align 4
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %58 = call i32 @nitems(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.pcb*, %struct.pcb** %8, align 8
  %62 = getelementptr inbounds %struct.pcb, %struct.pcb* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load i32, i32* @NT_PPC_VSX, align 4
  %81 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = call i64 @elf64_populate_note(i32 %80, i32* %81, i8* %84, i32 128, i32* null)
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %7, align 8
  br label %93

88:                                               ; preds = %49
  %89 = load i32, i32* @NT_PPC_VSX, align 4
  %90 = call i64 @elf64_populate_note(i32 %89, i32* null, i8* null, i32 128, i32* null)
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %88, %79
  br label %94

94:                                               ; preds = %93, %42
  %95 = load i64, i64* %7, align 8
  %96 = load i64*, i64** %6, align 8
  store i64 %95, i64* %96, align 8
  ret void
}

declare dso_local i32 @save_vec_nodrop(%struct.thread*) #1

declare dso_local i64 @elf64_populate_note(i32, i32*, i8*, i32, i32*) #1

declare dso_local i32 @save_fpu_nodrop(%struct.thread*) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

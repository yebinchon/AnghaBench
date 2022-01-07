; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_disasm.c_dis_ppc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_disasm.c_dis_ppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dis_ppc(%struct.opcode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.opcode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.opcode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [80 x i8], align 16
  store %struct.opcode* %0, %struct.opcode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.opcode*, %struct.opcode** %4, align 8
  %12 = getelementptr inbounds %struct.opcode, %struct.opcode* %11, i64 0
  store %struct.opcode* %12, %struct.opcode** %7, align 8
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.opcode*, %struct.opcode** %7, align 8
  %18 = getelementptr inbounds %struct.opcode, %struct.opcode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %52

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.opcode*, %struct.opcode** %7, align 8
  %26 = getelementptr inbounds %struct.opcode, %struct.opcode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load %struct.opcode*, %struct.opcode** %7, align 8
  %30 = getelementptr inbounds %struct.opcode, %struct.opcode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  %34 = load %struct.opcode*, %struct.opcode** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %38 = call i32 @disasm_fields(%struct.opcode* %34, i32 %35, i32 %36, i8* %37, i32 80)
  %39 = load %struct.opcode*, %struct.opcode** %7, align 8
  %40 = getelementptr inbounds %struct.opcode, %struct.opcode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %43 = call i32 @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  br label %56

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load %struct.opcode*, %struct.opcode** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.opcode, %struct.opcode* %48, i64 %50
  store %struct.opcode* %51, %struct.opcode** %7, align 8
  br label %13

52:                                               ; preds = %21
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @op_ill(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %33
  ret void
}

declare dso_local i32 @disasm_fields(%struct.opcode*, i32, i32, i8*, i32) #1

declare dso_local i32 @db_printf(i8*, i32, i8*) #1

declare dso_local i32 @op_ill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.execsw = type { i32 }

@execsw = common dso_local global %struct.execsw** null, align 8
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_register(%struct.execsw* %0) #0 {
  %2 = alloca %struct.execsw*, align 8
  %3 = alloca %struct.execsw**, align 8
  %4 = alloca %struct.execsw**, align 8
  %5 = alloca %struct.execsw**, align 8
  %6 = alloca i32, align 4
  store %struct.execsw* %0, %struct.execsw** %2, align 8
  store i32 2, i32* %6, align 4
  %7 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  %8 = icmp ne %struct.execsw** %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  store %struct.execsw** %10, %struct.execsw*** %3, align 8
  br label %11

11:                                               ; preds = %18, %9
  %12 = load %struct.execsw**, %struct.execsw*** %3, align 8
  %13 = load %struct.execsw*, %struct.execsw** %12, align 8
  %14 = icmp ne %struct.execsw* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15
  %19 = load %struct.execsw**, %struct.execsw*** %3, align 8
  %20 = getelementptr inbounds %struct.execsw*, %struct.execsw** %19, i32 1
  store %struct.execsw** %20, %struct.execsw*** %3, align 8
  br label %11

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_TEMP, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call %struct.execsw** @malloc(i32 %26, i32 %27, i32 %28)
  store %struct.execsw** %29, %struct.execsw*** %5, align 8
  %30 = load %struct.execsw**, %struct.execsw*** %5, align 8
  store %struct.execsw** %30, %struct.execsw*** %4, align 8
  %31 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  %32 = icmp ne %struct.execsw** %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %22
  %34 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  store %struct.execsw** %34, %struct.execsw*** %3, align 8
  br label %35

35:                                               ; preds = %44, %33
  %36 = load %struct.execsw**, %struct.execsw*** %3, align 8
  %37 = load %struct.execsw*, %struct.execsw** %36, align 8
  %38 = icmp ne %struct.execsw* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.execsw**, %struct.execsw*** %3, align 8
  %41 = load %struct.execsw*, %struct.execsw** %40, align 8
  %42 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %43 = getelementptr inbounds %struct.execsw*, %struct.execsw** %42, i32 1
  store %struct.execsw** %43, %struct.execsw*** %4, align 8
  store %struct.execsw* %41, %struct.execsw** %42, align 8
  br label %44

44:                                               ; preds = %39
  %45 = load %struct.execsw**, %struct.execsw*** %3, align 8
  %46 = getelementptr inbounds %struct.execsw*, %struct.execsw** %45, i32 1
  store %struct.execsw** %46, %struct.execsw*** %3, align 8
  br label %35

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.execsw*, %struct.execsw** %2, align 8
  %50 = load %struct.execsw**, %struct.execsw*** %4, align 8
  %51 = getelementptr inbounds %struct.execsw*, %struct.execsw** %50, i32 1
  store %struct.execsw** %51, %struct.execsw*** %4, align 8
  store %struct.execsw* %49, %struct.execsw** %50, align 8
  %52 = load %struct.execsw**, %struct.execsw*** %4, align 8
  store %struct.execsw* null, %struct.execsw** %52, align 8
  %53 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  %54 = icmp ne %struct.execsw** %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.execsw**, %struct.execsw*** @execsw, align 8
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = call i32 @free(%struct.execsw** %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.execsw**, %struct.execsw*** %5, align 8
  store %struct.execsw** %60, %struct.execsw*** @execsw, align 8
  ret i32 0
}

declare dso_local %struct.execsw** @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.execsw**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
